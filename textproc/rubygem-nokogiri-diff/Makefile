PORTNAME=	nokogiri-diff
PORTVERSION=	0.3.0
CATEGORIES=	textproc rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Calculate the differences between two XML/HTML documents
WWW=		https://github.com/postmodern/nokogiri-diff

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

RUN_DEPENDS=	rubygem-nokogiri>=1.5<2:textproc/rubygem-nokogiri \
		rubygem-tdiff>=0.4<1:devel/rubygem-tdiff

USES=		gem

NO_ARCH=	yes

.include <bsd.port.mk>
