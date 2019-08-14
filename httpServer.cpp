//
// Created by heatdeath on 2019/8/12.
//

#include "httpServer.h"

using namespace std;

httpServer::httpServer(string& p, int port) {
    //创建线程池
    pool = new ThreadPool(4);
    this->port = port;
    this->path = p;
}

httpServer::httpServer(const char* p, int port) {
	//创建线程池
	pool = new ThreadPool(4);
	this->port = port;
	this->path = p;

}

httpServer::~httpServer() {
    delete(pool);
}

int httpServer::start() {
    //创建监听描述符
    if((listenfd = socket(AF_INET, SOCK_STREAM, 0)) < 0){
        cout<<"create socket failed"<<endl;
        exit(-1);
    }
    cout << "create socket success"<<endl;
    //内存请0
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    servaddr.sin_port = htons(port);
    //绑定
    if (bind(listenfd, (struct sockaddr*)&servaddr, sizeof(servaddr)) < 0){
        cout<<"port error"<<endl;
        exit(-1);
    }
    //转监听
    int on = 1;
    //设置这两个可以不等timewait
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, (char *)&on, sizeof(on));
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEPORT, (char *)&on, sizeof(on));

    ev.events = EPOLLIN;
    epfd = epoll_create1(EPOLL_CLOEXEC);
    epoll_ctl(epfd, EPOLL_CTL_ADD, listenfd, &ev);
    listen(listenfd, 30);
    while(true) {
        epoll_wait(epfd, &ev, 10, -1);
        pool->enqueue(metaChooser, accept(listenfd, (struct sockaddr*)&cliaddr, &clilen));	//直接传入参数
    }
    return 0;
}

void httpServer::metaChooser(int connfd) {
	char buff[MAXLINE];
	int r;
	if((r = read(connfd, buff, MAXLINE)) < 0){
		cout<<"request failed"<<endl;
	}
	string requestHead(buff);
	cout<<requestHead<<endl;
	/*if(!fList.empty()){
		fList[0]();
	}*/
}

int httpServer::add(std::regex e, void (*pf)()){
	fList.push_back(pf);
	return 0;
}

void httpServer::httpEcho(int connfd){
    char buff[MAXLINE];
    read(connfd, buff, MAXLINE);
    cout<<buff<<endl;
    close(connfd);
}
