# Git Hands-On Lab 3 – Branching and Merging

## Objective

Learn how to create branches, switch branches, merge branches, and delete branches in Git.

---

## Prerequisites

- Git installed
- Existing Git Repository
- GitHub Account

---

## Step 1: Create Branch

```bash
git branch GitNewBranch
```

---

## Step 2: View Branches

```bash
git branch
```

---

## Step 3: Switch Branch

```bash
git checkout GitNewBranch
```

---

## Step 4: Create File

```bash
echo Branch File > branchfile.txt
```

---

## Step 5: Add File

```bash
git add .
```

---

## Step 6: Commit

```bash
git commit -m "Added branch file"
```

---

## Step 7: Check Status

```bash
git status
```

---

## Step 8: Switch to Master

```bash
git checkout master
```

---

## Step 9: Compare Branches

```bash
git diff master GitNewBranch
```

---

## Step 10: Merge Branch

```bash
git merge GitNewBranch
```

---

## Step 11: View Log

```bash
git log --oneline --graph --decorate
```

---

## Step 12: Delete Branch

```bash
git branch -d GitNewBranch
```

---

## Expected Output

```
Branch merged successfully.

Working tree clean.
```
