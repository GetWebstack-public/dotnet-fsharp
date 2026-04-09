FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY dotnet-fsharp.fsproj .
RUN dotnet restore
COPY . .
RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
RUN groupadd --system app && useradd --system --gid app app
COPY --from=build /app/publish .
USER app
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080
CMD ["dotnet", "dotnet-fsharp.dll"]
