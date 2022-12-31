#include "include/FNXEngine.h"
#include "Config.h"
#include <iostream>
int main(){
    ENGINE_NAME::Engine engine;
    engine.init();
    ENGINE_NAME::GLFWWindowObject window;
    window.init();
    ENGINE_NAME::WindowHandler::Instance()->addWindow(&window);
    ENGINE_NAME::WindowHandler::Instance()->iterateWindows([](ENGINE_NAME::IWindowObject* window){
            std::cout << "balls" << std::endl;
            });
    std::cout << "Name " << XSTRING(ENGINE_NAME) << " "<< ENGINE_VERSION << std::endl;
 return 0;
}
