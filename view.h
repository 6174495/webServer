//
// Created by heatdeath on 2019/8/12.
//

#ifndef PTHREAD_VIEW_H
#define PTHREAD_VIEW_H


class view {
    view();
    ~view();
    template<class F, class... Args>
    int add(const char*, F&&, Args&&...);
};


#endif //PTHREAD_VIEW_H
