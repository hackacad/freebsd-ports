PORTNAME=	anydesk
DISTVERSION=	6.1.1
PORTREVISION=	2
CATEGORIES=	deskutils
MASTER_SITES=	https://download.anydesk.com/freebsd/
DISTNAME=	${PORTNAME}-freebsd-${PORTVERSION}-${ARCH:S/amd64/x86_64/:S/i386/i386/}

MAINTAINER=	freebsd@sysctl.cz
COMMENT=	Fast remote desktop
WWW=		https://anydesk.com/remote-desktop

LICENSE=	commercial
LICENSE_NAME=	commercial
LICENSE_FILE=	${WRKSRC}/copyright
LICENSE_PERMS=	no-dist-mirror no-dist-sell no-pkg-mirror no-pkg-sell \
		no-auto-accept

ONLY_FOR_ARCHS=	amd64 i386

LIB_DEPENDS=	libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libgtkglext-x11-1.0.so:x11-toolkits/gtkglext \
		libinotify.so:devel/libinotify \
		libpolkit-gobject-1.so:sysutils/polkit \
		libxkbfile.so:x11/libxkbfile

USES=		cpe gl gnome minizip xorg

USE_GL=		gl glu
USE_GNOME=	cairo gdkpixbuf glib20 gtk20 pangox-compat
USE_XORG=	x11 xcb xdamage xext xfixes xi xrandr xrender xtst
NO_BUILD=	YES

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

PLIST_FILES=	bin/anydesk

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
