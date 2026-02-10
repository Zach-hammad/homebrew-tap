# Homebrew Tap for Repotoire

This tap contains the formula for [Repotoire](https://github.com/Zach-hammad/repotoire), a code analysis CLI with 81 detectors for security, architecture, and code quality.

## Installation

```bash
brew tap Zach-hammad/tap
brew install repotoire
```

## Usage

```bash
# Analyze a repository
repotoire analyze .

# Quick scan (relaxed mode)
repotoire analyze . --relaxed

# JSON output
repotoire analyze . --format json
```

## Alternative Installation

```bash
# npm (auto-downloads binary)
npx repotoire analyze .

# Cargo (builds from source)
cargo install repotoire
```

## Links

- [GitHub Repository](https://github.com/Zach-hammad/repotoire)
- [Releases](https://github.com/Zach-hammad/repotoire/releases)
