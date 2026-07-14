# JWT Authentication Web API - Postman Testing Guide

## Base URL

```
https://localhost:7001
```

(Replace the port number with your application's port.)

---

# 1. Generate JWT Token

## Request

Method

```
GET
```

URL

```
https://localhost:7001/api/Auth
```

Headers

```
No headers required
```

Response

```
200 OK
```

Example Response

```
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9......
```

Copy the generated token.

---

# 2. Get Employee List (Authorized)

Method

```
GET
```

URL

```
https://localhost:7001/api/Employee
```

Headers

| Key | Value |
|-----|-------|
| Authorization | Bearer YOUR_TOKEN |

Example

```
Authorization : Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

Response

```
200 OK
```

Example Output

```json
[
  {
    "id": 1,
    "name": "John",
    "salary": 50000,
    "permanent": true,
    "department": {
      "id": 101,
      "name": "IT"
    },
    "skills": [
      {
        "id": 1,
        "name": "C#"
      }
    ],
    "dateOfBirth": "1999-01-01T00:00:00"
  }
]
```

---

# 3. Without Authorization Token

Method

```
GET
```

URL

```
https://localhost:7001/api/Employee
```

Headers

```
None
```

Response

```
401 Unauthorized
```

---

# 4. Invalid JWT Token

Method

```
GET
```

URL

```
https://localhost:7001/api/Employee
```

Headers

```
Authorization : Bearer abcxyz123
```

Response

```
401 Unauthorized
```

---

# 5. Expired JWT Token

Generate a token.

Wait until the token expires (for example, after 2 minutes if configured).

Again call

```
GET
https://localhost:7001/api/Employee
```

Headers

```
Authorization : Bearer <Expired Token>
```

Response

```
401 Unauthorized
```

---

# 6. Role-Based Authorization

Controller

```csharp
[Authorize(Roles = "POC")]
```

Generated Token Role

```
Admin
```

Response

```
401 Unauthorized
```

Now change the controller to

```csharp
[Authorize(Roles = "Admin,POC")]
```

Generate a new token and call the API.

Response

```
200 OK
```

---

# Expected HTTP Status Codes

| Status Code | Meaning |
|-------------|---------|
| 200 | OK |
| 401 | Unauthorized |
| 400 | Bad Request |
| 500 | Internal Server Error |

---

# Postman Collection Structure

```
JWT Authentication API

│
├── Generate JWT Token (GET)
│
└── Employee API
      │
      ├── GET Employees
      ├── POST Employee
      ├── PUT Employee
      └── DELETE Employee
```

---

# Notes

- Always generate a new JWT token before testing protected APIs.
- Include the token in the Authorization header.
- The header format must be:

```
Authorization : Bearer <JWT Token>
```

- Tokens expire after the configured time.
- Invalid or expired tokens return **401 Unauthorized**.
