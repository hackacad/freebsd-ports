PORTNAME=	amiwm
PORTVERSION=	0.22.pl2
PORTREVISION=	1
CATEGORIES=	x11-wm
MASTER_SITES=	https://ftp.lysator.liu.se/pub/X11/wm/amiwm/
DISTNAME=	${PORTNAME}0.22pl2

MAINTAINER=	dcarmich@dcarmichael.net
COMMENT=	Window manager that makes your desktop look like an Amiga(TM)
WWW=		https://www.lysator.liu.se/~marcus/amiwm.html

USES=		shebangfix xorg
SHEBANG_FILES=	Xinitrc.in \
		Xsession.in \
		Xsession2.in
MAKE_JOBS_UNSAFE=	yes
GNU_CONFIGURE=	yes
USE_XORG=	ice sm x11 xext xmu

OPTIONS_DEFINE=	DOCS

post-install-DOCS-on:
	@${ECHO_MSG} "===>  Copying documents to ${DOCSDIR}"
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}/README
	${INSTALL_DATA} ${WRKSRC}/README.modules ${STAGEDIR}${DOCSDIR}/README.modules

.include <bsd.port.mk>
