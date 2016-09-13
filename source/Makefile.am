lib_LTLIBRARIES = libgctp.la

libgctp_la_SOURCES = gctp.c alberfor.c alberinv.c alconfor.c alconinv.c \
	  azimfor.c aziminv.c eqconfor.c eqconinv.c equifor.c equiinv.c \
	  gnomfor.c gnominv.c goodfor.c goodinv.c gvnspfor.c gvnspinv.c \
	  hamfor.c haminv.c imolwfor.c imolwinv.c lamazfor.c lamazinv.c \
	  merfor.c merinv.c millfor.c millinv.c molwfor.c molwinv.c obleqfor.c \
	  obleqinv.c omerfor.c omerinv.c orthfor.c orthinv.c polyfor.c \
	  polyinv.c psfor.c psinv.c robfor.c robinv.c sinfor.c sininv.c \
	  somfor.c sominv.c sterfor.c sterinv.c stplnfor.c stplninv.c \
	  tmfor.c tminv.c utmfor.c utminv.c vandgfor.c vandginv.c \
	  wivfor.c wivinv.c wviifor.c wviiinv.c for_init.c inv_init.c \
	  cproj.c report.c lamccfor.c lamccinv.c paksz.c untfz.c sphdz.c \
	  br_gctp.c

include_HEADERS = cproj.h proj.h

libgctp_la_LDFLAGS = -release 2.0.0

noinst_PROGRAMS = spload
spload_SOURCES = spload.f

pkgdata_DATA = nad27sp nad83sp

# distribute state plane coordinate parameter files
EXTRA_DIST = nad1927 nad1983

nad83sp: nad1983 spload
	./spload $(srcdir)/nad1983 nad83sp

nad27sp: nad1927 spload
	./spload $(srcdir)/nad1927 nad27sp
