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
- Enhanced 404 page with additional navigation options
- CSS styling for reading time and lastmod indicators
- Automatic dark mode via `prefers-color-scheme`
- Monochrome syntax colours for class-based Chroma output
- Mermaid diagram support via fenced code blocks (script loaded only on pages that use it)
- Archive page layout (`layout: archive`) with year/month grouping

### Changed
- Reorganized CSS loading to remove redundant custom.css import from main.css
- Improved semantic HTML structure with landmark roles
- CSS bundled into a single stylesheet (`main.css` + optional `custom.css`)
- Removed unused CSS rules and merged media queries
- Removed box-shadows, transitions, and animations for a calmer look
- Favicon set reduced to the essentials; manifest moved to `assets/`
- Larger default font sizes (base 1rem, small and code 0.875rem)
- `--container-width` is now the only column width rule on all screen sizes
- Links are inline and use the text colour; images have no border or padding
- Minimum Hugo version is now v0.158.0

### Fixed
- `showlastmod` no longer breaks the build
- String `author` no longer breaks the build
- Archive page no longer includes the `/posts/` section page
- Archive headings no longer get section numbers
- Image captions use the title, not the alt text
- Duplicate landmark roles removed from `<header>`, `<main>`, `<footer>`
- Links no longer use the browser's default blue/purple colour
- README no longer documents the unused `showtoc` parameter

### Removed
- Preconnect/DNS prefetch for the Mermaid CDN (no longer needed; script loads only on pages that use diagrams)

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
