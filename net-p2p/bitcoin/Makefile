PORTNAME=	bitcoin
PORTVERSION=	28.1
PORTREVISION=	1
CATEGORIES=	net-p2p finance
MASTER_SITES=	https://bitcoincore.org/bin/bitcoin-core-${PORTVERSION}/ \
		LOCAL/swills:icon
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} bitcoin128.png:icon
DIST_SUBDIR=	${PORTNAME}
EXTRACT_ONLY=	${_DISTFILES:N*.png}

PATCH_SITES=	https://github.com/bitcoin-core/gui/commit/

MAINTAINER=	kbowling@FreeBSD.org
COMMENT?=	Virtual Peer-to-Peer Currency Client (QT)
WWW=		https://www.bitcoin.org/

LICENSE=	MIT

LIB_DEPENDS=	libboost_date_time.so:devel/boost-libs \
		libevent.so:devel/libevent

USES=		autoreconf compiler:c++20-lang cpe gmake libtool pkgconfig qt:5 shebangfix

GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=${PREFIX}/share

SLAVE_PORT?=	no

.if defined(SLAVE_PORT) && ${SLAVE_PORT} == "no"
USES+=		desktop-file-utils
USE_QT=		core gui network widgets \
		buildtools:build linguisttools:build qmake:build

BUILD_DEPENDS+=	protoc:devel/protobuf
LIB_DEPENDS+=	libprotobuf.so:devel/protobuf

TESTS_USE=		QT=testlib
TESTS_PLIST_FILES=	bin/test_bitcoin-qt \
			bin/test_bitcoin
.endif

OPTIONS_DEFINE?=	DBUS DEBUG HARDENING QRCODES TESTS UPNP WALLET ZMQ
OPTIONS_DEFAULT?=	DBUS HARDENING QRCODES UPNP WALLET ZMQ
OPTIONS_SUB=		yes

HARDENING_DESC=	Attempt to harden binaries (PIE for ASLR, NX Stack)
QRCODES_DESC=	Display QR Codes
TESTS_DESC=	Build test binary and unit tests
WALLET_DESC=	Wallet Management Support
ZMQ_DESC=	Block and transaction broadcasting with ZeroMQ

DBUS_CONFIGURE_WITH=	dbus
DBUS_USE=		QT=dbus

DEBUG_CONFIGURE_ENABLE=		debug
DEBUG_INSTALL_TARGET_OFF=	install-strip

HARDENING_CONFIGURE_ENABLE=	hardening

TESTS_CONFIGURE_ENABLE=	tests bench
.if defined(SLAVE_PORT) && ${SLAVE_PORT} == "yes"
TESTS_PLIST_FILES=	bin/test_bitcoin
.endif
TESTS_PLIST_FILES+=	bin/bench_bitcoin

UPNP_CONFIGURE_WITH=	miniupnpc
UPNP_LIB_DEPENDS=	libminiupnpc.so:net/miniupnpc
UPNP_CPPFLAGS=		-I${LOCALBASE}/include
UPNP_LIBS=		-L${LOCALBASE}/lib

QRCODES_CONFIGURE_WITH=	qrencode
QRCODES_LIB_DEPENDS=	libqrencode.so:graphics/libqrencode

WALLET_CONFIGURE_OFF=	--disable-wallet
WALLET_CONFIGURE_ON=	--enable-wallet \
			--with-incompatible-bdb \
			--with-sqlite=yes \
			BDB_CFLAGS=-I${BDB_INCLUDE_DIR} \
			BDB_LIBS="-L${BDB_LIB_DIR} \
				-Wl,-rpath=${BDB_LIB_DIR} \
				-l${BDB_LIB_CXX_NAME}"
WALLET_USES=		bdb:5+ sqlite:3

ZMQ_CONFIGURE_ENABLE=	zmq
ZMQ_BUILD_DEPENDS=	libzmq4>0:net/libzmq4
ZMQ_RUN_DEPENDS=	libzmq4>0:net/libzmq4

GH_ACCOUNT=	bitcoin

CONFIGURE_ARGS?=	--without-libs \
			--with-gui=qt5 \
			--without-daemon \
			--without-utils

CONFIGURE_ENV=	OBJCXX="${CXX}" OBJCXXFLAGS="${CXXFLAGS}"
MAKE_ENV+=	V=1

PLIST_FILES?=	bin/bitcoin-qt share/man/man1/bitcoin-qt.1.gz \
		share/applications/bitcoin-qt.desktop share/pixmaps/bitcoin128.png

.include <bsd.port.pre.mk>

.if defined(SLAVE_PORT) && ${SLAVE_PORT} == "no"

post-install:
	${INSTALL} ${FILESDIR}/bitcoin-qt.desktop \
		${STAGEDIR}${PREFIX}/share/applications
	${INSTALL} ${DISTDIR}/${DIST_SUBDIR}/bitcoin128.png \
		${STAGEDIR}${PREFIX}/share/pixmaps/

.endif

regression-test: build
	# To use this sucessfully, remove --without-daemon and --without-utils
	# from CONFIGURE_ARGS above.

	@cd ${WRKSRC} && ${GMAKE} check

.include <bsd.port.post.mk>
