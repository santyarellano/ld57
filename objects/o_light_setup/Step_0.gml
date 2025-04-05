function Quad(_vb, _x1, _y1, _x2, _y2) {
	vertex_position_3d(_vb, _x1, _y1, 0);
	vertex_position_3d(_vb, _x1, _y1, 1);
	vertex_position_3d(_vb, _x2, _y2, 0);
	
	vertex_position_3d(_vb, _x1, _y1, 1);
	vertex_position_3d(_vb, _x2, _y2, 0);
	vertex_position_3d(_vb, _x2, _y2, 1);
}

vertex_begin(vb, vf);
var _vb = vb;
with(o_entity) {
	Quad(_vb, bbox_left, bbox_top, bbox_right, bbox_bottom);
	Quad(_vb, bbox_right, bbox_top, bbox_left, bbox_bottom);
}


vertex_end(vb);