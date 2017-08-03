
# Welcome to my GIT REPORT
Name: Do Hong Quan
@(Github)[QuanDo|Intership|knowledge]

**Git** is a *Distributed Version Control System*– DVCS which is one of the most popular systems manages Distributed Version. This is a system helps computer can save many different versions of 1 source code which is cloned from the repository. Each change on the source code of your computer can commit and upload to the server where have the repository. If another computer is authorized, they will clone source code of that repository and even clone a combine of new changes from other computers. 
 
**Github** is a repository server service. Each user can create their specific repository. Besides Github, we also have many servers which have the same working way such as Bitbucket, SVN,...


----------

[TOC]

## Introduction

> In the head of my report, I write about the definition of Git and Github more clearly.
> Summary,
> **Git** is a Distributed Version Control System.
>  **Github** is a repository server service.


-- Git is proper to Linux and Mac. 
-- We need an account in Github.com.
-- As showed in this manual, you can use the terminal to work with **GIT**. 

## Theories

- *What is **repository**?*
-- A digital directory or storage space where you can access your project, its files, and all the versions of its files that Git saves.
-- There are two kind of repository. That is local repository and remote repository. The local repo contains your source code in a folder of your computer. The remote repo is on Github server which contains all your projects.

- *What is **branch**?*
--  We “branch off” of the main project with their own versions full of changes they themselves have made. This action create a branch which you are going to work with. 

- *What is **commit**?* 
-- This is the command that gives Git its power. When you commit, you are taking a "**snapshot**" of your repository at that point in time, giving you a checkpoint to which you can reevaluate or restore your project to any previous state.



## Setting Up
> At the first time,  we have to set up the workplace in order to use Git and Github.
> **Step 1**:  Creating the local repository with command *mkdir*
> ```
> $mkdir ~/myProject
> 
> ```
>  **Step 2**:  Access to the folder which we have created with navigational command *cd*
> ```
> $cd ~/myProject
> ```
> **Step 3**:   Making your computer recognize this directory as a local Git repository. 
> ```
> $git init
> ```
> **Step 4**:   Creating an repository in the Github.com. After we have to connect the local repository with the online one. The below command will help this.
> ```
> $git remote add origin https://github.com/username/myproject.git
> ```


## Understanding Basic of Git


```sequence
Online Repo->Local Repo: git clone (get code)
Local Repo->Online Repo: git push
Online Repo->Local Repo: git pull (get files)
```
## Popular commands of Git
- **git add** 
-- Add file contents to the index. This command helps us create a new files. It updates the index using the current content found in the working tree, to prepare the content staged for the next commit.
>**The different of `git add . ` and `git add -a`**
>The important point about `git add .` is that it looks at the working tree and adds all those paths to the staged changes if they are either changed or are new and not ignored, it does not stage any 'rm' actions.
>`git add -u` looks at all the already tracked files and stages the changes to those files if they are different or if they have been removed. It does not add any new files, it only stages changes to already tracked files.
`git add -A` is a handy shortcut for doing both of those.

- **git commit**
-- Record changes to the repository

- **git reset**
-- `git reset` seem likes the undo step. If you make a commit and then find a mistake immediately after that, you can recover from it with git reset. 
- **git push**
-- Update remote refs along with associated objects. `git push`  helps us push all files in particular branch of local repository to the server.
- **git pull **
-- Fetch from and integrate with another repository or a local branch.  
- **git clone**
-- Clone a repository into a new directory
- **git checkout**
-- Switch branches or restore working tree files
>**Create new branch and switch to it**
>`git checkout -b branchname`
- **git status**
-- Show the working tree status
- **git log**
-- Show commit logs
- **git merge**
-- Join two or more development histories together
- **git rebase**
-- Reapply commits on top of another base tip
- **git stash**
-- Stash the changes in a dirty working directory away
- **git reset --soft/--hard**
-- Reset current HEAD to the specified state
- **git tag**
-- Create, list, delete or verify a tag object signed with GPG
> **Note:** You can find more information about commands [here][1]




  [1]: https://git-scm.com/docs


