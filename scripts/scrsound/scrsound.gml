
function scrSound(_sound, _pitch) {
	var _sound_id = audio_play_sound(_sound, 10, false);
	audio_sound_pitch(_sound_id, _pitch);
	audio_sound_gain(_sound_id, global.volume / 100, 0);
}