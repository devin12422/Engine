#include "FNXEngine.h"
namespace ENGINE_NAME{
    void GLFWWindowObject::init(){
        glfwInit();
        window = glfwCreateWindow(640,480,STRING(ENGINE_NAME) + ENGINE_VERSION,NULL,NULL);
        glfwSetWindowUserPointer(window,this);
    }
    WindowHandler* WindowHandler::instance = nullptr;
    WindowHandler* WindowHandler::Instance(){
        if(instance == nullptr){
            instance = new WindowHandler();
        }
        return instance;
    };
    WindowHandler::WindowHandler(){
    }
    void WindowHandler::addWindow(IWindowObject* window){
        windows.insert(window);
    }
    void WindowHandler::resizeCallback(){
        resized = true;
    }
    void WindowHandler::iterateWindows(std::function<void(IWindowObject*)> function){
        std::for_each(windows.cbegin(),windows.cend(),function);
    }

    void Engine::init(){
        renderer.init();
    }
    void Renderer::init(){

    }
}
