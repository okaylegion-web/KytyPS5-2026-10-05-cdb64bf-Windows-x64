KytyPS5 CMake helper directory
================================

This directory contains small reusable CMake helper modules and presets intended to make configuring KytyPS5 with Visual Studio 2026 and command-line CMake easier.

Files:
- Modules/ProjectDefaults.cmake: conservative project defaults (C++ standard, warnings, install prefix).

Usage:
- Visual Studio: open the folder or use the configure preset `vs2026` from CMakePresets.json.
- Command line (Ninja): cmake --preset=ninja-release; cmake --build --preset=build-launcher
