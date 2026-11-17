package OpenSSL::safe::installdata;

use strict;
use warnings;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(
    @PREFIX
    @libdir
    @BINDIR @BINDIR_REL_PREFIX
    @LIBDIR @LIBDIR_REL_PREFIX
    @INCLUDEDIR @INCLUDEDIR_REL_PREFIX
    @APPLINKDIR @APPLINKDIR_REL_PREFIX
    @ENGINESDIR @ENGINESDIR_REL_LIBDIR
    @MODULESDIR @MODULESDIR_REL_LIBDIR
    @PKGCONFIGDIR @PKGCONFIGDIR_REL_LIBDIR
    @CMAKECONFIGDIR @CMAKECONFIGDIR_REL_LIBDIR
    $VERSION @LDLIBS
);

our @PREFIX                     = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl' );
our @libdir                     = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl' );
our @BINDIR                     = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl/apps' );
our @BINDIR_REL_PREFIX          = ( 'apps' );
our @LIBDIR                     = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl' );
our @LIBDIR_REL_PREFIX          = ( '' );
our @INCLUDEDIR                 = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl/include', '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl/include' );
our @INCLUDEDIR_REL_PREFIX      = ( 'include', './include' );
our @APPLINKDIR                 = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl/ms' );
our @APPLINKDIR_REL_PREFIX      = ( 'ms' );
our @ENGINESDIR                 = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl/engines' );
our @ENGINESDIR_REL_LIBDIR      = ( 'engines' );
our @MODULESDIR                 = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl/providers' );
our @MODULESDIR_REL_LIBDIR      = ( 'providers' );
our @PKGCONFIGDIR               = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl' );
our @PKGCONFIGDIR_REL_LIBDIR    = ( '.' );
our @CMAKECONFIGDIR             = ( '/home/runner/work/cocos2d-x-3rd-party-libs-src/cocos2d-x-3rd-party-libs-src/contrib/linux-x86_64/openssl' );
our @CMAKECONFIGDIR_REL_LIBDIR  = ( '.' );
our $VERSION                    = '3.4.0';
our @LDLIBS                     =
    # Unix and Windows use space separation, VMS uses comma separation
    $^O eq 'VMS'
    ? split(/ *, */, '-ldl -pthread ')
    : split(/ +/, '-ldl -pthread ');

1;
