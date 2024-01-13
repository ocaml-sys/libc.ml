# libc - raw definitions and bindings to platforms' system libraries

`libc` provides definitions (and in the future bindings) to easily interoperate
with C code (or "C-like" code) on several platforms, and it does this with a
target and architecture aware API.

Platforms included:

* `aarch64-macos-darwin`
* PRs welcome!

## Contributing

Including new platforms, while tedious, is pretty straightforward. We are using Rust's `libc` as a template for what are interesting/useful definitions on each platform.

That way, the easiest way to get started is to find the right platform version
of `libc` for Rust, and translate the definitions.

Common types are currently included in the `types.ml` module, so you can `open
Types` at the top of your new module.

