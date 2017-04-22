#version 330

layout (location = 0) in vec3 inVertexPosition;
layout (location = 1) in vec2 inTextureCoords;
layout (location = 2) in float inLightValue;

out vec2 passTextureCoords;
out float passLightValue;

uniform mat4 projViewMatrix;

void main()
{
    gl_Position = projViewMatrix * vec4(inVertexPosition, 1.0);

    passTextureCoords = inTextureCoords;
    passLightValue = inLightValue;
}
