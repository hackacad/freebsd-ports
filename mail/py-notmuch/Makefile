PORTREVISION=	1
CATEGORIES=	mail python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

COMMENT=	Python interface for the Notmuch email search and tagging library

LICENSE=	GPLv3

LIB_DEPENDS=	libnotmuch.so:mail/notmuch

USES=		python uniquefiles:dirs
USE_PYTHON=	autoplist distutils

MASTERDIR=	${.CURDIR}/../notmuch
NO_ARCH=	yes
PORTDOCS=	*
WRKSRC_SUBDIR=	contrib/python-legacy

OPTIONS_DEFINE=	DOCS

DOCS_BUILD_DEPENDS=	sphinx-build:textproc/py-sphinx

PORTSCOUT=	limit:^[0-9\.]*$$

do-build-DOCS-on:
	@${MAKE_CMD} -C ${WRKSRC}/docs html

do-install-DOCS-on:
	cd ${WRKSRC}/docs/html && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR}
	@${RM} ${STAGEDIR}${DOCSDIR}/.buildinfo

.include "${MASTERDIR}/Makefile"
