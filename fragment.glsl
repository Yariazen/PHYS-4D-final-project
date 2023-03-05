#version 330 core

in vec2 texCoord;

out vec4 fragColor;

uniform sampler2D textureSampler;
uniform float time;

void main()
{
    vec2 distortedCoord = vec2(
        texCoord.x + 0.05 * sin(time * 10.0 + texCoord.y * 30.0),
        texCoord.y + 0.05 * sin(time * 10.0 + texCoord.x * 30.0)
    );

    fragColor = texture(textureSampler, distortedCoord);
}
