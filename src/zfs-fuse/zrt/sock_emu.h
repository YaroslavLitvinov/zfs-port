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


#ifndef __SOCK_EMU_H__
#define __SOCK_EMU_H__

/*Sockets emulation is used as temporary solution, while we've not
 pruned the code that using sockets. It's expected this code works
 slowly, due to parsing messages readed from socket. It must be
 replaced by direct calls coz we running such code in single thread
 and single app.*/

/*Use memory buffer to emulate socket read/write*/
#define SOCKET_MAX_MEMORY 1024*1024*50


void write_sock_emu(const char* data, int size);
int  read_sock_emu(char* data, int size);

/*sock emu tests*/
void test_sock_emu();

#endif //__SOCK_EMU_H__
