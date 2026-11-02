# C++ Hackpack

## Prerequisites

- C++ compiler (`g++` or `clang++` supporting C++20 or later)
- `make`
- `clang-format`
- `clang-tidy`

### Quick Install

- **Ubuntu / Debian**:
  ```bash
  sudo apt update && sudo apt install -y build-essential clang-format clang-tidy
  ```
- **macOS** (via Homebrew):
  ```bash
  brew install make llvm
  ```
- **Windows**: Use [WSL](https://learn.microsoft.com/en-us/windows/wsl/install) or [MSYS2](https://www.msys2.org/).

## Run locally

```bash
make run
```

## Lint

```bash
make lint
```

## Format

```bash
make format
```

To check formatting without modifying files:

```bash
make check-format
```

## Build

```bash
make build
```

## Clean

```bash
make clean
```

