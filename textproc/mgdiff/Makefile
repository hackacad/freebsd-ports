PORTNAME=	mgdiff
PORTVERSION=	1.0
PORTREVISION=	6
CATEGORIES=	textproc
MASTER_SITES=	XCONTRIB/applications
DISTNAME=	${PORTNAME}

MAINTAINER=	portmaster@BSDforge.com
COMMENT=	Graphical front end to the UNIX diff command
WWW=		https://BSDforge.com/projects/textproc/mgdiff/

LICENSE=	MIT

LIB_DEPENDS=	libgnuregex.so:devel/libgnuregex

USES=		imake motif xorg
USE_XORG=	ice sm x11 xext xmu xt

DESKTOP_ENTRIES=	"mgdiff" "GUI front end to the UNIX diff command" \
			"mgdiff-48x48" \
			"mgdiff" "GNOME;GTK;Motif;Development;System;" \
			false

.include <bsd.port.options.mk>

.if ${OPSYS} == FreeBSD && ( ${OSVERSION} >= 1400091 || ( ${OSVERSION} >= 1302507 && ${OSVERSION} < 1400000 ))
CFLAGS+=	-Wno-error=incompatible-function-pointer-types
.endif

post-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${FILESDIR}/mgdiff-48x48.xpm ${STAGEDIR}${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${STAGEDIR}${PREFIX}/share/pixmaps

.include <bsd.port.mk>
