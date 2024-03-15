#!/bin/bash
find -maxdepth 1 -type f -iname readme.md -exec cat docs-bot/markdown/header.txt {} > tempreadme.md \;
echo "Found Readme and copied"
cat docs-bot/markdown/footer.txt >> tempreadme.md
echo "copied footer"
sed -i "s/IMAGE_NAME_LINK/$1/g" tempreadme.md
sed -i "s/PROJECT_CATEGORY_LINK/$2/g" tempreadme.md
echo "insert variable names $IMAGE_NAME and $PROJECT_CATEGORY"
find -maxdepth 1 -type f -iname readme.md -exec cp tempreadme.md {} \;
echo "move success"
echo "readback $IMAGE_NAME and $PROJECT_CATEGORY"
