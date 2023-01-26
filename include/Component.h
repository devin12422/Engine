#include "Config.h"
namespace ENGINE_NAME{
  
class IComponent{
    public:
      virtual void preupdate() = 0;
      virtual void update() = 0;
  };
  class Component :public IComponent{
  
  };
}