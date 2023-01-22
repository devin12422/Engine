#include "FNXEngine.h"
#include <string>
namespace ENGINE_NAME{
    template<typename BuiltType>
    virtual Builder<BuiltType>& Builder<BuiltType>::build() override{
        instance = BuiltType();
        return *this;
    }
    template<typename BuiltType>
    BuiltType Builder<BuiltType>::getBuiltObject() override{
        return instance;
    }

    template<typename WindowType>
    WindowHandler<WindowType>::WindowManager(){
        static_assert(std::is_base_of<IWindowObject,WindowType>::value, "Type is not a window object");    
    }


    WindowHandler::GLFWWindowObject::GLFWWindowObject(std::string title = std::string(XSTRING(ENGINE_NAME))){
        this->title = title;
    }
    WindowHandler::GLFWWindowObject::~GLFWWindowObject(){
        glfwDestroyWindow(window);
    }
    void WindowHandler::GLFWWindowObject::init() override{
        window = glfwCreateWindow(640,480,title.c_str(),NULL,NULL);
        glfwSetWindowCloseCallback(window,closeCallback);
        glfwSetWindowUserPointer(window,this);
    }
    void WindowHandler::GLFWWindowObject::update(){
        glfwSwapBuffers(window);
    }

    WindowHandler::GLFWWindowObject::GLFWWindowManager::GLFWWindowManager(){
        glfwInit();
        glfwWindowHint(GLFW_RESIZABLE GLFW_TRUE);
    }
    WindowHandler::GLFWWindowObject::GLFWWindowManager::~GLFWWindowManager(){
        glfwTerminate();
    }

    GLFWWindowManager& WindowHandler::GLFWWindowObject::GLFWWindowManager::setTitle(std::string title){
        instance.title = title;
        return this*;
    }

    void WindowHandler::GLFWWindowObject::GLFWWindowManager::update() override{
        glfwPollEvents();
    }

    void WindowHandler::GLFWWindowObject::GLFWWindowManager::closeCallback(GLFWwindow* window){
       windows.erase(reinterpret_cast<GLFWWindowObject*>(glfwGetWindowUserPointer(window)));
    }


    WindowHandler* WindowHandler::instance = nullptr;
    WindowHandler* WindowHandler::Instance(){
        if(instance == nullptr){
            instance = new WindowHandler();
        }
        return instance;
    }
    WindowHandler::WindowHandler(){}
    void WindowHandler::init(){
        for(auto it = windows.begin(); it != windows.end()){
            it->init();
            it++;
        }
        initialized = true;
    }
    template <typename ManagerType>
    ManagerType* WindowHandler::getManager(){
        static_assert(std::is_base_of<WindowManager, ManagerType>::value,"Is not WindowBuilder type");
        if(!managers.contains(ManagerType::built_type::id))
            managers.insert(ManagerType::built_type::id,ManagerType());
        return managers.[ManagerType::built_type::id];
    }

    void WindowHandler::resizeCallback(){
        resized = true;
    }
    WindowHandler::~WindowHandler(){
        windows.clear();
    }
    void WindowHandler::update(){
        for(auto it = windows.begin(); it != windows.end()){
            it->update();
            it++;
        }
    }

    void Engine::init(){
        renderer.init();
        tf::Executor executor;
        tf::Taskflow taskflow;
    }
    void Renderer::init(){

    }
}
