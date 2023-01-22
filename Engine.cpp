#include "include/Engine.h"
using namespace ENGINE_NAME;
namespace Client{
  void Instance::init(){
    tf::Task init = taskflow.emplace([](){}).name("init");
    tf::Task loop = taskflow.emplace(loop).name("loop");
    tf::Task stop = taskflow.emplace([](){}).name("stop");
    init.precede(loop);
    loop.precede(loop,stop);
  };
  int Instance::loop(){
  std::cout<< "balls" << std::endl;
  return std::rand() % 2;
  };
};