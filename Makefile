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
MAKE_ARGS=	CC=${CC} CXX=${CXX} LinkerName=${CXX} SharedObjectLinkerName="${CXX} -shared -fPIC"

ONLY_FOR_ARCHS=	amd64 armv6 i386 mips

SNAP_ARCH=	${ARCH:S/amd64/x86_64/:S/armv6/arm_v6/}
MAKEFILE=	${SNAP_ARCH}_bsd.mk

.include <bsd.port.mk>
