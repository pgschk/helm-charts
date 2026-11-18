# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [0.1.0] - 2026-11-18

This release changes the defaults; read before upgrading.

### Changed

- Bump foundryvtt-containerized to 0.6.0 (Alpine with its own Node.js,
  tini). Existing data and install volumes keep working.
- A startup probe allows ten minutes for the first download; before, the
  liveness probe could restart the pod in the middle of it.
- Secure defaults: non-root (uid/gid 1000, `fsGroup` 1000), read-only root
  filesystem, all capabilities dropped, `RuntimeDefault` seccomp, no service
  account token. The pod meets the "restricted" Pod Security Standard.
- The liveness probe times out after 10 seconds instead of 1.

### Added

- `probePath` (default `/`): set it to `/api/status` once your install
  works, so a broken install shows as not ready.
- `image.digest` to pin the image build.
- `serviceAccount.automount` (default `false`).
- An emptyDir on `/tmp` for the download.


## [0.0.18] - 2025-12-20

### Changed

- Bump foundryvtt-containerized version to 0.1.2


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