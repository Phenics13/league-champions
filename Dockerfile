# Use the official ASP.NET Core runtime image as a base
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 8080

# Copy the published output of the ASP.NET Core application into the container
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["League.csproj", "."]
RUN dotnet restore "./League.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "League.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "League.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
COPY ./Database/LeagueDB.db ./Database/
ENTRYPOINT ["dotnet", "League.dll"]
