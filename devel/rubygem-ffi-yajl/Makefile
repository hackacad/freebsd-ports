PORTNAME=	ffi-yajl
DISTVERSION=	2.3.4
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	renchap@cocoa-x.com
COMMENT=	Ruby FFI wrapper around YAJL 2.x
WWW=		https://github.com/opscode/ffi-yajl

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	rubygem-libyajl2>=1.2:devel/rubygem-libyajl2
RUN_DEPENDS=	yajl>=2.0.0:devel/yajl \
		rubygem-libyajl2>=1.2:devel/rubygem-libyajl2

USES=		gem

PLIST_FILES=	bin/ffi-yajl-bench

.include <bsd.port.mk>
