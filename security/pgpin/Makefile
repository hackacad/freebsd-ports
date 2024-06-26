PORTNAME=	pgpin
PORTVERSION=	010323
PORTREVISION=	1
CATEGORIES=	security
MASTER_SITES=	LOCAL/dinoex \
		ftp://ftp.iks-jena.de/pub/mitarb/lutz/crypt/software/pgp/pgp263in/
DISTNAME=	pgp263in${PORTVERSION}

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	PGP International version - improved for use in IN-CA
WWW=		https://www.pgpi.org/

LICENSE=	MIT

BROKEN_mips64=		Does not build
BROKEN_riscv64=		Does not build: make: don't know how to make freebsd-riscv64

PORTSCOUT=	ignore:1

USES=		tar:tgz
WRKSRC=		${WRKDIR}/pgp263in/src
MAKEFILE=	makefile
ALL_TARGET=	freebsd-${ARCH:S/powerpc64le/powerpc64/} OS_CFLAGS="${CFLAGS}"
PGPLIB=		${STAGEDIR}${PREFIX}/lib/pgpin
OPTIONS_DEFINE=	DOCS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgp ${STAGEDIR}${PREFIX}/bin/pgpin
	${INSTALL_MAN} ${WRKSRC}/../doc/pgp.1 ${STAGEDIR}${PREFIX}/share/man/man1/pgpin.1
	${MKDIR} ${PGPLIB}
	${INSTALL_DATA} ${WRKSRC}/../pgp.hlp ${PGPLIB}/
	${INSTALL_DATA} ${WRKSRC}/../language.txt ${PGPLIB}/language.txt.sample
	${INSTALL_DATA} ${WRKSRC}/../config.txt ${PGPLIB}/config.txt.sample

post-install-DOCS-on:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${FILESDIR}/CHANGES ${STAGEDIR}${DOCSDIR}/
	${INSTALL_DATA} ${WRKSRC}/../doc/pgpdoc1.txt \
		${WRKSRC}/../doc/pgpdoc2.txt ${STAGEDIR}${DOCSDIR}/

.include <bsd.port.mk>
