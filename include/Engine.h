#pragma once
#include <taskflow/taskflow.hpp>
#include "Config.h"
namespace ENGINE_NAME{
  namespace Client{
    class Instance{
        tf::Executor executor;
        tf::Taskflow taskflow;
        public:
          void init();
          int loop();
  
    };
    class IWindow{
    
    };
    class Window : public IWindow{
      
    };
  };
};
