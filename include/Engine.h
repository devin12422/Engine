#pragma once
#include <taskflow/taskflow.hpp>
#include <boost/asio.hpp>
#include <boost/archive/text_iarchive.hpp>
#include <boost/archive/text_oarchive.hpp>
#include <boost/archive/text_iarchive.hpp>
#include <boost/archive/text_oarchive.hpp>
#include <fstream>
#include <optional>
#include <vector>
#include "Config.h"
#include "Interface.h"
namespace ENGINE_NAME{
   namespace Client{
    class IContext{
  
    };
    class IRenderer : public IComponent{
      IContext context;
      public:
  
    };
    class VulkanRenderer :public IRenderer{
      VkInstance vulkan;
      VkPhysicalDevice physicalDevice;
      VkDevice device;
      VkSurfaceKHR surface;
      public:
        struct QueueFamilyIndices{
    
      }
        void init();
    };
    class VulkanRenderable{};
    class IWorld{
  
    };
    class Instance{
        static Instance* instance;
        tf::Executor executor;
        tf::Taskflow taskflow;
        std::vector<Window::IWindow> windows;

        Instance(){}
        public:
          static Instance* get();
          void init();
          void loop();
          bool shouldClose();
          void addWindow(Window::IWindow window);
    };
    namespace Network{
      class Node{
  
      };
      class NetworkManager{
        private:
          std::vector<Node> nodes;
          friend class boost::serialization::access;
          template<class Archive>
          void serialize(Archive &a, const unsigned version){
    
          }
        public:
          void init();
      };
  
    };
      };
};
