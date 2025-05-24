attribute vec2 in_Position;
attribute vec2 in_TextureCoord;
varying vec2 v_vTexcoord;
varying vec2 v_vPosition;

void main() {
    gl_Position = vec4(in_Position.x, in_Position.y, 0.0, 1.0);
    v_vTexcoord = in_TextureCoord;
    v_vPosition = in_Position;
}
