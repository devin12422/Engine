#include "include/Engine.h"
#include "Config.h"
#include <iostream>
using namespace ENGINE_NAME;
int main(){
  Client::Instance i;
  i.init();
  return 0;
}
