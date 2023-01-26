#include "Engine.h"
using namespace ENGINE_NAME;
Client::Instance* Client::Instance::instance = nullptr;
  void Client::Instance::init(){
    tf::Task init = taskflow.emplace([](){
    std::srand(static_cast<unsigned int>(std::time(nullptr)));
  }).name("init");
    tf::Task loop = taskflow.emplace([](){

      std::cout<< std::rand() << std::endl;
        return std::rand() % 2;
    }).name("loop");
    tf::Task stop = taskflow.emplace([](){}).name("stop");
    init.precede(loop);
    loop.precede(loop,stop);
    executor.run(taskflow).wait(); 
  }
  void Client::Instance::loop(){
    std::cout<< "balls" << std::endl;
}
Client::Instance* Client::Instance::get(){
  if(instance == nullptr){
    instance = new Instance();
  }
  return instance;
}
void Client::Network::NetworkManager::init(){
  
}
 