#include "include/Interface.h"
void Client::Window::GLFWWindow::init(){
  glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);  
  glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);
  glfwInit();
  glfw = glfwCreateWindow(640,480,ENGINE_NAME,NULL,NULL); 
}
void Client::Window::GLFWWindow::update(){
  glfwSwapBuffers(glfw);
  glfwPollEvents();
}
void Client::Window::GLFWWindow::preupdate(){
  glClear(GL_COLOR_BUFFER_BIT);
}
bool Client::Window::GLFWWindow::shouldClose(){
  return glfwWindowShouldClose(glfw);
}
void Client::Window::GLFWWindow::terminate(){
  glfwDestroyWindow(glfw);
}
VkSurfaceKHR* Client::Window::GLFWWindow::createSurface(){
  if(surface == nullptr){  
    glfwCreateWindowSurface(instance,window,NULL,surface);
  }
  return surface;
}
