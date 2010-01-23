--- arm_v6_bsd.mk.orig	2010-01-23 17:23:28.565326000 +0000
+++ arm_v6_bsd.mk	2010-01-23 17:19:54.349881000 +0000
@@ -0,0 +1,15 @@
+##
+## ARMHF V6 tested on 
+## - Raspberry board -
+##
+## To improve the build speed in small systems disable -pedantic
+## switch in CXXFLAGS
+##
+TargetCPU  :=arm_v6
+OS         :=bsd
+CXXFLAGS   := -O3 -g -fPIC -pedantic
+
+# Standard part
+
+include common.mk
+
