#!/bin/sh
wget https://raw.githubusercontent.com/flatpak/flatpak-builder-tools/master/dotnet/flatpak-dotnet-generator.py

git clone --depth 1 --branch 20250715 https://github.com/OpenHV/OpenHV.git
pushd OpenHV && make fetch-engine && popd
python3 flatpak-dotnet-generator.py openra-x64-nuget.json --destdir engine/nuget-sources --dotnet 6 --runtime linux-x64 --freedesktop 23.08 OpenHV/engine/OpenRA.sln
python3 flatpak-dotnet-generator.py openra-arm64-nuget.json --destdir engine/nuget-sources --dotnet 6 --runtime linux-arm64 --freedesktop 23.08 OpenHV/engine/OpenRA.sln
python3 flatpak-dotnet-generator.py openhv-nuget.json --dotnet 6 --freedesktop 23.08 OpenHV/OpenRA.Mods.HV/OpenRA.Mods.HV.csproj

rm flatpak-dotnet-generator.py
rm -rf OpenHV/
