/*
 *
 * Copyright (c) 2014, LiteStack, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this_ file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <pthread.h>
#include <stddef.h>
#include <assert.h>

#include <sys/cred_impl.h> //VERIFY


#include "sock_emu.h"
#include "zrt_helper_macros.h" //MAX, MIN

struct socket_emu{
    char* buffer;
    int   bufsize;
    int   datasize;
    int   cursor_read;
    int   cursor_write;
    pthread_cond_t  cond;
    pthread_mutex_t mutex;
};

static struct socket_emu s_socket_emu = {NULL,0,0,0,0,
					 PTHREAD_COND_INITIALIZER,
					 PTHREAD_MUTEX_INITIALIZER
};

void write_sock_emu(const char* data, int size){
    printf("write_sock_emu %d ", size);fflush(0);
    int data_flag = s_socket_emu.datasize;
    if ( s_socket_emu.buffer == NULL ||
	 s_socket_emu.bufsize < s_socket_emu.cursor_write+size ){
	s_socket_emu.bufsize = MAX(SOCKET_MAX_MEMORY, (s_socket_emu.cursor_write+size)*2 );
	s_socket_emu.buffer = realloc(s_socket_emu.buffer, s_socket_emu.bufsize );
	assert(s_socket_emu.buffer != NULL);
    }
    memcpy(s_socket_emu.buffer+s_socket_emu.cursor_write, data, size);
    s_socket_emu.datasize = s_socket_emu.cursor_write + size;
    s_socket_emu.cursor_write += size;
    printf("OK\n", size);fflush(0);
    /*notify another thread that data available*/
    if ( !data_flag && s_socket_emu.datasize ){
	VERIFY(pthread_mutex_lock(&s_socket_emu.mutex) == 0);
	VERIFY(pthread_cond_broadcast(&s_socket_emu.cond) == 0);
	VERIFY(pthread_mutex_unlock(&s_socket_emu.mutex) == 0);
    }
}

int read_sock_emu(char* data, int size){
    printf("read_sock_emu %d ", size);fflush(0);
    int ret;

    while ( (ret=MIN(size, s_socket_emu.datasize )) == 0 ) {
	VERIFY(pthread_mutex_lock(&s_socket_emu.mutex) == 0);
	VERIFY(pthread_cond_wait(&s_socket_emu.cond, &s_socket_emu.mutex) == 0);
	VERIFY(pthread_mutex_unlock(&s_socket_emu.mutex)== 0);
    }
    memcpy(data, s_socket_emu.buffer+s_socket_emu.cursor_read, ret);
    s_socket_emu.datasize -= ret;
    s_socket_emu.cursor_read += ret;
    if ( s_socket_emu.datasize == 0 ){
	assert(s_socket_emu.cursor_read==s_socket_emu.cursor_write);
	s_socket_emu.cursor_read=s_socket_emu.cursor_write=0;
    }
    printf("/%d OK\n", ret);fflush(0);
    return ret;
}


void test_sock_emu(){
    char test[100];
    const char* data;
    int ret;
    {
    /*test1*/
    data = "1single write single read1";
    write_sock_emu(data, strlen(data));
    ret = read_sock_emu(test, strlen(data));
    assert(ret==strlen(data));
    assert(!strncmp(data,test, ret));
    }
    {
    /*test2*/
    data = "single write two sequential reads2";
    write_sock_emu(data, strlen(data));
    int part1 = strlen(data) - strlen(data)/2;
    int part2 = strlen(data) - part1;
    int ret1, ret2;
    ret1 = read_sock_emu(test, part1);
    ret2 = read_sock_emu(test+part1, part2);
    ret = ret1+ret2;
    assert(ret==strlen(data));
    assert(!strncmp(data,test,ret));
    }
    {
    /*test3*/
    data = "3two writes single read3";
    int part1 = strlen(data) - strlen(data)/2;
    int part2 = strlen(data) - part1;
    write_sock_emu(data, part1);
    write_sock_emu(data+part1, part2);
    ret = read_sock_emu(test, strlen(data));
    assert(ret==strlen(data));
    assert(!strncmp(data,test,ret));
    }
    {
    /*test4*/
    data = "4single write single sufficient read";
    write_sock_emu(data, strlen(data));
    ret = read_sock_emu(test, strlen(data)*2);
    assert(ret==strlen(data));
    assert(!strncmp(data,test,ret));
    }
}

