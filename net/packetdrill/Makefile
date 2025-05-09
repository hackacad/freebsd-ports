PORTNAME=	packetdrill
PORTVERSION=	0.0.2025042400
CATEGORIES=	net

MAINTAINER=	olivier@FreeBSD.org
COMMENT=	Network stack testing tool
WWW=		https://github.com/freebsd-net/packetdrill

LICENSE=	GPLv2

USES=		bison python:run uidfix
USE_GITHUB=	yes
GH_ACCOUNT=	freebsd-net
GH_TAGNAME=	f197eb3
WRKSRC_SUBDIR=	gtests/net/packetdrill
PLIST_FILES=	bin/${PORTNAME}
PORTDATA=	packetdrill.el packetdrill.vim
PORTDOCS=	README
PORTEXAMPLES=	tests

OPTIONS_DEFINE=	DOCS EXAMPLES

# XXX Static libraries with PIE are currently unsupported.
MAKE_ARGS+=	WITHOUT_PIE=true
TEST_TARGET=	tests

pre-build:
	cd ${WRKSRC} && ${LN} -f Makefile.FreeBSD Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

post-install:
	@${MKDIR} ${STAGEDIR}${DATADIR}
	cd ${WRKSRC}/contrib && ${INSTALL_DATA} ${PORTDATA} \
	    ${STAGEDIR}${DATADIR}

post-install-EXAMPLES-on:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	cd ${WRKSRC} && ${COPYTREE_SHARE} ${PORTEXAMPLES} \
	    ${STAGEDIR}${EXAMPLESDIR}
post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
