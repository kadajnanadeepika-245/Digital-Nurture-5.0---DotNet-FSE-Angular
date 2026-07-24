# Module 9 – Application Debugging (Angular)

## Overview

This project demonstrates debugging techniques in Angular applications using:

- Chrome DevTools
- Visual Studio Code Debugger
- TypeScript Source Maps
- Breakpoints
- DOM Inspection
- Service Debugging

---

## Software Requirements

- Visual Studio Code
- Node.js
- Angular CLI
- Google Chrome

---

## Install Angular CLI

```bash
npm install -g @angular/cli
```

---

## Install Dependencies

```bash
npm install
```

---

## Run the Project

```bash
ng serve
```

Open

```
http://localhost:4200
```

---

## Project Structure

```
Module9-Angular-Debugging
│
├── .vscode
│   └── launch.json
│
├── src
│   ├── app
│   │   ├── components
│   │   │   └── product
│   │   ├── models
│   │   ├── services
│   │   ├── app.component.ts
│   │   ├── app.component.html
│   │   ├── app.component.css
│   │   └── app.module.ts
│   │
│   ├── main.ts
│   ├── index.html
│   └── styles.css
│
├── angular.json
├── package.json
├── tsconfig.json
├── .gitignore
└── README.md
```

---

# Chrome DevTools Debugging

## Step 1

Run

```bash
ng serve
```

---

## Step 2

Open

```
http://localhost:4200
```

---

## Step 3

Press

```
F12
```

---

## Step 4

Open **Elements**

Inspect

- Table
- Button
- Heading

---

## Step 5

Open **Sources**

Set breakpoint in

```
product.component.ts
```

Click

```
View
```

Observe

- product
- selectedProduct
- products

---

## Console

Open

```
Console
```

You should see

```
Products Loaded
```

---

# VS Code Debugging

Open project in VS Code.

Press

```
F5
```

Launch Chrome.

Set breakpoints in

```
app.component.ts
product.component.ts
product.service.ts
```

Watch variables

```
title
products
selectedProduct
```

---

# Expected Output

```
Angular Application Debugging

Product List

ID     Name        Price

1      Laptop      55000

2      Mobile      25000

3      Keyboard    1500

4      Mouse       800
```

Selecting **View** displays:

```
Selected Product

ID : 1

Name : Laptop

Price : 55000
```

---

# Learning Outcomes

- Debug Angular applications using Chrome DevTools
- Inspect DOM elements
- Debug TypeScript using source maps
- Configure VS Code debugger
- Use breakpoints
- Inspect variables
- Debug Angular services
- Improve application performance through debugging

---

# GitHub Repository

Upload the following files:

```
Module9-Angular-Debugging
│
├── .vscode
├── src
├── angular.json
├── package.json
├── tsconfig.json
├── README.md
└── .gitignore
```

---

# Author

Name : Kada Jnana Deepika Lakshmi Sowmya

Course : Full Stack Engineering

Module : Module 9 – Application Debugging

Technology : Angular
