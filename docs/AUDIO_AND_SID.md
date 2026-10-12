# Audio and SID architecture

## Music
The main SID music binary is fixed at `$8C00` (`music.bin`).

## Second SID
SYSINFO64 probes common second-SID locations and records a hardware profile. Source comments mention `$DE00`, `$D420` and `$D500`; the release README also mentions SIDKick-pico identification.

For music, the original mono tune is preserved and live register commands can be duplicated to a confirmed second SID. This is synchronized **dual mono**, not a newly arranged stereo mix.

## Synthesized ocean
The ocean is generated in real time by the SID rather than by a sample.

Key modules:
- `intro_ocean_audio.asm/.bin`
- `shared_ocean_bridge.asm/.bin`
- `sea_waves.bin`
- `outro_sea_pan.bin`
- `outro_gain_only.asm/.bin`
- `outro_early_audio_init.asm/.bin`

The sound design shapes noise, filter movement, envelopes, fades and phases into water bed, swell, crest, foam/retreat and overlap into the next wave.

With a confirmed second SID, ocean events can be offset between outputs for left/right motion.

## Reusable lessons
- keep music playback and procedural soundscape separate;
- use stable INIT/TICK/OFF entry points;
- preserve registers and `$01` around helpers under ROM;
- keep the single-SID path fully functional.
