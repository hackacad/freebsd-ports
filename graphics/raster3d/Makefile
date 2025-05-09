PORTNAME=	raster3d
DISTVERSION=	3.0.7
PORTREVISION=	5
CATEGORIES=	graphics biology
MASTER_SITES=	http://skuld.bmsc.washington.edu/${PORTNAME}/
DISTNAME=	Raster3D_${DISTVERSION:R}-${DISTVERSION:E}

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	Set of tools for generating raster images of proteins and molecules
WWW=		http://skuld.bmsc.washington.edu/raster3d/

LICENSE=	ART20

LIB_DEPENDS=	libgd.so:graphics/gd \
		libtiff.so:graphics/tiff

USES=		fortran
MAKE_ARGS=	INCDIRS="-I${LOCALBASE}/include" LIBDIRS="-L${LOCALBASE}/lib" \
		CC="${CC}" CFLAGS="${CFLAGS}" FC="${FC}" FFLAGS="${FFLAGS}" \
		RM="${RM}" OS="${OPSYS}"
MAKE_JOBS_UNSAFE=	yes

CFLAGS+=	-DLINUX -DNETWORKBYTEORDER -Dgfortran
FFLAGS+=	-std=legacy -fno-range-check -ffixed-line-length-132

PORTDOCS=	*
PORTEXAMPLES=	*

OPTIONS_DEFINE=	IMAGEMAGICK DOCS EXAMPLES
OPTIONS_DEFAULT=IMAGEMAGICK
OPTIONS_SUB=		yes

IMAGEMAGICK_USES=	magick:6,run

.include <bsd.port.options.mk>

.if ${FORTRAN_DEFAULT} == gfortran && ${GCC_DEFAULT} >= 10
FFLAGS+=	-fallow-invalid-boz
.endif

pre-build: # generation of Makefile.incl has to be separate from 'make all', otherwise the generated Makefile.incl isn't read by 'make all'
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_CMD} ${MAKE_ARGS} linux

do-install:
.for f in avs2ps balls normal3d rastep render ribbon rings3d rods
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${STAGEDIR}${PREFIX}/bin
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/worms ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/*.l ${STAGEDIR}${PREFIX}/share/man/manl
	@${MKDIR} ${STAGEDIR}${DATADIR}/materials
	${INSTALL_DATA} ${WRKSRC}/materials/* ${STAGEDIR}${DATADIR}/materials

do-install-IMAGEMAGICK-on:
.for f in label3d stereo3d
	${INSTALL_SCRIPT} ${WRKSRC}/${f} ${STAGEDIR}${PREFIX}/bin
.endfor

do-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}/html
	${INSTALL_DATA} ${WRKSRC}/doc/R3D_manual.pdf ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/html/* ${STAGEDIR}${DOCSDIR}/html

do-install-EXAMPLES-on:
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${STAGEDIR}${EXAMPLESDIR}
	@${RM} -r ${STAGEDIR}${EXAMPLESDIR}/msms/CVS

.include <bsd.port.mk>
