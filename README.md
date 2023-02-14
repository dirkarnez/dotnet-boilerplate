dotnet-boilerplate
==================
### SDK (either one)
- [Download .NET 7.0 (Linux, macOS, and Windows)](https://dotnet.microsoft.com/en-us/download/dotnet/7.0)
  - [Download .NET 7.0 SDK (v7.0.102) - Windows x64 Binaries](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-7.0.102-windows-x64-binaries)
- [Download .NET 6.0 (Linux, macOS, and Windows)](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
  - [Download .NET 6.0 SDK (v6.0.405) - Windows x64 Binaries](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-6.0.405-windows-x64-binaries)
  
### Notes
- CMake is used for convenience with cross-platform environment variables sharing
- in *.csproj:
  - ```xml
    <PropertyGroup>
      <OutputType>Exe</OutputType>
      <TargetFramework>net6.0</TargetFramework>
      <PublishSingleFile>true</PublishSingleFile>
      <SelfContained>true</SelfContained>
      <RuntimeIdentifier>win-x64</RuntimeIdentifier>
      <PublishReadyToRun>true</PublishReadyToRun>
    </PropertyGroup>
    ```
### Reference
- [dotnet command - .NET CLI | Microsoft Learn](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet)
