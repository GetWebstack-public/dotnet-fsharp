# dotnet-fsharp

A minimal web application built with F# and ASP.NET Core on .NET 8.

## Overview

This project demonstrates building an ASP.NET Core web server using F#. It serves a simple "Hello World" response at the root endpoint using the Minimal API style.

## Requirements

- [.NET 8 SDK](https://dotnet.microsoft.com/download/dotnet/8.0)

## Getting Started

```bash
dotnet run
```

The server will start and listen on the default port. Visit `http://localhost:8080` to see the response.

## Endpoints

| Method | Path | Description           |
|--------|------|-----------------------|
| GET    | `/`  | Returns "Hello World" |

## Dependencies

- `Microsoft.AspNetCore.OpenApi` 8.0.0
