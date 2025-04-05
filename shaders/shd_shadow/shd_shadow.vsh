
attribute vec3 in_Position;                  // (x,y,z)

uniform vec2 u_light_src_pos;

void main()
{
	vec2 pos = in_Position.xy;
	
	if (in_Position.z > 0.) {
		vec2 dist = pos - u_light_src_pos;
		pos += dist/sqrt(dist.x * dist.x + dist.y + dist.y) * 100000.;
	}
	
    vec4 object_space_pos = vec4( pos.x, pos.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
