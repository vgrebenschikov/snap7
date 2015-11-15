
PORTNAME=	snap7
PORTVERSION=	1.4.0
CATEGORIES=	comms

MASTER_SITES=	http://sourceforge.net/projects/snap7/files/1.4.0/snap7-full-1.4.0.tar.gz/download?/ \
		LOCAL/db
		
#MASTER_SITES=	SF/${PORTNAME}/files/${PORTVERSION} \
#		LOCAL/db

DISTFILES=	${PORTNAME}-full-${PORTVERSION}${EXTRACT_SUFX}

MAINTAINER=	vova@fbsd.ru
COMMENT=	Multi-platform Ethernet S7 PLC communication suite

LICENSE=	GPLv3

WRKSRC=		${WRKDIR}/${PORTNAME}-full-${PORTVERSION}
WRKSRC_SUBDIR=	build/unix 

USES=		gmake

.if ARCH == "amd64"
MAKEFILE=	x86_64_bsd.mk
.else
MAKEFILE=	i386_bsd.mk
.endif

.include <bsd.port.mk>
