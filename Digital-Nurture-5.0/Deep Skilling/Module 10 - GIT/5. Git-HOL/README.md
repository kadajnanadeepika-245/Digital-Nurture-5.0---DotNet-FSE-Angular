# Git Hands-On Lab 5 – Clean Up and Push to Remote Repository

## Objective

Learn how to clean up the local Git repository, pull the latest changes from the remote repository, and push pending commits to GitHub.

---

## Prerequisites

- Git installed
- GitHub Account
- Existing Local Repository
- Remote Repository Connected

---

## Step 1: Check Repository Status

```bash
git status
```

Expected Output

```
On branch main

nothing to commit

working tree clean
```

---

## Step 2: View Branches

```bash
git branch
```

Expected Output

```
* main
```

---

## Step 3: Pull Latest Changes

```bash
git pull origin main
```

---

## Step 4: Create a File

```bash
echo Git HOL 5 Completed > update.txt
```

---

## Step 5: Add File

```bash
git add .
```

---

## Step 6: Commit

```bash
git commit -m "Added update file"
```

---

## Step 7: Push Repository

```bash
git push origin main
```

---

## Step 8: Verify on GitHub

Open your GitHub repository.

Verify that

- update.txt
- README.md
- commands.txt

are available.

---

## Expected Output

```
Everything up-to-date
```

---

## Learning Outcome

- Pull latest changes
- Push local commits
- Verify remote repository
- Understand synchronization between local and remote Git repositories
