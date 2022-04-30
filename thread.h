//
// Created by usst515 on 2022/4/29.
//

#ifndef SLAYER_THREAD_H
#define SLAYER_THREAD_H

#include <thread>
#include <functional>
#include <memory>
#include <pthread.h>

namespace sylar{

class Thread{
public:
    //减少内存泄漏的风险
    typedef std::shared_ptr<Thread> ptr;
    Thread(std::function<void()> cb, const std::string& name);
    ~Thread();

    tid_t getId() const {return m_id;}
    const std::string& getName() const {return m_name;}
    void join();
    static Thread* GetThis();
    static const std::string& GetName();
    static void SetName(const std::string& name);
private:
    //右值的构造函数
    //全删掉 就不可以拷贝了
    Thread(const Thread&) = delete;
    Thread(const Thread&&) = delete;
    Thread& operator=(const Thread&) = delete;
    static void* run(void* arg);
private:
    tid_t m_id = -1;
    pthread_t m_thread = 0;
    std::function<void()> m_cb;
    std::string m_name;
};
}

#endif //SLAYER_THREAD_H
