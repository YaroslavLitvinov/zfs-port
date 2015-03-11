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
#include <string.h>
#include <stddef.h>

#include "sock_emu.h"

static int s_cursor_read=0;
static int s_cursor_write=0;


void write_sock_emu(int fd, const char* data, int size){
    printf("write_sock_emu %d ", size);fflush(0);
    lseek(fd, s_cursor_write, SEEK_SET);
    int bytes = write(fd, data, size);
    s_cursor_write += bytes;
}

int read_sock_emu(int fd, char* data, int size){
    printf("read_sock_emu %d ", size);fflush(0);
    lseek(fd, s_cursor_read, SEEK_SET);
    int bytes = read(fd, data, size);
    s_cursor_read += bytes;
    return bytes;
}


