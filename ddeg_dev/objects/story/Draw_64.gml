if shd{
    BktGlitch_activate(room_width,room_height);
    BktGlitch_config_preset((1 << 0))
    BktGlitch_set_channel_shift(random_range((channel_shift + (channel_shift / 1)), (channel_shift - (channel_shift / 1))))
    BktGlitch_set_channel_dispersion(random_range((channel_dispersion + (channel_dispersion / 1)), (channel_dispersion - (channel_dispersion / 1))))
    BktGlitch_set_line_shift(0.01)
    BktGlitch_set_line_speed(0.2)
    BktGlitch_set_line_resolution(8)
    BktGlitch_set_shakiness(4)
    BktGlitch_set_jumbleness(0.3)
    BktGlitch_set_jumble_speed(12)
    BktGlitch_set_jumble_resolution(0.4)
    BktGlitch_set_jumble_shift(0.3)
    BktGlitch_set_intensity(0.5)
    BktGlitch_set_shakiness(0.1)
	BktGlitch_set_noise_level(0)
    draw_surface_stretched(application_surface, 0, 0, 640, 480)
    shader_reset()
}
