PORTNAME=	Data-UUID
PORTVERSION=	1.227
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Generate Globally/Universally Unique Identifiers (GUIDs/UUIDs)
WWW=		https://metacpan.org/release/Data-UUID

LICENSE=	BSD3CLAUSE

USES=		perl5
USE_PERL5=	configure

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Data/UUID/UUID.so

.include <bsd.port.mk>
