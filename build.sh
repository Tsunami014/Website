if [[ ! -d ./Melon ]]; then
    git clone https://github.com/Tsunami014/Melon
else
    git -C ./Melon pull
fi

if [ -d "./out" ]; then rm -rf ./out; fi
mkdir ./out
minify ./base.html -o ./out/index.html
minify ./base.css -o ./out/style.css
cp ./fox.png out/fox.png

cp Melon/main.js out/melon.js
cp Melon/style.css out/melonstyle.css
