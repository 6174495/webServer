//
// Created by heatdeath on 2019/8/13.
//

#ifndef PTHREAD_FUNROOT_H
#define PTHREAD_FUNROOT_H


#include <regex>

class funRoot {
public:
	std::regex re;
};

template <class F>
class funNode : public funRoot{
public:
	std::regex re;
	F&& func;
	funNode(std::regex s, F&& f){
		re = s;
		func = f;
	}
};



#endif //PTHREAD_FUNROOT_H
