This the official Flatpak version of [OpenHV](https://openhv.github.io/) the Open Source real-time strategy game hailing back from the beginnings of the genre.

## Build

Run this once
```
git submodule init
git submodule update
```

To build locally run
```
flatpak-builder build-dir/ --force-clean io.github.openhv.OpenHV.yaml
```

Test the installation using
```
flatpak-builder --user --install --force-clean build-dir io.github.openhv.OpenHV.yaml
```

## Run

```
flatpak run io.github.openhv.OpenHV
```

## Install
To install a stable release version from the repository use the following:
```
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.github.openhv.OpenHV
```

To install from the pre-release branch, use the following:
```
flatpak remote-add flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak install flathub-beta io.github.openhv.OpenHV
```
