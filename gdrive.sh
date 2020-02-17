if [ -z $1 ]
then
    echo "Usage: $0 [FILEID]. Example: $0 1QObMn1zwFHuHYnGP9rRXfIxIc57_o4LA"
else
    filename=$(wget -q "https://drive.google.com/file/d/$1/view" -O- | grep -oP "(?<=title': ').*?(?=',)" )
    wget --no-check-certificate -r "https://docs.google.com/uc?export=download&id=$1" -O "${filename}"
fi
