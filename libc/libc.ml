module Impl = Libc_aarch64_apple_darwin
[@@config all (target_os = "macos", target_arch = "aarch64")]

module Impl = Libc_x86_64_linux_gnu
[@@config all (target_os = "linux", target_arch = "x86_64", target_env = "gnu")]

module Impl = Libc_x86_64_linux_musl
[@@config
  all (target_os = "linux", target_arch = "x86_64", target_env = "musl")]

module Impl = Libc_aarch64_linux_gnu
[@@config
  all (target_os = "linux", target_arch = "aarch64", target_env = "gnu")]

module Impl = Libc_aarch64_linux_musl
[@@config
  all (target_os = "linux", target_arch = "aarch64", target_env = "musl")]

include Impl
