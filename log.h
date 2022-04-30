//
// Created by usst515 on 2022/4/21.
//

#ifndef UNTITLED_LOG_H
#define UNTITLED_LOG_H

#include <string>
#include <stdint.h>
#include <memory>
#include <list>
#include <sstream>
#include <fstream>
#include <vector>
#include <map>
#include "singleton.h"

/**
 * @brief ʹ����ʽ��ʽ����־����level����־д�뵽logger
 */
#define SYLAR_LOG_LEVEL(logger, level) \
    if(logger->getLevel() <= level)    \
        sylar::LogEventWrap(sylar::LogEvent::ptr(new sylar::LogEvent(logger, level, \
            __FILE__, __LINE__, 0, sylar::GetThreadId(), sylar::GetFiberId(), time(0)))).getSS()

/**
 * @brief ʹ����ʽ��ʽ����־����debug����־д�뵽logger
 */
#define SYLAR_LOG_DEBUG(logger) SYLAR_LOG_LEVEL(logger, sylar::LogLevel::DEBUG)

/**
 * @brief ʹ����ʽ��ʽ����־����info����־д�뵽logger
 */
#define SYLAR_LOG_INFO(logger) SYLAR_LOG_LEVEL(logger, sylar::LogLevel::INFO)

/**
 * @brief ʹ����ʽ��ʽ����־����warn����־д�뵽logger
 */
#define SYLAR_LOG_WARN(logger) SYLAR_LOG_LEVEL(logger, sylar::LogLevel::WARN)

/**
 * @brief ʹ����ʽ��ʽ����־����error����־д�뵽logger
 */
#define SYLAR_LOG_ERROR(logger) SYLAR_LOG_LEVEL(logger, sylar::LogLevel::ERROR)

/**
 * @brief ʹ����ʽ��ʽ����־����fatal����־д�뵽logger
 */
#define SYLAR_LOG_FATAL(logger) SYLAR_LOG_LEVEL(logger, sylar::LogLevel::FATAL)


/**
 * @brief ʹ�ø�ʽ����ʽ����־����level����־д�뵽logger
 */
#define SYLAR_LOG_FMT_LEVEL(logger, level, fmt, ...) \
    if(logger->getLevel() <= level) \
        sylar::LogEventWrap(sylar::LogEvent::ptr(new sylar::LogEvent(logger, level, \
                        __FILE__, __LINE__, 0, sylar::GetThreadId(),\
                sylar::GetFiberId(), time(0)))).getEvent()->format(fmt, __VA_ARGS__)

/**
 * @brief ʹ�ø�ʽ����ʽ����־����debug����־д�뵽logger
 */
#define SYLAR_LOG_FMT_DEBUG(logger, fmt, ...) SYLAR_LOG_FMT_LEVEL(logger, sylar::LogLevel::DEBUG, fmt, __VA_ARGS__)

/**
 * @brief ʹ�ø�ʽ����ʽ����־����info����־д�뵽logger
 */
#define SYLAR_LOG_FMT_INFO(logger, fmt, ...)  SYLAR_LOG_FMT_LEVEL(logger, sylar::LogLevel::INFO, fmt, __VA_ARGS__)

/**
 * @brief ʹ�ø�ʽ����ʽ����־����warn����־д�뵽logger
 */
#define SYLAR_LOG_FMT_WARN(logger, fmt, ...)  SYLAR_LOG_FMT_LEVEL(logger, sylar::LogLevel::WARN, fmt, __VA_ARGS__)

/**
 * @brief ʹ�ø�ʽ����ʽ����־����error����־д�뵽logger
 */
#define SYLAR_LOG_FMT_ERROR(logger, fmt, ...) SYLAR_LOG_FMT_LEVEL(logger, sylar::LogLevel::ERROR, fmt, __VA_ARGS__)

/**
 * @brief ʹ�ø�ʽ����ʽ����־����fatal����־д�뵽logger
 */
#define SYLAR_LOG_FMT_FATAL(logger, fmt, ...) SYLAR_LOG_FMT_LEVEL(logger, sylar::LogLevel::FATAL, fmt, __VA_ARGS__)

/**
 * @brief ��ȡ����־��
 */
#define SYLAR_LOG_ROOT() sylar::LoggerMgr::GetInstance()->getRoot()

/**
 * @brief ��ȡname����־��
 */
#define SYLAR_LOG_NAME(name) sylar::LoggerMgr::GetInstance()->getLogger(name)


namespace sylar{

class Logger;

// ��־����
class LogLevel{
public:
    enum Level{
        UNKNOW=0,
        DEBUG=1,
        INFO=2,
        WARN=3,
        ERROR=4,
        FATAL=5
    };
    static const char* ToString(LogLevel::Level level);
};

//��־�¼�
class LogEvent{
public:
    typedef std::shared_ptr<LogEvent> ptr;
    LogEvent(std::shared_ptr<Logger> logger, LogLevel::Level level, const char * file, int32_t line, uint32_t elapse, uint32_t pthreadId, uint32_t fiberId,
             uint64_t time);

    const char* getFile() const {return m_file;}
    int32_t getLine() const {return m_line;}
    uint32_t getElapse() const {return m_elapse;}
    uint32_t getThreadId() const {return m_phreadId;}
    uint32_t getFiberId() const {return m_fiberId;}
    uint64_t getTime() const {return m_time;}
    std::stringstream& getSS() { return m_ss;}
    std::string getContent() const {return m_ss.str();}
    std::shared_ptr<Logger> getLogger() const {return m_logger;}
    LogLevel::Level getLevel() const {return m_level;}
    const std::string& getThreadName() const { return m_threadName;}
    /**
     * @brief ��ʽ��д����־����
     */
    void format(const char* fmt, ...);

    /**
     * @brief ��ʽ��д����־����
     */
    void format(const char* fmt, va_list al);

private:
    const char* m_file= nullptr;     //�ļ���
    int32_t m_line=0;         //�к�
    uint32_t m_elapse=0;      //�������������ڵĺ�����
    uint32_t m_phreadId=0;    //�߳�id
    uint32_t m_fiberId=0;     //Э��id
    uint64_t m_time=0;        //ʱ���
    std::stringstream m_ss;
    std::string m_threadName;
    std::shared_ptr<Logger> m_logger;
    LogLevel::Level m_level;
};

/**
 * @brief ��־�¼���װ��
 */
class LogEventWrap {
public:

    /**
     * @brief ���캯��
     * @param[in] e ��־�¼�
     */
    LogEventWrap(LogEvent::ptr e);

    /**
     * @brief ��������
     */
    ~LogEventWrap();

    /**
     * @brief ��ȡ��־�¼�
     */
    LogEvent::ptr getEvent() const { return m_event;}

    /**
     * @brief ��ȡ��־������
     */
    std::stringstream& getSS();
private:
    /**
     * @brief ��־�¼�
     */
    LogEvent::ptr m_event;
};

//��־��ʽ��
class LogFormater{
public:
    typedef std::shared_ptr<LogFormater> ptr;
    LogFormater(const std::string pattern);
    //%t    %thread_id %m%n
    std::string format(std::shared_ptr<Logger> logger, LogLevel::Level level, LogEvent::ptr event);

public:
    //��ģ��
    class FormatItem{
    public:
        typedef std::shared_ptr<LogFormater::FormatItem> ptr;
        FormatItem(const std::string& fmt = "") {};
        virtual ~FormatItem() {}
        virtual void format(std::ostream &os, std::shared_ptr<Logger> logger, LogLevel::Level level,LogEvent::ptr event) = 0;
    };
    void init();
    bool isError() const {return m_error;}
private:
    std::vector<FormatItem::ptr> m_items;   // ������
    std::string m_pattern;
    bool m_error;
};

//��־����� ������
class LogAppender{
public:
    typedef std::shared_ptr<LogAppender> ptr;
    virtual ~LogAppender(){}
    virtual void log(std::shared_ptr<Logger> logger, LogLevel::Level level, LogEvent::ptr event) = 0; //���麯�� �������ʵ����

    void setFormatter(LogFormater::ptr val) {m_formatter = val;}
    LogFormater::ptr getFormatter() const {return m_formatter;}

    /**
     * @brief ��ȡ��־����
     */
    LogLevel::Level getLevel() const { return m_level;}

    /**
     * @brief ������־����
     */
    void setLevel(LogLevel::Level val) { m_level = val;}
//protected ���������ʹ�õ�������
protected:
    LogLevel::Level m_level;
    LogFormater::ptr m_formatter;
};

//��־��
class Logger : public std::enable_shared_from_this<Logger>{
public:
    typedef std::shared_ptr<Logger> ptr;
    Logger(const std::string& name = "root");
    void log(LogLevel::Level level, LogEvent::ptr event);

    void debug(LogEvent::ptr event);
    void info(LogEvent::ptr event);
    void error(LogEvent::ptr event);
    void warn(LogEvent::ptr event);
    void fatal(LogEvent::ptr event);

    void addAppender(LogAppender::ptr appender);
    void delAppender(LogAppender::ptr appender);
    LogLevel::Level getLevel() const {return m_level;}
    void setLevel(LogLevel::Level lev) {m_level = lev;}
    const std::string getName() const {return m_name;}
private:
    std::string m_name;                          //��־����
    LogLevel::Level m_level;                     //��־����
    std::list<LogAppender::ptr> m_appenders;    //Appernder����
    LogFormater::ptr m_formater;
};

//���������̨��Appender
class StdoutLogAppender : public LogAppender{
public:
    typedef std::shared_ptr<StdoutLogAppender> ptr;
    virtual void log(std::shared_ptr<Logger> logger, LogLevel::Level level, LogEvent::ptr event) override;
};

//������ļ���Appender
class FileLogAppender : public LogAppender{
public:
    typedef std::shared_ptr<FileLogAppender> ptr;
    FileLogAppender(const std::string& filename);
    virtual void log(std::shared_ptr<Logger> logger, LogLevel::Level level, LogEvent::ptr event) override;
    bool reopen();  //�ļ��򿪳ɹ�����true

private:
    std::string m_filename;
    std::ofstream m_filestream;
};

class LoggerManger{
public:
    LoggerManger();
    Logger::ptr getLogger(const std::string& name);

    void init();
private:
    std::map<std::string, Logger::ptr> m_logger;
    Logger::ptr  m_root;
};

typedef sylar::Singleton<LoggerManger> LoggerMgr;
}

#endif //UNTITLED_LOG_H
