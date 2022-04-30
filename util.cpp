//
// Created by usst515 on 2022/4/30.
//
#include "util.h"

namespace sylar{

pid_t GetThreadId(){
    return syscall(SYS_gettid);
}

u_int32_t GetFiberId() {
    return 0;
}
}
