if (keyboard_check_pressed(vk_space)) {
	var t_start = get_timer();
	
	var new_color = 0xff000000 | make_colour_hsv(random(255), 255, 255);
	for (var i = 0, n = 720; i < n; i += 36) {
		buffer_poke(data_merry, i + 32, buffer_u32, new_color);
	}
	/*
	vertex_delete_buffer(vb_merry);
	vb_merry = vertex_create_buffer_from_buffer(data_merry, vertex_format);
	*/
	vertex_update_buffer_from_buffer(vb_merry, 0, data_merry, 0, 720);
	
	show_debug_message($"Vertex buffer modification took {(get_timer() - t_start) / 1000} ms");
}