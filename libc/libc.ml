include Libc_aarch64_apple_darwin [@@config
                                    all
                                      ( target_os = "macos",
                                        target_arch = "aarch64" )]

include Libc_aarch64_apple_darwin [@@config
                                    all
                                      ( target_os = "macos",
                                        target_arch = "x86_64" )]

include Libc_x86_64_unknown_freebsd [@@config
                                      all
                                        ( target_os = "freebsd",
                                          target_arch = "x86_64" )]

include Libc_x86_64_linux_gnu [@@config
                                all
                                  ( target_os = "linux",
                                    target_arch = "x86_64",
                                    target_env = "gnu" )]

include Libc_x86_64_linux_musl [@@config
                                 all
                                   ( target_os = "linux",
                                     target_arch = "x86_64",
                                     target_env = "musl" )]

include Libc_aarch64_linux_gnu [@@config
                                 all
                                   ( target_os = "linux",
                                     target_arch = "aarch64",
                                     target_env = "gnu" )]

include Libc_aarch64_linux_musl [@@config
                                  all
                                    ( target_os = "linux",
                                      target_arch = "aarch64",
                                      target_env = "musl" )]
