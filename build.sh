#!/bin/sh
mkdir -p public 
cp index.html public/index.html
cp -r assets/ public/assets

# Lê a chave de API do arquivo apikey.txt
api_key=$(cat apikey.txt)

# Substitui a expressão 'xyz' pela chave de API no arquivo public/index.html
sed -i '' "s/your api key here/$api_key/g" public/index.html # macos = string vazia 

echo "Substituição concluída."
