# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [0.0.12] - 2022-12-22

### Changed

- Bump foundryvtt-containerized version to 0.1.2


## [0.0.9] - 2023-11-04

### Added
- More chart metadata.


## [0.0.8] - 2023-11-04

This release requires manual intervention when upgrading:

PVCs are renamed, and you need to copy the content from the old PVCs to the new PVCs, for example using
[pv-migrate](https://github.com/utkuozdemir/pv-migrate/)

### Changed
- BREAKING: PersistenVolumeClaims now also use a generated name, making them unique.


## [0.0.1] - 2023-07-09

### Added

- Initial Release