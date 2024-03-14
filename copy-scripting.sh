find -maxdepth 1 -type f -iname readme.md -exec cat .github/scripts/header.txt {} > tempreadme.md \;
echo "Found Readme and copied"
cat footer.txt >> tempreadme.md
echo "copied footer"
find -maxdepth 1 -type f -iname readme.md -exec cp tempreadme.md {} \;
echo "move success"
