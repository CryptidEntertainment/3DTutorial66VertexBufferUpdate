function scr_draw_all_the_stuff() {
    gpu_set_tex_repeat(true);
    
    // Everything must be drawn after the 3D projection has been set
    gpu_set_tex_repeat(false);
    
    matrix_set(matrix_world, matrix_build(250, 250, 40, 0, 0, 0, 1, 1, 1));
    vertex_submit(vb_merry, pr_trianglelist, -1);
    matrix_set(matrix_world, matrix_build_identity());
    
    shader_reset();
}