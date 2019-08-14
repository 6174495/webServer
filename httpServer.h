//
// Created by heatdeath on 2019/8/12.
//

#ifndef PTHREAD_HTTPSERVER_H
#define PTHREAD_HTTPSERVER_H

#include <iostream>
#include <pthread.h>
#include <unistd.h>
#include "threadPool.h"
#include <sys/epoll.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <cstring>
#include <arpa/inet.h>
#include <fcntl.h>
#include <regex>
#include <vector>

#define MAXLINE 4096

class httpServer {
public:
    httpServer(std::string&, int);
	httpServer(const char*, int);
    ~httpServer();
    int start();
	int add(std::regex,void (*)());
	static std::vector<void(*)()> fList;

private:
    static void httpEcho(int);	//测试
    static void metaChooser(int);
	std::string path;
    int listenfd, connfd, sockfd, epfd;
    socklen_t clilen;
    struct sockaddr_in cliaddr, servaddr;
    struct epoll_event ev;
    ThreadPool *pool;
    int port;

};


#endif //PTHREAD_HTTPSERVER_H
