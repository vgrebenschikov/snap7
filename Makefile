# Created by: Vladimir Grebenschikov
# $FreeBSD$

PORTNAME=	snap7
PORTVERSION=	1.4.2
CATEGORIES=	comms
MASTER_SITES=	http://sourceforge.net/projects/snap7/files/1.4.2/snap7-full-1.4.2.7z/download?/ \
		LOCAL/db
DISTNAME=	${PORTNAME}-full-${PORTVERSION}
EXTRACT_SUFX=	.7z

MAINTAINER=	vova@fbsd.ru
COMMENT=	Multi-platform Ethernet S7 PLC communication suite

LICENSE=	GPLv3

WRKSRC=		${WRKDIR}/${PORTNAME}-full-${PORTVERSION}
WRKSRC_SUBDIR=	build/unix

USES=		gmake
MAKE_ARGS=	CC=${CC} CXX=${CXX} LinkerName=${LD} SharedObjectLinkerName="${LD} -shared -fPIC"

ONLY_FOR_ARCHS=	i386 amd64

.include <bsd.port.pre.mk>

.if ${ARCH} == "amd64"
MAKEFILE=	x86_64_bsd.mk
.else
MAKEFILE=	i386_bsd.mk
.endif

.include <bsd.port.post.mk>
