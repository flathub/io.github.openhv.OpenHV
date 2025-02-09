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

## Update

To update the referenced NuGet dependencies run
```
./regenerate-nuget.sh
```
