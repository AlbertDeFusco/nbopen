platform=`uname`

if [[ "$platform" == "Darwin" ]]; then
	codesign -fs - --preserve-metadata=entitlements $PREFIX/nbopen.app
else
	$PREFIX/bin/python -m nbopen.install_xdg
fi
