# Changelog

All notable changes to the Shibui theme will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Reading time estimation feature with `showreadingtime` parameter
- Last modified date display option with `showlastmod` parameter
- Theme configuration parameters documentation
- ARIA labels to navigation elements for improved accessibility
- Preconnect/DNS prefetch for external resources (mermaid CDN)
- Enhanced 404 page with additional navigation options
- CSS styling for reading time and lastmod indicators

### Changed
- Reorganized CSS loading to remove redundant custom.css import from main.css
- Improved semantic HTML structure with landmark roles

### Fixed
- None yet

## [0.1.0] - 2025-11-20

### Added
- Initial release of Shibui theme
- Minimalist design following Shibui (渋い) aesthetics
- Terminal-inspired navigation
- Clean typography with monospace font
- Automatic dark/light theme support via CSS variables
- Nested heading counters
- Zero JavaScript (pure CSS solutions)
- Table of contents support
- Tags and taxonomy support
- Responsive layout
- Print styles
