commands.markdowngit config -configures the environment/computer
 --list 
 --global -sets the parameter globally for user
 --local  -sets the parameter per folder/repo

 user.name
 user.email

 git config --global core.editor "path-to-notepad" - ustawienie,zeby notepad byl domyslnym edytorem 	
git init - initialization of folder where the repo will be saved


States of the files
git status - explaines the status of the files

-untracked 	- just created files
-tracked 	- after addding the file to repo
-staged		- bus station for the files that are ready to be comitted / cached.index
-comitted	-put into history/ put into repository	

git add 	-send file to stage
git commit	-send file to history/repo
git log --online (shows history of commits)
git diff 	-compares working dir with stage
	--staged -compare stage with head
	HEAD - compares working dir with HEAD


Microsoft Windows [Version 10.0.19045.4894]
(c) Microsoft Corporation. Wszelkie prawa zastrzeżone.

C:\Users\TomaszBis>git --version
git version 2.46.2.windows.1

C:\Users\TomaszBis>cd \

C:\>cd temp

C:\temp>cd \

C:\>cd temp

C:\temp>mkdir git-training

C:\temp>cd git-training

C:\temp\git-training>git config --list
diff.astextplain.textconv=astextplain
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
http.sslbackend=openssl
http.sslcainfo=C:/Users/TomaszBis/AppData/Local/Programs/Git/mingw64/etc/ssl/certs/ca-bundle.crt
core.autocrlf=true
core.fscache=true
core.symlinks=false

core.editor=notepadpull.rebase=false
credential.helper=manager
credential.https://dev.azure.com.usehttppath=true
init.defaultbranch=master

C:\temp\git-training>git config user.name

C:\temp\git-training>git config --global user.name Aldarar

C:\temp\git-training>git config --global user.name TomaszB

C:\temp\git-training>git config --global user.email tomasz.bis@kyndryl.com

C:\temp\git-training>git init
Initialized empty Git repository in C:/temp/git-training/.git/

C:\temp\git-training>git status
fatal: detected dubious ownership in repository at 'C:/temp/git-training'
'C:/temp/git-training' is owned by:
        BUILTIN/Administrators (S-1-5-32-544)
but the current user is:
        AzureAD/TomaszBis (S-1-12-1-1895176197-1105729236-1958369670-3498245153)
To add an exception for this directory, call:

        git config --global --add safe.directory C:/temp/git-training

C:\temp\git-training>git config --global --add safe.directory C:/temp/git-training

C:\temp\git-training>git status
On branch master

No commits yet

nothing to commit (create/copy files and use "git add" to track)

C:\temp\git-training>notepad baby.txt

C:\temp\git-training>git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        baby.txt

nothing added to commit but untracked files present (use "git add" to track)

C:\temp\git-training>git add baby.txt

C:\temp\git-training>git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   baby.txt


C:\temp\git-training>git commit -m "the first version of baby.txt"
[master (root-commit) cce2ad3] the first version of baby.txt
 1 file changed, 3 insertions(+)
 create mode 100644 baby.txt

C:\temp\git-training>git status
On branch master
nothing to commit, working tree clean

C:\temp\git-training>git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   baby.txt

no changes added to commit (use "git add" and/or "git commit -a")

C:\temp\git-training>git add .

C:\temp\git-training>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   baby.txt


C:\temp\git-training>git commit -m "the 2nd version of aby.txt"
[master 879b366] the 2nd version of aby.txt
 1 file changed, 6 insertions(+), 2 deletions(-)

C:\temp\git-training>git log --oneline
879b366 (HEAD -> master) the 2nd version of aby.txt
cce2ad3 the first version of baby.txt

C:\temp\git-training>git add kidos.txt
fatal: pathspec 'kidos.txt' did not match any files

C:\temp\git-training>notepad kidos.txt

C:\temp\git-training>git add --all

C:\temp\git-training>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   kidos.txt


C:\temp\git-training>git commit -m "the first version of kidos"
[master faf4131] the first version of kidos
 1 file changed, 3 insertions(+)
 create mode 100644 kidos.txt

C:\temp\git-training>git status
On branch master
nothing to commit, working tree clean

C:\temp\git-training>git log --oneline
faf4131 (HEAD -> master) the first version of kidos
879b366 the 2nd version of aby.txt
cce2ad3 the first version of baby.txt

C:\temp\git-training>notepad teenagers.txt

C:\temp\git-training>git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        teenagers.txt

nothing added to commit but untracked files present (use "git add" to track)

C:\temp\git-training>git add .

C:\temp\git-training>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   teenagers.txt


C:\temp\git-training>notepad baby.txt

C:\temp\git-training>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   teenagers.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   baby.txt


C:\temp\git-training>notepad kidos.txt

C:\temp\git-training>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   teenagers.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   baby.txt
        modified:   kidos.txt


C:\temp\git-training>git diff kidos.txt
diff --git a/kidos.txt b/kidos.txt
index 197853c..4cc9766 100644
--- a/kidos.txt
+++ b/kidos.txt
@@ -1,3 +1,6 @@
-14"39
+14:39
 -shout
--learn
\ No newline at end of file
+-learn
+14:51
+-disturbing
+-cooking
\ No newline at end of file

C:\temp\git-training>git diff --staged kidos.txt

C:\temp\git-training>git diff HEAD kidos.txt
diff --git a/kidos.txt b/kidos.txt
index 197853c..4cc9766 100644
--- a/kidos.txt
+++ b/kidos.txt
@@ -1,3 +1,6 @@
-14"39
+14:39
 -shout
--learn
\ No newline at end of file
+-learn
+14:51
+-disturbing
+-cooking
\ No newline at end of file

C:\temp\git-training>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   teenagers.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   baby.txt
        modified:   kidos.txt


C:\temp\git-training>git commit -m "adding teenagers and modyfing baby and kidos files"
[master 16bb5fa] adding teenagers and modyfing baby and kidos files
 1 file changed, 3 insertions(+)
 create mode 100644 teenagers.txt

C:\temp\git-training>git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   baby.txt
        modified:   kidos.txt

no changes added to commit (use "git add" and/or "git commit -a")

C:\temp\git-training>git add .

C:\temp\git-training>git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   baby.txt
        modified:   kidos.txt


C:\temp\git-training>git commit -m "changing kidos and baby"
[master 64e22e7] changing kidos and baby
 2 files changed, 10 insertions(+), 3 deletions(-)

C:\temp\git-training>git status
On branch master
nothing to commit, working tree clean

C:\temp\git-training>git log --oneline
64e22e7 (HEAD -> master) changing kidos and baby
16bb5fa adding teenagers and modyfing baby and kidos files
faf4131 the first version of kidos
879b366 the 2nd version of aby.txt
cce2ad3 the first version of baby.txt

C:\temp\git-training>git log
commit 64e22e7a6a220abf29f0ce9a458c0b94bf6845f0 (HEAD -> master)
Author: TomaszB <tomasz.bis@kyndryl.com>
Date:   Tue Oct 1 15:04:05 2024 +0200

    changing kidos and baby

commit 16bb5fa03ffd6a8f43e00fbab1b807f53bb309f0
Author: TomaszB <tomasz.bis@kyndryl.com>
Date:   Tue Oct 1 15:03:11 2024 +0200

    adding teenagers and modyfing baby and kidos files

commit faf4131d20ce592e9aa68b6a7ba2aeea400a155d
Author: TomaszB <tomasz.bis@kyndryl.com>
Date:   Tue Oct 1 14:41:03 2024 +0200

    the first version of kidos

commit 879b366979972664e4251967264d641fbba4990e
Author: TomaszB <tomasz.bis@kyndryl.com>
Date:   Tue Oct 1 14:33:30 2024 +0200

    the 2nd version of aby.txt

commit cce2ad31a120c642038ca2027d21625c4e49679c
Author: TomaszB <tomasz.bis@kyndryl.com>
Date:   Tue Oct 1 14:24:46 2024 +0200

