--- Makefile.PL.orig	1998-07-10 08:06:41 UTC
+++ Makefile.PL
@@ -39,7 +39,8 @@ all:
 	\@if [ ! -f mod/Makefile ]; then \\
 	    echo "cd mod && $perl Makefile.PL $args"; \\
 	    cd mod && $perl Makefile.PL $args; \\
-		    sed -e '/^\trm -f */d' <Makefile >Makefile.n && mv Makefile.n Makefile; \\
+		    sed -e '/^\trm -f */d' <Makefile >Makefile.n; \\
+		    perl -pe 's/ doc_(perl|site|\\\$\$\\(INSTALLDIRS\\))_install\$\$//' <Makefile.n >Makefile; \\
 		    sed -e 's,^CC = .*,CC = $cc,' <Parse/Makefile >Parse/Makefile.n && mv Parse/Makefile.n Parse/Makefile; \\
 	fi
 	cd mod && \$(MAKE) \$(MFLAGS)
