if [[ ! -d ./Melon ]]; then
    git clone https://github.com/Tsunami014/Melon
else
    git -C ./Melon pull
fi

mkdir -p ./out
minify ./base.html -o ./out/index.html

cp Melon/main.js out/main.js
cp Melon/style.css out/style.css
