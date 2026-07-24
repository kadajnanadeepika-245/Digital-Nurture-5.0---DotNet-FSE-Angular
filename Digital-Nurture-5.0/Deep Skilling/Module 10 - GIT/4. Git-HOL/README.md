# Git Hands-On Lab 4 – Merge Conflict Resolution

## Objective

Learn how to resolve merge conflicts when two branches modify the same file.

---

## Prerequisites

- Git installed
- Existing Git Repository
- Git Bash

---

## Step 1: Verify Repository

```bash
git status
```

---

## Step 2: Create Branch

```bash
git checkout -b GitWork
```

---

## Step 3: Create hello.xml

```bash
notepad hello.xml
```

Add

```xml
<message>Hello from GitWork Branch</message>
```

---

## Step 4: Commit

```bash
git add .

git commit -m "Added hello.xml in GitWork"
```

---

## Step 5: Switch to Master

```bash
git checkout master
```

---

## Step 6: Modify hello.xml

```xml
<message>Hello from Master Branch</message>
```

Commit

```bash
git add .

git commit -m "Updated hello.xml in master"
```

---

## Step 7: View Log

```bash
git log --oneline --graph --decorate --all
```

---

## Step 8: Compare Changes

```bash
git diff master GitWork
```

---

## Step 9: Merge

```bash
git merge GitWork
```

Git displays a merge conflict.

---

## Step 10: Resolve Conflict

Edit

```xml
<message>Hello from Master Branch</message>

<message>Hello from GitWork Branch</message>
```

---

## Step 11: Commit

```bash
git add .

git commit -m "Resolved Merge Conflict"
```

---

## Step 12: Update .gitignore

```
*.bak
```

Commit

```bash
git add .

git commit -m "Updated gitignore"
```

---

## Step 13: List Branches

```bash
git branch
```

---

## Step 14: Delete Branch

```bash
git branch -d GitWork
```

---

## Expected Output

```
Merge conflict resolved successfully.

Working tree clean.
```
