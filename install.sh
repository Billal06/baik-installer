#!/usr/bin/bash
echo "  === Baik Language ==="
echo "       Termux only"
sleep 1
echo "Installing packages"
apt install wget -y
apt install clang -y
apt install make -y
if [[ -f "baik.zip" ]]; then
	echo "File is exists"
else
	echo "Downloading source"
	wget https://github.com/baik-lang/micro-baik-lang/archive/8.5.zip -O baik.zip
fi
echo "Unzip files"
if [[ -f "$PREFIX/bin/unzip" ]]; then
	unzip baik.zip
else
	echo "Failed to unzip"
	exit
fi
cd micro-baik-lang-8.5
make
echo "Done, run now? (Y/n): "
read pilih;
if [[ $pilih == "y" || $pilih == "Y" ]]; then
	baik
fi
