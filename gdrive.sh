filename=$(wget -q "https://drive.google.com/file/d/$1/view" -O- | grep -oP "(?<=title': ').*?(?=',)" )

wget --no-check-certificate -r "https://docs.google.com/uc?export=download&id=$1" -O "${filename}"