# Changelog

Changelog for libVoiceSeekerLight.

## [0.6.0] - 2022-09-07

### Changed
- Device selection enum. Platform used now needs to be set by using "RDSP_DeviceId_en" 

## [0.5.2] - 2022-08-17

### Added
- Added support for i.MX8ULP Cortex M33.

### Changed
- Freeze beamformer for 8 seconds after a trigger.

## [0.5.1] - 2022-08-05

### Changed
- Use common [`rdsp_utilities_public`].

## [0.5.0] - 2022-08-03

### Added
- Added Directional of Arrival (DOA) support. Use `VoiceSeekerLight_GetDoaOutput()` to get the angle of speech in degrees. 

## [0.4.1] - 2022-07-26

### Added
- Optimize AEC for `__ARM_NEON`.

## [0.4.0] - 2022-07-14

### Added
- Add `VoiceSeekerLight_GetLibVersion()`.

### Changed
- Beamforming improvements.

## [0.3.5] - 2022-07-01

### Changed
- Work on beamformer improvements.

## [0.3.4] - 2022-06-22

### Fixed
- Fix issue with beamformer initialization.

## [0.3.3] - 2022-06-09

### Changed
- Revert mic gain to 0 dB.

### Fixed
- Fix issue with output buffer.

## [0.3.2] - 2022-05-10

### Changed
- Increase mic gain.

### Fixed
- Fix cycle count wrap around for `__aarch64__`.
- Fix `rdsp_plugin_scratch_GetAllocatedBytes()`.

## [0.3.1] - 2022-04-01

### Added
- Add dynamic compressor after beamformer for gain control.
- Add support for Fusion F1, HiFi3, HiFi4 targets.
- Add license check for RT106A and RT106P.

### Changed
- Enable `-Osize` optimization for i.MX 8M Cortex M builds.
- Reduce beamformer memory usage.

### Fixed
- Fix filterbank config.

## [0.3.0] - 2022-03-05

### Changed
- Use `rdsp_float` and `rdsp_floatx2` typedef.

## [0.2.10] - 2022-04-04

### Changed
- Update public API for using VAD, AGC and windback buffer.
- Size optimizations.

## [0.2.9] - 2022-02-24

### Added
- Add license check for i.MX 8M targets.
- Add check if AEC is available in library during create.

### Changed
- Update parameters.
- Build with `-fno-exceptions` on Arm Cortex M.
- Disable `printf` and file I/O.

## [0.2.8] - 2021-12-09

### Added
- Specify microphone geometry in create configuration.
- Specify AEC filter length in create configuration.

### Changed
- Disable memory optimizations in beamformer due to quantization issue with certain inputs.
- Beamforming improvements.

## [0.2.7] - 2021-12-01

### Fixed
- Fix beamformer initialization.

## [0.2.6] - 2021-11-24

### Added
- Reduce beamformer memory usage.
- Add license check for RT1170.

### Fixed
- Fix bug in cycle counting.

## [0.2.5] - 2021-11-15

### Added
- Add calculation of AEC attenuation.
- Add VAD and AGC parameters.
- Add `enable_cycle_counter` parameter; disabled by default.

### Changed
- Use `typedef enum RdspStatus` to support more compilers.

## [0.2.4] - 2021-10-27

### Added
- Add check of create call return statuses.

### Fixed
- Fix mic delay when AEC is enabled.
- Ensure output buffer is large enough if framesize_out is increased.
- Fix counting of total memory usage.

## [0.2.3] - 2021-10-25

### Added
- Bypass AEC processing if `ref_in` is set to `NULL` pointer.
- Freeze AEC adaptation if reference signal is below certain threshold.
- Add optional decimation of AEC processing to reduce CPU load.

### Changed
- Change `init_ccount()` and `read_ccount()` to `extern` functions. Can now be disabled from outside of library.

## [0.2.2] - 2021-10-18

### Added
- Enable `-Ofast` optimization for `__arch64__` targets.
- Add trial timeout for `__arch64__` targets.

## [0.2.1] - 2021-10-15

### Added
- Add multi-channel sample rate convertors.
- Add cycle counting for `__arch64__` targets.

## [0.2.0] - 2021-10-12

### Added
- Add `__aarch64__` support for Arm Cortex-A.
- Add `buffer_length_sec` to `rdsp_voiceseekerlight_config_t`.

### Changed
- Change filterbank configuration for better AEC performance; uses input framesize of 32 samples.
- Increase number of AEC filter taps.
- Move VAD, AGC and windback buffer to public API.

### Fixed
- Ensure calling `VoiceSeekerLight_TriggerFound()` is thread safe.

## [0.1.5] - 2021-09-24

### Added
- Add Voice Activity Detector (VAD).
- Add cycle counting for profiling.
- Add trial timeout of 1 hour.
- Add license check for RT1060.
- Add check if `rdsp_plugin_malloc` fails. Returns `MALLOC_FAIL`.

### Fixed
- Fix postbuild script.

## [0.1.4] - 2021-09-15

### Added
- Add new filterbank configuration.
- Use `-Ofast` optimization

### Changed
- Work on Acoustic Echo Canceller (AEC) support.

## [0.1.3] - 2021-09-7

### Added
- Add CMSIS support for Arm Cortex-M

## [0.1.2] - 2021-07-16

### Added
- Add `VoiceSeekerLight_SetParameterID()` and `VoiceSeekerLight_SetParameterBin()` to public API.
  
### Changed
- Use `rdsp_voiceseekerlight_config_t` when calling `VoiceSeekerLight_Create()`.
- Beamforming improvements.

## [0.1.1] - 2021-06-03

### Changed
- Beamforming improvements for detecting initial triggers.

## [0.1.0] - 2021-06-01

### Added
- Add option to use a predetermined look vector.

### Fixed
- Fix issue with wrap around in circular lookback buffer.
