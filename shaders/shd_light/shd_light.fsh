varying vec2 pos;

uniform vec2 u_light_src_pos;

const float zz = 32.;

void main() {
	vec2 dist = pos - u_light_src_pos;
	float str = 1./(sqrt(dist.x * dist.x + dist.y * dist.y + zz * zz) - zz);
    gl_FragColor = vec4(vec3(str), 1.);
}
