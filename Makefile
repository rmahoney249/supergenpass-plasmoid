PKG = plasmapkg
ZIP = zip
DIST = supergenpass.plasmoid

install : dist
	$(PKG) -i $(DIST)

uninstall :
	$(PKG) -r $(DIST)

dist : 
	$(ZIP) -r ./supergenpass-plasmoid.zip . && \
	mv ./supergenpass-plasmoid.zip ./$(DIST)

clean :
	rm $(DIST)
