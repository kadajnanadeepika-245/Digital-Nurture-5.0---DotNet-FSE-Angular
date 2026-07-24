# Git Hands-On Lab 2 – Git Ignore

## Objective

Learn how to ignore unwanted files and folders using the `.gitignore` file.

## Prerequisites

- Git installed
- Local Git repository
- GitHub account

---

## Step 1: Create a Project

```bash
mkdir GitIgnoreDemo
cd GitIgnoreDemo
git init
```

---

## Step 2: Create Files

```bash
echo Welcome to Git > welcome.txt

echo Error Log > error.log

mkdir logs

echo Debug Log > logs/debug.log
```

---

## Step 3: Create .gitignore

```
*.log
logs/
```

---

## Step 4: Check Status

```bash
git status
```

Only the following files should appear:

```
.gitignore
welcome.txt
```

---

## Step 5: Add Files

```bash
git add .
```

---

## Step 6: Commit

```bash
git commit -m "Added gitignore example"
```

---

## Step 7: Push to GitHub

```bash
git remote add origin https://github.com/USERNAME/Git-HOL-2.git

git branch -M main

git push -u origin main
```

---

## Expected Output

```
On branch main

nothing to commit

working tree clean
```
