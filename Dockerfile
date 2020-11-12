FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS build-env
WORKDIR /app

COPY *.csproj ./

COPY . ./

FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "MvcMovie.dll"]
