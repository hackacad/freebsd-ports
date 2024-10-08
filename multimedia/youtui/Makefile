PORTNAME=	youtui
DISTVERSIONPREFIX=	youtui/v
DISTVERSION=	0.0.14
PORTREVISION=	1
CATEGORIES=	multimedia

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	TUI and API for YouTube music
WWW=		https://github.com/nick42d/youtui

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

LIB_DEPENDS=	libasound.so:audio/alsa-lib

USES=		cargo

USE_GITHUB=	yes
GH_ACCOUNT=	nick42d

CARGO_CRATES=	addr2line-0.22.0 \
		adler-1.0.2 \
		aes-0.8.4 \
		ahash-0.8.11 \
		aho-corasick-1.1.3 \
		allocator-api2-0.2.18 \
		alsa-0.9.0 \
		alsa-sys-0.3.1 \
		android-tzdata-0.1.1 \
		android_system_properties-0.1.5 \
		anstream-0.6.14 \
		anstyle-1.0.8 \
		anstyle-parse-0.2.4 \
		anstyle-query-1.1.0 \
		anstyle-wincon-3.0.3 \
		anyhow-1.0.86 \
		arrayvec-0.7.4 \
		async-compression-0.4.11 \
		async-stream-0.3.5 \
		async-stream-impl-0.3.5 \
		async-trait-0.1.81 \
		atomic-waker-1.1.2 \
		autocfg-1.3.0 \
		backtrace-0.3.73 \
		base64-0.22.1 \
		bindgen-0.69.4 \
		bitflags-1.3.2 \
		bitflags-2.6.0 \
		block-buffer-0.10.4 \
		block-padding-0.3.3 \
		boa_ast-0.19.0 \
		boa_engine-0.19.0 \
		boa_gc-0.19.0 \
		boa_interner-0.19.0 \
		boa_macros-0.19.0 \
		boa_parser-0.19.0 \
		boa_profiler-0.19.0 \
		boa_string-0.19.0 \
		bumpalo-3.16.0 \
		bytemuck-1.16.1 \
		bytemuck_derive-1.7.0 \
		byteorder-1.5.0 \
		bytes-1.7.1 \
		cassowary-0.3.0 \
		castaway-0.2.3 \
		cbc-0.1.2 \
		cc-1.1.6 \
		cesu8-1.1.0 \
		cexpr-0.6.0 \
		cfg-if-1.0.0 \
		chrono-0.4.38 \
		cipher-0.4.4 \
		clang-sys-1.8.1 \
		clap-4.5.16 \
		clap_builder-4.5.15 \
		clap_derive-4.5.13 \
		clap_lex-0.7.1 \
		claxon-0.4.3 \
		colorchoice-1.0.1 \
		combine-4.6.7 \
		compact_str-0.8.0 \
		const_format-0.2.32 \
		const_format_proc_macros-0.2.32 \
		cookie-0.18.1 \
		cookie_store-0.21.0 \
		core-foundation-0.9.4 \
		core-foundation-sys-0.8.6 \
		coreaudio-rs-0.11.3 \
		coreaudio-sys-0.2.15 \
		cpal-0.15.3 \
		cpufeatures-0.2.12 \
		crc32fast-1.4.2 \
		crossterm-0.28.1 \
		crossterm_winapi-0.9.1 \
		crypto-common-0.1.6 \
		cssparser-0.31.2 \
		cssparser-macros-0.6.1 \
		dashmap-5.5.3 \
		dasp_sample-0.11.0 \
		deranged-0.3.11 \
		derivative-2.2.0 \
		derive_more-0.99.18 \
		derive_more-1.0.0 \
		derive_more-impl-1.0.0 \
		diff-0.1.13 \
		digest-0.10.7 \
		directories-5.0.1 \
		dirs-sys-0.4.1 \
		displaydoc-0.2.5 \
		dtoa-1.0.9 \
		dtoa-short-0.3.5 \
		ego-tree-0.6.2 \
		either-1.13.0 \
		encoding_rs-0.8.34 \
		equivalent-1.0.1 \
		errno-0.3.9 \
		extended-0.1.0 \
		fast-float-0.2.0 \
		fastrand-2.1.0 \
		filedescriptor-0.8.2 \
		flate2-1.0.30 \
		fnv-1.0.7 \
		foreign-types-0.3.2 \
		foreign-types-shared-0.1.1 \
		form_urlencoded-1.2.1 \
		futf-0.1.5 \
		futures-0.3.30 \
		futures-channel-0.3.30 \
		futures-core-0.3.30 \
		futures-executor-0.3.30 \
		futures-io-0.3.30 \
		futures-macro-0.3.30 \
		futures-sink-0.3.30 \
		futures-task-0.3.30 \
		futures-util-0.3.30 \
		fxhash-0.2.1 \
		gag-1.0.0 \
		generic-array-0.14.7 \
		getopts-0.2.21 \
		getrandom-0.2.15 \
		gimli-0.29.0 \
		glob-0.3.1 \
		h2-0.4.5 \
		hashbrown-0.14.5 \
		heck-0.5.0 \
		hermit-abi-0.3.9 \
		hex-0.4.3 \
		hound-3.5.1 \
		html5ever-0.27.0 \
		http-1.1.0 \
		http-body-1.0.1 \
		http-body-util-0.1.2 \
		httparse-1.9.4 \
		hyper-1.4.1 \
		hyper-rustls-0.27.2 \
		hyper-tls-0.6.0 \
		hyper-util-0.1.6 \
		iana-time-zone-0.1.60 \
		iana-time-zone-haiku-0.1.2 \
		icu_collections-1.5.0 \
		icu_locid-1.5.0 \
		icu_locid_transform-1.5.0 \
		icu_locid_transform_data-1.5.0 \
		icu_normalizer-1.5.0 \
		icu_normalizer_data-1.5.0 \
		icu_properties-1.5.1 \
		icu_properties_data-1.5.0 \
		icu_provider-1.5.0 \
		icu_provider_macros-1.5.0 \
		idna-0.3.0 \
		idna-0.5.0 \
		indexmap-2.2.6 \
		inout-0.1.3 \
		instability-0.3.2 \
		instant-0.1.13 \
		intrusive-collections-0.9.6 \
		ipnet-2.9.0 \
		is_terminal_polyfill-1.70.0 \
		itertools-0.12.1 \
		itertools-0.13.0 \
		itoa-1.0.11 \
		jni-0.21.1 \
		jni-sys-0.3.0 \
		jobserver-0.1.31 \
		js-sys-0.3.69 \
		lazy_static-1.5.0 \
		lazycell-1.3.0 \
		lewton-0.10.2 \
		libc-0.2.155 \
		libloading-0.8.4 \
		libredox-0.1.3 \
		linux-raw-sys-0.4.14 \
		litemap-0.7.3 \
		lock_api-0.4.12 \
		log-0.4.22 \
		lru-0.12.3 \
		m3u8-rs-6.0.0 \
		mac-0.1.1 \
		mach2-0.4.2 \
		markup5ever-0.12.1 \
		memchr-2.7.4 \
		memoffset-0.9.1 \
		mime-0.3.17 \
		minimal-lexical-0.2.1 \
		miniz_oxide-0.7.4 \
		mio-1.0.1 \
		native-tls-0.2.12 \
		ndk-0.8.0 \
		ndk-context-0.1.1 \
		ndk-sys-0.5.0+25.2.9519653 \
		new_debug_unreachable-1.0.6 \
		nom-7.1.3 \
		nu-ansi-term-0.46.0 \
		num-bigint-0.4.6 \
		num-conv-0.1.0 \
		num-derive-0.4.2 \
		num-integer-0.1.46 \
		num-traits-0.2.19 \
		num_enum-0.7.2 \
		num_enum_derive-0.7.2 \
		num_threads-0.1.7 \
		object-0.36.1 \
		oboe-0.6.1 \
		oboe-sys-0.6.1 \
		ogg-0.8.0 \
		once_cell-1.19.0 \
		openssl-0.10.66 \
		openssl-macros-0.1.1 \
		openssl-probe-0.1.5 \
		openssl-sys-0.9.103 \
		option-ext-0.2.0 \
		overload-0.1.1 \
		parking_lot-0.11.2 \
		parking_lot-0.12.3 \
		parking_lot_core-0.8.6 \
		parking_lot_core-0.9.10 \
		paste-1.0.15 \
		percent-encoding-2.3.1 \
		phf-0.10.1 \
		phf-0.11.2 \
		phf_codegen-0.10.0 \
		phf_codegen-0.11.2 \
		phf_generator-0.10.0 \
		phf_generator-0.11.2 \
		phf_macros-0.11.2 \
		phf_shared-0.10.0 \
		phf_shared-0.11.2 \
		pin-project-1.1.5 \
		pin-project-internal-1.1.5 \
		pin-project-lite-0.2.14 \
		pin-utils-0.1.0 \
		pkg-config-0.3.30 \
		pollster-0.3.0 \
		portable-atomic-1.6.0 \
		powerfmt-0.2.0 \
		ppv-lite86-0.2.17 \
		precomputed-hash-0.1.1 \
		pretty_assertions-1.4.0 \
		proc-macro-crate-3.1.0 \
		proc-macro2-1.0.86 \
		psl-types-2.0.11 \
		publicsuffix-2.2.3 \
		quinn-0.11.2 \
		quinn-proto-0.11.8 \
		quinn-udp-0.5.2 \
		quote-1.0.36 \
		rand-0.8.5 \
		rand_chacha-0.3.1 \
		rand_core-0.6.4 \
		ratatui-0.28.0 \
		redox_syscall-0.2.16 \
		redox_syscall-0.5.3 \
		redox_users-0.4.5 \
		regex-1.10.6 \
		regex-automata-0.4.7 \
		regex-syntax-0.8.4 \
		regress-0.10.0 \
		reqwest-0.12.7 \
		reqwest-middleware-0.3.3 \
		reqwest-retry-0.6.1 \
		retry-policies-0.4.0 \
		ring-0.17.8 \
		rustc-demangle-0.1.24 \
		rustc-hash-1.1.0 \
		rustc-hash-2.0.0 \
		rustix-0.38.34 \
		rustls-0.23.11 \
		rustls-pemfile-2.1.2 \
		rustls-pki-types-1.7.0 \
		rustls-webpki-0.102.5 \
		rustversion-1.0.17 \
		rusty_ytdl-0.7.4 \
		ryu-1.0.18 \
		ryu-js-1.0.1 \
		same-file-1.0.6 \
		schannel-0.1.23 \
		scopeguard-1.2.0 \
		scraper-0.20.0 \
		security-framework-2.11.1 \
		security-framework-sys-2.11.1 \
		selectors-0.25.0 \
		serde-1.0.209 \
		serde_derive-1.0.209 \
		serde_json-1.0.127 \
		serde_qs-0.13.0 \
		serde_spanned-0.6.7 \
		serde_urlencoded-0.7.1 \
		servo_arc-0.3.0 \
		sha1-0.10.6 \
		sharded-slab-0.1.7 \
		shlex-1.3.0 \
		signal-hook-0.3.17 \
		signal-hook-mio-0.2.4 \
		signal-hook-registry-1.4.2 \
		siphasher-0.3.11 \
		slab-0.4.9 \
		smallvec-1.13.2 \
		socket2-0.5.7 \
		spin-0.9.8 \
		sptr-0.3.2 \
		stable_deref_trait-1.2.0 \
		static_assertions-1.1.0 \
		string_cache-0.8.7 \
		string_cache_codegen-0.5.2 \
		strsim-0.11.1 \
		strum-0.26.3 \
		strum_macros-0.26.4 \
		subtle-2.6.1 \
		symphonia-0.5.4 \
		symphonia-bundle-flac-0.5.4 \
		symphonia-bundle-mp3-0.5.4 \
		symphonia-codec-aac-0.5.4 \
		symphonia-codec-adpcm-0.5.4 \
		symphonia-codec-pcm-0.5.4 \
		symphonia-codec-vorbis-0.5.4 \
		symphonia-core-0.5.4 \
		symphonia-format-isomp4-0.5.4 \
		symphonia-format-riff-0.5.4 \
		symphonia-metadata-0.5.4 \
		symphonia-utils-xiph-0.5.4 \
		syn-1.0.109 \
		syn-2.0.71 \
		sync_wrapper-1.0.1 \
		synstructure-0.13.1 \
		tap-1.0.1 \
		tempfile-3.10.1 \
		tendril-0.4.3 \
		thin-vec-0.2.13 \
		thiserror-1.0.63 \
		thiserror-impl-1.0.63 \
		thread_local-1.1.8 \
		time-0.3.36 \
		time-core-0.1.2 \
		time-macros-0.2.18 \
		tinystr-0.7.6 \
		tinyvec-1.8.0 \
		tinyvec_macros-0.1.1 \
		tokio-1.39.3 \
		tokio-macros-2.4.0 \
		tokio-native-tls-0.3.1 \
		tokio-rustls-0.26.0 \
		tokio-stream-0.1.15 \
		tokio-util-0.7.11 \
		toml-0.8.19 \
		toml_datetime-0.6.8 \
		toml_edit-0.21.1 \
		toml_edit-0.22.20 \
		tower-0.4.13 \
		tower-layer-0.3.2 \
		tower-service-0.3.2 \
		tracing-0.1.40 \
		tracing-attributes-0.1.27 \
		tracing-core-0.1.32 \
		tracing-log-0.2.0 \
		tracing-subscriber-0.3.18 \
		try-lock-0.2.5 \
		tui-logger-0.12.0 \
		typenum-1.17.0 \
		unicode-bidi-0.3.15 \
		unicode-ident-1.0.12 \
		unicode-normalization-0.1.23 \
		unicode-segmentation-1.11.0 \
		unicode-truncate-1.1.0 \
		unicode-width-0.1.13 \
		unicode-xid-0.2.4 \
		untrusted-0.9.0 \
		url-2.5.2 \
		urlencoding-2.1.3 \
		utf-8-0.7.6 \
		utf16_iter-1.0.5 \
		utf8_iter-1.0.4 \
		utf8parse-0.2.2 \
		valuable-0.1.0 \
		vcpkg-0.2.15 \
		version_check-0.9.4 \
		walkdir-2.5.0 \
		want-0.3.1 \
		wasi-0.11.0+wasi-snapshot-preview1 \
		wasm-bindgen-0.2.92 \
		wasm-bindgen-backend-0.2.92 \
		wasm-bindgen-futures-0.4.42 \
		wasm-bindgen-macro-0.2.92 \
		wasm-bindgen-macro-support-0.2.92 \
		wasm-bindgen-shared-0.2.92 \
		wasm-timer-0.2.5 \
		web-sys-0.3.69 \
		webpki-roots-0.26.3 \
		winapi-0.3.9 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-util-0.1.8 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		windows-0.54.0 \
		windows-core-0.52.0 \
		windows-core-0.54.0 \
		windows-registry-0.2.0 \
		windows-result-0.1.2 \
		windows-result-0.2.0 \
		windows-strings-0.1.0 \
		windows-sys-0.45.0 \
		windows-sys-0.48.0 \
		windows-sys-0.52.0 \
		windows-targets-0.42.2 \
		windows-targets-0.48.5 \
		windows-targets-0.52.6 \
		windows_aarch64_gnullvm-0.42.2 \
		windows_aarch64_gnullvm-0.48.5 \
		windows_aarch64_gnullvm-0.52.6 \
		windows_aarch64_msvc-0.42.2 \
		windows_aarch64_msvc-0.48.5 \
		windows_aarch64_msvc-0.52.6 \
		windows_i686_gnu-0.42.2 \
		windows_i686_gnu-0.48.5 \
		windows_i686_gnu-0.52.6 \
		windows_i686_gnullvm-0.52.6 \
		windows_i686_msvc-0.42.2 \
		windows_i686_msvc-0.48.5 \
		windows_i686_msvc-0.52.6 \
		windows_x86_64_gnu-0.42.2 \
		windows_x86_64_gnu-0.48.5 \
		windows_x86_64_gnu-0.52.6 \
		windows_x86_64_gnullvm-0.42.2 \
		windows_x86_64_gnullvm-0.48.5 \
		windows_x86_64_gnullvm-0.52.6 \
		windows_x86_64_msvc-0.42.2 \
		windows_x86_64_msvc-0.48.5 \
		windows_x86_64_msvc-0.52.6 \
		winnow-0.5.40 \
		winnow-0.6.18 \
		write16-1.0.0 \
		writeable-0.5.5 \
		yansi-0.5.1 \
		yoke-0.7.4 \
		yoke-derive-0.7.4 \
		youtui-vendored-rodio-0.19.0-youtui-vendored.1 \
		zerocopy-0.7.35 \
		zerocopy-derive-0.7.35 \
		zerofrom-0.1.4 \
		zerofrom-derive-0.1.4 \
		zeroize-1.8.1 \
		zerovec-0.10.4 \
		zerovec-derive-0.10.3

OPENSSLINC=	/usr/include
OPENSSLLIB=	/usr/lib

PLIST_FILES=	bin/${PORTNAME}

do-install:
	# binaries (workaround for error: found a virtual manifest at `xx` instead of a package manifest)
	echo ">> find"
	find ${WRKDIR}/target
	echo "<< find"
	${INSTALL_PROGRAM} \
		${WRKDIR}/target/*/release/${PORTNAME} \
		${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
