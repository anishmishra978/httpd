dnl modules enabled in this directory by default

dnl AC_DEFUN(modulename, modulestructname, defaultonoroff, configmacros)
dnl XXX - Need to allow --enable-module to fail if optional config fails

AC_DEFUN(APACHE_CHECK_CACHE_MODULE, [
  APACHE_MODULE([$1],[$2],,[$3],[$4],[$5])
])

APACHE_MODPATH_INIT(cache)

APACHE_CHECK_CACHE_MODULE(file_cache, File cache, , no)

LTFLAGS="$LTFLAGS -export-dynamic"
APACHE_MODPATH_FINISH
    
APACHE_SUBST(STANDARD_LIBS)
