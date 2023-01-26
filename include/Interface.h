#pragma once
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include "Config.h"
#include "Component.h"
namespace ENGINE_NAME{
  namespace Client{
    namespace Window{
      class IWindow: public IComponent{
        public:
          virtual bool shouldClose() = 0;
          virtual void terminate() = 0;
      };
      class IVulkanWindow :public IWindow{
        VkSurfaceKHR* surface = nullptr;        public:
          virtual VkSurfaceKHR* createSurface();
      };
      class GLFWWindow : public IVulkanWindow{
        GLFWwindow* glfw;
        public:
          void init();
          void preupdate();
          void update();
          bool shouldClose();
          void terminate();
          VkSurfaceKHR* createSurface();
      };
    };
};
};