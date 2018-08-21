# Org.OpenAPITools - ASP.NET Core 2.0 Server

Jenkins API clients generated from Swagger / Open API specification

## Run

Linux/OS X:

```
sh build.sh
```

Windows:

```
build.bat
```

## Run in Docker

```
cd src/Org.OpenAPITools
docker build -t org.openapitools .
docker run -p 5000:5000 org.openapitools
```
