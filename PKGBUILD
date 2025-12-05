# Maintainer: Remenod remenod@gmail.com
pkgname=path-utils
pkgver=1.0.0
pkgrel=1
pkgdesc="useful .bashrc PATH generation tools"
arch=('x86_64')
url="https://github.com/Remenod/path-utils.git"
license=('MIT')
depends=()

scripts=("pathadd" "pathdel" "pathls")
source=("${scripts[@]/#/scripts/}")
sha256sums=('SKIP' 'SKIP' 'SKIP')

package() {
    for script in "${scripts[@]}"; do
        install -Dm755 "$srcdir/scripts/$script" "$pkgdir/usr/bin/$script"
    done
}
