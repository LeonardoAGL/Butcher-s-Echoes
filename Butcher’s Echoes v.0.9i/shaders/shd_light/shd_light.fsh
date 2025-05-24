varying vec2 pos;
uniform vec2 u_pos;

const float zz = 55.0;

void main(){
    vec2 dis = pos - u_pos;
    float dist = sqrt(dis.x * dis.x + dis.y * dis.y);
    float alpha = smoothstep(-1.5, 3.0, dist / zz);
    alpha = clamp(alpha, 0.0, 1.0);
    gl_FragColor = vec4(0.0, 0.0, 0.0, alpha); // sombra con alpha
}
