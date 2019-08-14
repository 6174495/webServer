#include "httpServer.h"

using namespace std;

#define MAXLINE 4096

void func(){
	cout<<"func"<<endl;
}

int main()
{
    httpServer s("", 8080);
    s.add(regex("ss"), func);
    s.start();
    return 0;

}
