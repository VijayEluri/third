LINUX = dist-linux
WIN32 = dist-win32
DROID = android
NAME = third
SHARE = images/app.svg
DOCS = README LICENSE
FILES = *.py Makefile.dist $(DOCS)
WIN32FILES = *.py $(DOCS) images/*.png images/*.ico *.iss *.bat *.exe
DROIDFILES = images/*.png android/res/layout/* android/res/values/* \
			 android/*.xml android/*.properties \
			 android/src/au/id/swords/third/*.java
CLEAN = $(LINUX) $(WIN32)
KEY = ~/.keys/android-dev.keystore

all: linux win32 android

linux: third.tar.bz2

win32: third-win32-source.zip

android: android/bin/third.apk

android-debug: android/bin/third-debug.apk

dir = images
include images/Rules.mk

third.tar.bz2: $(FILES) Makefile
	rm -rf $(LINUX)
	mkdir -p $(LINUX)/$(NAME)
	install third.py $(LINUX)/$(NAME)
	install Makefile.dist $(LINUX)/$(NAME)/Makefile
	mkdir -p $(LINUX)/$(NAME)/share
	install $(SHARE) $(LINUX)/$(NAME)/share
	mkdir -p $(LINUX)/$(NAME)/doc
	install $(DOCS) $(LINUX)/$(NAME)/doc
	tar -cjvpf $@ -C $(LINUX) $(NAME)/

third-win32-source.zip: $(WIN32FILES) Makefile
	rm -rf $(WIN32)
	mkdir -p $(WIN32)/$(NAME)
	install $(WIN32FILES) $(WIN32)/$(NAME)
	(cd $(WIN32) && zip -r ../$@ $(NAME))

android/bin/third-unsigned.apk: $(DROIDFILES) Makefile
	rm -rf $(DROID)/bin/*
	mkdir -p $(DROID)/res/drawable
	install images/*.png $(DROID)/res/drawable
	(cd android && ant release)

android/bin/third-unaligned.apk: android/bin/third-unsigned.apk
	cp $< $@
	jarsigner -verbose -keystore $(KEY) $@ android

android/bin/third.apk: android/bin/third-unaligned.apk
	zipalign -f -v 4 $< $@

android/bin/third-debug.apk: $(DROIDFILES) Makefile
	rm -rf $(DROID)/bin/*
	mkdir -p $(DROID)/res/drawable
	install images/*.png $(DROID)/res/drawable
	(cd android && ant debug)
	adb start-server && adb install -r $@

clean:
	rm -rf $(CLEAN)
