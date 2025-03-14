#version 410 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

uniform mat4 uModelView;
uniform mat4 uProjection;

out vec3 vertexColor;

void main() {
    gl_Position = uProjection * uModelView * vec4(aPos, 1.0);
    vertexColor = aColor;
}