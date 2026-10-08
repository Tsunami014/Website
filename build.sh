if [[ ! -d ./Melon ]]; then
    git clone https://github.com/Tsunami014/Melon
else
    git -C ./Melon pull
fi

mkdir -p ./out
minify ./base.html -o ./out/index.html
minify ./base.css -o ./out/style.css

if [[ ! -f ./out/fox.png ]]; then
    wget -O out/fox.png https://github.com/Tsunami014/Tsunami014/blob/main/TsunamiFox.png?raw=true
fi

cp Melon/main.js out/melon.js
cp Melon/style.css out/melonstyle.css
