#! /bin/bash
# manual: install fakeroot

mkdir allclones
cd allclones

git clone https://github.com/sjengfred/xbian-package-autosub
git clone https://github.com/sjengfred/xbian-package-nzbget
git clone https://github.com/sjengfred/xbian-package-couchpotato
git clone https://github.com/sjengfred/xbian-package-sickbeard

cd xbian-package-autosub
./gen.package.sh
cd ../xbian-package-nzbget
./gen.package.sh
cd ../xbian-package-couchpotato
./pre-gen.package.sh
./gen.package.sh
cd ../xbian-package-sickbeard
./pre-gen.package.sh
./gen.package.sh
cd ..

mv xbian-package-autosub/xbian-package-autosub*.deb .
mv xbian-package-nzbget/xbian-package-nzbget*.deb .
mv xbian-package-couchpotato/xbian-package-couchpotato*.deb .
mv xbian-package-sickbeard/xbian-package-sickbeard*.deb .

exit 0
