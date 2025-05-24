varying vec2 v_vPosition;

uniform vec2 u_player_pos;
uniform float u_radius;

void main() {
    float dist = distance(v_vPosition, u_player_pos);
    float alpha = smoothstep(u_radius, u_radius * 0.2, dist);
    gl_FragColor = vec4(0.0, 0.0, 0.0, alpha);
}
