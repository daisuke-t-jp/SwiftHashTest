# SwiftHashTest

[![Build Status](https://travis-ci.org/daisuke-t-jp/SwiftHashTest.svg?branch=master)](https://travis-ci.org/daisuke-t-jp/SwiftHashTest)

Hash algorithm test in Swift.

## Table of using hash algorithm
|Hash function|Repository|XCTest measured average(seconds)|
|:---|:---|:---|
| MD5 | [CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift/) | 0.493 |
| SHA1 | [CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift/) | 0.449 |
| SHA256 | [CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift/) | 0.918 |
| FNV0 32 | [FNV](https://github.com/daisuke-t-jp/FNV/) | 0.226 |
| FNV0 64 | [FNV](https://github.com/daisuke-t-jp/FNV/) | 0.234 |
| FNV1 32 | [FNV](https://github.com/daisuke-t-jp/FNV/) | 0.223 |
| FNV1 64 | [FNV](https://github.com/daisuke-t-jp/FNV/) | 0.235 |
| FNV1a 32 | [FNV](https://github.com/daisuke-t-jp/FNV/) | 0.229 |
| FNV1a 64 | [FNV](https://github.com/daisuke-t-jp/FNV/) | 0.231 |
| MurmurHash3 x86_32 | [MurmurHash-Swift](https://github.com/daisuke-t-jp/MurmurHash-Swift/) | 0.356 |
| MurmurHash3 x86_128 | [MurmurHash-Swift](https://github.com/daisuke-t-jp/MurmurHash-Swift/) | 0.358 |
| MurmurHash3 x64_128 | [MurmurHash-Swift](https://github.com/daisuke-t-jp/MurmurHash-Swift/) | 0.281 |
| xxHash 32 | [xxHash-Swift](https://github.com/daisuke-t-jp/xxHash-Swift/) | 0.263 |
| xxHash 64 | [xxHash-Swift](https://github.com/daisuke-t-jp/xxHash-Swift/) | 0.240 |

- Benchmarked machine
  - macOS Mojave
  - 3.1GHz Intel Core i7
