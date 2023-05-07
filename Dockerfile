# from https://github.com/kataras/server-benchmarks/blob/master/Dockerfile

FROM ubuntu:22.04
# Use ubuntu because of .NET Core, alpine version for latest .NET Core fails to install.

RUN apt-get update && \
    apt-get install -y curl wget

# Install .NET Core
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    apt-add-repository https://packages.microsoft.com/ubuntu/22.04/prod && \
    apt-get update && \
    apt-get install -y dotnet-sdk-6.0 && \
    dotnet --version
