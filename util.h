//
// Created by usst515 on 2022/4/30.
//

#ifndef SLAYER_UTIL_H
#define SLAYER_UTIL_H
#include <pthread.h>
#include <sys/types.h>
#include <sys/syscall.h>
#include <stdio.h>
#include <stdint.h>
#include <unistd.h>

namespace sylar{

pid_t GetThreadId();
uint32_t GetFiberId();

}

#endif //SLAYER_UTIL_H
