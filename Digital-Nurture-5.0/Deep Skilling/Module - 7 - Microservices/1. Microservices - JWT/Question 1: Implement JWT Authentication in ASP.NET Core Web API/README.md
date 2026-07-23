# JWT Authentication Web API

## Objective

Implement JWT Authentication in ASP.NET Core Web API.

## NuGet Package

Install:

```powershell
Install-Package Microsoft.AspNetCore.Authentication.JwtBearer
```

## Login API

POST

```
https://localhost:7001/api/Auth/login
```

Request

```json
{
    "username":"admin",
    "password":"admin123"
}
```

Response

```json
{
    "token":"JWT_TOKEN"
}
```

## Secure API

GET

```
https://localhost:7001/api/Weather
```

Header

```
Authorization : Bearer JWT_TOKEN
```

## Expected Status Codes

| Status | Description |
|---------|-------------|
|200|Success|
|401|Unauthorized|

## Output

- Login generates JWT Token.
- Authorized users can access Weather API.
- Unauthorized users receive HTTP 401.
