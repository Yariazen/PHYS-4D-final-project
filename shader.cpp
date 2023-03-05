#include <iostream>
#include <fstream>
#include <sstream>
#include "shader.hpp"

Shader::Shader(const char *vertexPath, const char *fragmentPath)
{
    // Read the vertex shader code from file
    std::ifstream vertexFile(vertexPath);
    if (!vertexFile.is_open())
    {
        std::cerr << "Failed to open " << vertexPath << '\n';
        return;
    }
    std::stringstream vertexStream;
    vertexStream << vertexFile.rdbuf();
    vertexFile.close();
    std::string vertexCode = vertexStream.str();

    // Read the fragment shader code from file
    std::ifstream fragmentFile(fragmentPath);
    if (!fragmentFile.is_open())
    {
        std::cerr << "Failed to open " << fragmentPath << '\n';
        return;
    }
    std::stringstream fragmentStream;
    fragmentStream << fragmentFile.rdbuf();
    fragmentFile.close();
    std::string fragmentCode = fragmentStream.str();

    // Compile the vertex shader
    const char *vertexSource = vertexCode.c_str();
    unsigned int vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexSource, nullptr);
    glCompileShader(vertexShader);
    int success;
    char infoLog[512];
    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
    if (!success)
    {
        glGetShaderInfoLog(vertexShader, sizeof(infoLog), nullptr, infoLog);
        std::cerr << "Failed to compile vertex shader: " << infoLog << '\n';
        return;
    }

    // Compile the fragment shader
    const char *fragmentSource = fragmentCode.c_str();
    unsigned int fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentSource, nullptr);
    glCompileShader(fragmentShader);
    glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
    if (!success)
    {
        glGetShaderInfoLog(fragmentShader, sizeof(infoLog), nullptr, infoLog);
        std::cerr << "Failed to compile fragment shader: " << infoLog << '\n';
        return;
    }

    // Link the shaders
    id_ = glCreateProgram();
    glAttachShader(id_, vertexShader);
    glAttachShader(id_, fragmentShader);
    glLinkProgram(id_);
    glGetProgramiv(id_, GL_LINK_STATUS, &success);
    if (!success)
    {
        glGetProgramInfoLog(id_, sizeof(infoLog), nullptr, infoLog);
        std::cerr << "Failed to link shader program: " << infoLog << '\n';
        return;
    }

    // Delete the shaders
    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
}

void Shader::use() const
{
    glUseProgram(id_);
}

void Shader::setMat4(const std::string &name, const glm::mat4 &value) const
{
    glUniformMatrix4fv(glGetUniformLocation(id_, name.c_str()), 1, GL_FALSE, &value[0][0]);
}
