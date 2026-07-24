# Git Hands-On Lab 1

## Objective

This project demonstrates the basic Git workflow.

Topics Covered

- Git Installation
- Git Configuration
- Configure Default Editor
- Initialize Repository
- Create File
- Add File
- Commit Changes
- Push to GitHub
- Pull Repository

---

## Prerequisites

- Git Bash
- GitHub Account
- Notepad++

---

## Git Configuration

Configure username

```bash
git config --global user.name "Your Name"
```

Configure email

```bash
git config --global user.email "youremail@gmail.com"
```

Verify

```bash
git config --list
```

---

## Create Repository

```bash
mkdir GitDemo

cd GitDemo

git init
```

---

## Create File

```bash
echo Welcome to Git > welcome.txt
```

Verify

```bash
dir
```

Display file

```bash
cat welcome.txt
```

---

## Git Status

```bash
git status
```

---

## Add File

```bash
git add welcome.txt
```

---

## Commit

```bash
git commit -m "First Commit"
```

---

## Connect Remote Repository

```bash
git remote add origin https://github.com/USERNAME/GitDemo.git
```

---

## Pull Repository

```bash
git pull origin master
```

---

## Push Repository

```bash
git push origin master
```

---

## Expected Output

```
Initialized empty Git repository

On branch master

nothing to commit

working tree clean
```

---

## Repository Structure

```
Git-HOL-1

README.md

commands.txt

welcome.txt

Screenshots
```

---

## Screenshots

Add screenshots here.

- Git Version
- Git Config
- Git Status
- Commit
- Push
