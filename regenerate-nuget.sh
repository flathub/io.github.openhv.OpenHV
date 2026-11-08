#!/bin/sh
wget https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/master/dotnet/flatpak-dotnet-generator.py

git clone --depth 1 --branch 20261108 https://github.com/OpenHV/OpenHV.git
pushd OpenHV && make fetch-engine && popd
python3 flatpak-dotnet-generator.py openra-x64-nuget.json --destdir engine/nuget-sources --dotnet 10 --runtime linux-x64 --freedesktop 26.08 OpenHV/engine/OpenRA.slnx
python3 flatpak-dotnet-generator.py openra-arm64-nuget.json --destdir engine/nuget-sources --dotnet 10 --runtime linux-arm64 --freedesktop 26.08 OpenHV/engine/OpenRA.slnx
python3 flatpak-dotnet-generator.py openhv-nuget.json --dotnet 10 --freedesktop 26.08 OpenHV/OpenRA.Mods.HV/OpenRA.Mods.HV.csproj

rm flatpak-dotnet-generator.py
rm -rf OpenHV/
