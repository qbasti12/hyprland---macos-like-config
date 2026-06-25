#version 300 es
precision highp float;
in vec2 v_texcoord;
layout(location = 0) out vec4 fragColor;
uniform sampler2D tex;

void main() {
    vec4 color = texture(tex, v_texcoord);
    // Sehr robuster Nvidia-kompatibler Sättigungs-Algorithmus
    float luma = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));
    // 1.80 ist extrem hoch – perfekt um zu sehen, ob sich ÜBERHAUPT was tut
    fragColor = vec4(mix(vec3(luma), color.rgb, 1.80), color.a);
}
