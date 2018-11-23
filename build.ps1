& git clone --depth 1 git@github.com:AutoMapper/AutoMapper.git build/AutoMapper
Push-Location ./build/AutoMapper
& ./psake.ps1 ci
Pop-Location

& git clone git@github.com:cake-build/cake.git build/cake
Push-Location ./build/cake
& ./build.ps1
Pop-Location
