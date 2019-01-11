& git clone --depth 1 https://github.com/AutoMapper/AutoMapper.git build/AutoMapper
Push-Location ./build/AutoMapper
& ./psake.ps1 ci
Pop-Location

& git clone https://github.com/dotnet/BenchmarkDotNet.git build/BenchmarkDotNet
Push-Location ./build/BenchmarkDotNet
& ./build.ps1
Pop-Location

& git clone https://github.com/cake-build/cake.git build/cake
Push-Location ./build/cake
& ./build.ps1
Pop-Location
