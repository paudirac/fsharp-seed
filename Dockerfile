FROM fsharp

run apt-get update
run apt-get install -y make

run mkdir /tools
run mkdir /tools/.paket
run wget https://github.com/fsprojects/Paket/releases/download/5.5.3/paket.bootstrapper.exe -O /tools/.paket/paket.bootstraper.exe
run mono /tools/.paket/paket.bootstraper.exe
