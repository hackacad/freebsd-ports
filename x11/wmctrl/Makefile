PORTNAME=	wmctrl
PORTVERSION=	1.07
PORTREVISION=	8
CATEGORIES=	x11
MASTER_SITES=	http://sweb.cz/tripie/utils/wmctrl/dist/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Command line tool to interact with an EWMH/NetWM compatible X managers
WWW=		http://sweb.cz/tripie/utils/wmctrl/

LICENSE=	GPLv2

USES=		gnome pkgconfig xorg
GNU_CONFIGURE=	yes
GNU_CONFIGURE_MANPREFIX=${PREFIX}/share
USE_XORG=	x11 xmu xext xt
USE_GNOME=	glib20

PLIST_FILES=	bin/wmctrl share/man/man1/${PORTNAME}.1.gz

.include <bsd.port.mk>
