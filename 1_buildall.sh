#! /bin/bash
# manual: install fakeroot

mkdir allclones
cd allclones

git clone https://github.com/sjengfred/xbian-package-autosub
git clone https://github.com/sjengfred/xbian-package-hdmimonitor
git clone https://github.com/sjengfred/xbian-package-nzbget
git clone https://github.com/sjengfred/xbian-package-couchpotato
git clone https://github.com/sjengfred/xbian-package-sickbeard
git clone https://github.com/sjengfred/xbian-package-webcontrol

cd xbian-package-autosub
./gen.package.sh
cd ../xbian-package-hdmimonitor
./gen.package.sh
cd ../xbian-package-nzbget
./gen.package.sh
cd ../xbian-package-couchpotato
./pre-gen.package.sh
./gen.package.sh
cd ../xbian-package-sickbeard
./pre-gen.package.sh
./gen.package.sh
cd ../xbian-package-webcontrol
./gen.package.sh
cd ..

mv xbian-package-autosub/xbian-package-autosub*.deb .
mv xbian-package-hdmimonitor/xbian-package-hdmimonitor*.deb .
mv xbian-package-nzbget/xbian-package-nzbget*.deb .
mv xbian-package-couchpotato/xbian-package-couchpotato*.deb .
mv xbian-package-sickbeard/xbian-package-sickbeard*.deb .
mv xbian-package-webcontrol/xbian-package-webcontrol*.deb .

exit 0
