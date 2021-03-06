FROM mcr.microsoft.com/dotnet/core/sdk:3.0
COPY . /softwaretesting-final-project
WORKDIR /softwaretesting-final-project/app
RUN dotnet restore
EXPOSE 5000/tcp
ENTRYPOINT [ "dotnet", "run", "--no-restore", "--urls", "http://0.0.0.0:5000"]
