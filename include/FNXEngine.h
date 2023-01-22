#pragma once
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <deque>
#include <type_traits>
#include <set>
#include <string>
#include <map>
#include <functional>
#include <taskflow/taskflow.hpp>
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
    class IBuilt{
    
    };
    class IBuilder{
        IBuilt instance;
        public:
            virtual IBuilder build();
            virtual IBuilt getBuiltObject();
    };
    template <typename BuiltType>
    class Builder : public IBuilder{
        static_assert(std::is_base_of<IBuilt, BuiltType>::value, "Is not buildable type");
        BuiltType instance;
        public:
            using built_type = BuiltType;
            virtual Builder<BuiltType>& build() override;
            BuiltType getBuiltObject() override;
    };
    class Renderer{
        public:
        void init();
    };
    class VulkanRenderer{
        public:
        void init();
    };

    class WindowHandler{
        public:
        class IWindowObject : public IBuilt{
            public:
                virtual ~IWindowObject();

                virtual void init();
                virtual void update();
                

        };

        template <typename WindowType>
        class WindowObject : public IWindowObject{
            public:
                static const size_t id = WindowType::id;
        };
        class IWindowManager: public IBuilder{
            public:  
                virtual ~IWindowManager();
                virtual void init();
                virtual void update();
                virtual IWindowManager& setTitle(std::string);
        };
        template<typename WindowType>
        class WindowManager : public IWindowManager, protected Builder<WindowType>{
            WindowManager(){
static_assert(std::is_base_of<IWindowObject,WindowType>::value, "Type is not a window object");
            }
            
        };
        class GLFWWindowObject : public WindowObject<GLFWWindowObject>{
            std::string title;
            GLFWwindow* window;

            GLFWWindowObject(std::string title);
            public:
                static const size_t id = 1;
                static void resizecallback(GLFWwindow* window,int width, int height){
                    WindowHandler::Instance()->resizeCallback();
                };

                ~GLFWWindowObject();

                void init() override;
                
                class GLFWWindowManager : public WindowManager<GLFWWindowObject>{
                    GLFWWindowManager();
                    public:
                        ~GLFWWindowManager();
                        GLFWWindowManager& setTitle(std::string);

                        void update() override;

                        void closeCallback(GLFWwindow* window);
                };
            };
        
            private:
            bool resized = false;
            bool initialized = false;
            std::set<IWindowObject> windows;
            static std::map<size_t,IWindowManager*> managers;
            static WindowHandler* instance;
            WindowHandler();
        public:
            ~WindowHandler();
            static WindowHandler* Instance();
            void init();
            void update();
            template<typename BuilderType>
            BuilderType* getManager();
            void resizeCallback();

    };


     class Engine{
        Renderer renderer; //Temporary, TODO Add layers
        public:
        void init();
    };
};
