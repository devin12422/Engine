#include "include/Engine.h"
#include "Config.h"
#include <iostream>
using namespace ENGINE_NAME;
int main(int argc, char** argv){
  Client::Instance* i = Client::Instance::get();
  i->init();
  std::cout << "t" << std::endl;
  return 0;
}
