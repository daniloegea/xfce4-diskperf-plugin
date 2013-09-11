# Created by: Danilo Egea Gondolfo <danilogondolfo@gmail.com>
# $FreeBSD$

PORTNAME=	xfce4-diskperf-plugin
PORTVERSION=	2.5.4
CATEGORIES=	sysutils xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/panel-plugins/${PORTNAME}/${PORTVERSION:R}
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Graphical representation of the disk IO

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GNOME=	gtk20 intltool intlhack
USE_XFCE=	configenv libmenu panel
INSTALLS_ICONS=	yes
USES=	gmake pathfix pkgconfig

LDFLAGS+=	-ldevstat

OPTIONS_DEFINE= NLS
OPTIONS_SUB=	yes
NLS_CONFIGURE_ENABLE=	nls
NLS_USES=	gettext

.include <bsd.port.mk>
