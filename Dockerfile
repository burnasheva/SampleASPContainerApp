FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS build-env
WORKDIR /app
COPY . ./

FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /app
ENTRYPOINT ["dotnet", "MvcMovie.dll"]
