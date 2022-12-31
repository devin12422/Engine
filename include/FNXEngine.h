#pragma once
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <deque>
#include <set>
#include <functional>
#include <algorithm>
#include "Config.h"
#define XSTRING(s) STRING(s)
#define STRING(s) #s
struct FunctionQueue{
    std::deque<std::function<void()>> functors;
    void push_function(std::function<void()>&& function){
        functors.push_back(function);
    }
    void flush(){
        for(auto it = functors.rbegin(); it != functors.rend(); it++){
            (*it)();
        }
        functors.clear();
    }

};

namespace ENGINE_NAME{
    class Renderer{
        public:
        void init();
    };
    class VulkanRenderer{
        public:
        void init();
    };
    class IWindowObject{
        void init();
    };

    class WindowHandler{
        private:
            bool resized = false;
            std::set<IWindowObject*> windows;
            static WindowHandler* instance;
            WindowHandler();
        public:
            static WindowHandler* Instance();
            void addWindow(IWindowObject* window);
            void resizeCallback();
            void iterateWindows(std::function<void(IWindowObject*)> function);
    };
  class GLFWWindowObject : public IWindowObject{
    GLFWwindow* window;
        public:
        static void resizeCallback(GLFWwindow* window,int width, int height){
            WindowHandler::Instance()->resizeCallback();

        };
        void init();
    };
    class Engine{
        Renderer renderer; //Temporary, TODO Add layers
        public:
        void init();
    };
};
