#!/bin/bash
export THEME_NAME="live-split"
export BUILD_DIR="./build"
export URN_THEME_PATH="/usr/local/share/urn/themes/$THEME_NAME"

sass src/main.scss $BUILD_DIR/$THEME_NAME.css
rm $BUILD_DIR/$THEME_NAME.css.map
sudo mkdir -p $URN_THEME_PATH
sudo cp $BUILD_DIR/$THEME_NAME.css $URN_THEME_PATH/$THEME_NAME
