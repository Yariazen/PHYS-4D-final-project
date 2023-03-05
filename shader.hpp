#ifndef SHADER_HPP
#define SHADER_HPP

#include <string>
#include <glad/glad.h>
#include <glm/glm.hpp>
#include "stb_image.h"

class Shader
{
public:
    Shader(const char *vertexPath, const char *fragmentPath);
    void use() const;
    void setMat4(const std::string &name, const glm::mat4 &value) const;
private:
    unsigned int id_;
};

#endif
