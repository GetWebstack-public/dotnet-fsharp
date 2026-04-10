FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /app
COPY dotnet-fsharp.fsproj .
RUN dotnet restore
COPY . .
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080
ENV DOTNET_WATCH_RESTART_ON_RUDE_EDIT=true
CMD ["dotnet", "watch", "run", "--no-launch-profile", "--non-interactive"]
