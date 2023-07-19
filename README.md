# Swift Multi Platform App

This repository serves as an example on how to write Swift code that compiles and is shared on multiple platforms.
<br/> <br/>
Although this might not present industry standard best practices for a production application, it does provide a starting point on reasoning how one can leverage Swift on multiple platforms, outside of Apple's Ecosystem.
<br/> <br/>
Suggestions and tips for organizing the examples are welcome!
<br/> <br/>

# CI 
[![macOS](https://github.com/hggz/SwiftMultiPlatform/actions/workflows/main.yml/badge.svg)](https://github.com/hggz/SwiftMultiPlatform/actions/workflows/main.yml)

| Platform | **Architecture** | **Swift Version** | **Build** |
|---|:---:|:---:|:---:|
| **macOS**        | x86_64 | 5.8 | :heavy_check_mark: |
| **Ubuntu 22.04** | x86_64 | 5.8 | :heavy_check_mark: |
| **Windows** | x86_64 | 5.8 | :heavy_check_mark: |
| **Android** | Aarch64 | 5.8 | :heavy_minus_sign: |
| **Ubuntu 22.04** | wasm32 | 5.8 | :heavy_check_mark: |

<br/>

# Project Structure

Under the `Sources/Examples` directory you'll find parent folders containing swift code that is shared across itself. 
<br/> <br/>
This can contain various swift packages that represent a standalone application, or a library imported by an application.
