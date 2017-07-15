FROM fsharp

run apt-get update
run apt-get install -y make
run apt-get install -y unzip

run mkdir -p /tools/forge
run wget https://github.com/fsharp-editing/Forge/releases/download/1.4.2/forge.zip -O /tools/forge/forge.zip
run cd /tools/forge && unzip forge.zip
run chmod +x /tools/forge/forge.sh
env PATH="/tools/forge:${PATH}"
