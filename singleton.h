//
// Created by usst515 on 2022/4/30.
//

#ifndef SLAYER_SINGLETON_H
#define SLAYER_SINGLETON_H

#include <memory>

namespace sylar {

    namespace {

        template<class T, class X, int N>
        T& GetInstanceX() {
            static T v;
            return v;
        }

        template<class T, class X, int N>
        std::shared_ptr<T> GetInstancePtr() {
            static std::shared_ptr<T> v(new T);
            return v;
        }


    }

/**
 * @brief ����ģʽ��װ��
 * @details T ����
 *          X Ϊ�˴�����ʵ����Ӧ��Tag
 *          N ͬһ��Tag������ʵ������
 */
template<class T, class X = void, int N = 0>
class Singleton {
public:
    /**
     * @brief ���ص�����ָ��
     */
    static T* GetInstance() {
        static T v;
        return &v;
        //return &GetInstanceX<T, X, N>();
    }
};

/**
 * @brief ����ģʽ����ָ���װ��
 * @details T ����
 *          X Ϊ�˴�����ʵ����Ӧ��Tag
 *          N ͬһ��Tag������ʵ������
 */
template<class T, class X = void, int N = 0>
class SingletonPtr {
public:
    /**
     * @brief ���ص�������ָ��
     */
    static std::shared_ptr<T> GetInstance() {
        static std::shared_ptr<T> v(new T);
        return v;
        //return GetInstancePtr<T, X, N>();
    }
};

}


#endif //SLAYER_SINGLETON_H
