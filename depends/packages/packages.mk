rust_crates := \
  crate_arrayvec \
  crate_bellman \
  crate_bitflags \
  crate_bit_vec \
  crate_blake2_rfc \
  crate_byteorder \
  crate_constant_time_eq \
  crate_crossbeam \
  crate_digest \
  crate_fuchsia_zircon \
  crate_fuchsia_zircon_sys \
  crate_futures_cpupool \
  crate_futures \
  crate_generic_array \
  crate_lazy_static \
  crate_libc \
  crate_nodrop \
  crate_num_cpus \
  crate_pairing \
  crate_rand \
  crate_sapling_crypto \
  crate_typenum \
  crate_winapi_i686_pc_windows_gnu \
  crate_winapi \
  crate_winapi_x86_64_pc_windows_gnu
rust_packages := rust $(rust_crates) librustzcash
proton_packages := proton
zcash_packages := libgmp libsodium
packages := boost openssl libevent zeromq $(zcash_packages) googletest curl
native_packages := native_ccache

qt_native_packages = native_protobuf
qt_packages = qrencode protobuf zlib

qt_x86_64_linux_packages:=qt expat dbus libxcb xcb_proto libXau xproto freetype fontconfig libX11 xextproto libXext xtrans
qt_i686_linux_packages:=$(qt_x86_64_linux_packages)

qt_darwin_packages=qt
qt_mingw32_packages=qt

wallet_packages=bdb

darwin_native_packages = native_biplist native_ds_store native_mac_alias

ifneq ($(build_os),darwin)
darwin_native_packages += native_cctools native_cdrkit native_libdmg-hfsplus
endif
