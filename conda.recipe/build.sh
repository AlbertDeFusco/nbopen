cp $SRC_DIR/nbopen.icns $PREFIX/etc/

python -m pip install .
python py2app_setup.py py2app  \
  --dist-dir $PREFIX \
  --iconfile $PREFIX/etc/nbopen.icns
#   --app $PREFIX/bin/nbopen

# INSTALL_PATH="$HOME/Applications/nbopen.app"

# if [ -e $INSTALL_PATH ]; then
#     rm -rf $INSTALL_PATH
# fi
# ln -s "$(pwd)/dist/nbopen.app" $INSTALL_PATH