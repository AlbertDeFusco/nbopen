platform=`uname`
if [[ "$platform" == "Darwin" ]]; then
	cp $SRC_DIR/nbopen.icns $PREFIX/
	
	python -m pip install .
	python py2app_setup.py py2app \
	  --dist-dir $PREFIX \
	  --iconfile $PREFIX/nbopen.icns
else
	python -m pip install .
fi
