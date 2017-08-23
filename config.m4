dnl $Id$
dnl config.m4 for extension php_api

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(php_api, for php_api support,
dnl Make sure that the comment is aligned:
dnl [  --with-php_api             Include php_api support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(php_api, whether to enable php_api support,
dnl Make sure that the comment is aligned:
dnl [  --enable-php_api           Enable php_api support])

if test "$PHP_PHP_API" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-php_api -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/php_api.h"  # you most likely want to change this
  dnl if test -r $PHP_PHP_API/$SEARCH_FOR; then # path given as parameter
  dnl   PHP_API_DIR=$PHP_PHP_API
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for php_api files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PHP_API_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PHP_API_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the php_api distribution])
  dnl fi

  dnl # --with-php_api -> add include path
  dnl PHP_ADD_INCLUDE($PHP_API_DIR/include)

  dnl # --with-php_api -> check for lib and symbol presence
  dnl LIBNAME=php_api # you may want to change this
  dnl LIBSYMBOL=php_api # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PHP_API_DIR/$PHP_LIBDIR, PHP_API_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PHP_APILIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong php_api lib version or lib not found])
  dnl ],[
  dnl   -L$PHP_API_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PHP_API_SHARED_LIBADD)

  PHP_NEW_EXTENSION(php_api, php_api.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
