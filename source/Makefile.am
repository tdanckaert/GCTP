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

# distribute SPCS parameter files & test input files
EXTRA_DIST = nad1927 nad1983 ../test/proj

# clean test output files & SPCS parameter files
MOSTLYCLEANFILES = temp* cmp* testfile* nad27sp nad83sp

nad83sp: nad1983 spload
	./spload $(srcdir)/nad1983 nad83sp

nad27sp: nad1927 spload
	./spload $(srcdir)/nad1927 nad27sp

check_PROGRAMS = testproj
testproj_SOURCES = ../test/test_proj/testproj.c
testproj_LDADD = libgctp.la

dist_check_SCRIPTS = ../test/test_proj/alaska_test			\
	../test/test_proj/eqrect_test ../test/test_proj/good_test	\
	../test/test_proj/hom_test ../test/test_proj/lamcc_test		\
	../test/test_proj/moll_test ../test/test_proj/polyc_test	\
	../test/test_proj/snsoid_test ../test/test_proj/stereo_test	\
	../test/test_proj/vgrint_test ../test/test_proj/albers_test	\
	../test/test_proj/equidc_test ../test/test_proj/gvnsp_test	\
	../test/test_proj/imoll_test ../test/test_proj/mercat_test	\
	../test/test_proj/obleqa_test ../test/test_proj/ps_test		\
	../test/test_proj/som_test ../test/test_proj/tm_test		\
	../test/test_proj/wagiv_test ../test/test_proj/azmeqd_test	\
	../test/test_proj/gnomon_test ../test/test_proj/hammer_test	\
	../test/test_proj/lamaz_test ../test/test_proj/miller_test	\
	../test/test_proj/ortho_test ../test/test_proj/robin_test	\
	../test/test_proj/spcs_test ../test/test_proj/utm_test		\
	../test/test_proj/wagvii_test

AM_TESTS_ENVIRONMENT = CMPGCTP=../../../source; export CMPGCTP; \
	DATADIR=$(srcdir)/../test/proj; export DATADIR;
TESTS = $(dist_check_SCRIPTS)
