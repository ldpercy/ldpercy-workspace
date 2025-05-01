Git
===


Default branch name
-------------------

> $ git config --global init.defaultBranch main

Equivalent in `~./gitconfig`:

```
[init]
	defaultBranch = main
```


List remotes
------------

	git remote --verbose

Modifying commits
-----------------

### Amend the last commit

	git amend -m "Updated commit message"

If the commit was already pushed, do a force push as well:

	git push --force


### Undo a commit & push

https://stackoverflow.com/questions/448919/how-can-i-remove-a-commit-on-github



Storing Binaries
----------------

https://www.devgem.io/posts/adding-and-managing-pdfs-in-git-repositories-a-practical-guide

In `.gitattributes`:
```
*.pdf binary
```
https://thelinuxcode.com/gitattribute-file-in-git/




Git patch and apply
-------------------

How to Create and Apply Git Patches - CraftQuest
https://www.youtube.com/watch?v=QtXj9tt-RUE

	git format-patch

https://git-scm.com/docs/git-format-patch
https://git-scm.com/docs/git-am				git apply mail



Repository Filtering with git-filter-repo
-----------------------------------------

https://github.com/newren/git-filter-repo/

https://htmlpreview.github.io/?https://github.com/newren/git-filter-repo/blob/docs/html/git-filter-repo.html


https://coderwall.com/p/0c-ayq/howto-split-a-git-repository-into-two
https://www.endpoint.com/blog/2017/08/14/how-to-split-git-repositories-into-two


Its now in the Ubuntu repos so can be installed directly with apt/muon etc.

Old example using python:

	python3 ~/.local/lib/python3.8/site-packages/git_filter_repo.py --force --path-rename project/silver-data/:


See also:
	workspace-silver/task/doing/2021/split up silver repo.text



To only keep a specific directory:

	git-filter-repo --force --path directoryName

To exclude a specific directory:

	git-filter-repo --force --invert-paths --path directoryName



Pre-commit hooks
----------------
https://stackoverflow.com/collectives/articles/71270196/how-to-use-pre-commit-to-automatically-correct-commits-and-merge-requests-with-g

https://youtu.be/Md44rcw13k4?t=479



GitHub
------
https://trufflesecurity.com/blog/anyone-can-access-deleted-and-private-repo-data-github

> As long as one fork exists, any commit to that repository network (ie: commits on the “upstream” repo or “downstream” forks) will exist forever.



Linus on merge-commits:
	https://linux.slashdot.org/story/21/09/11/2316216/torvalds-merges-support-for-microsofts-ntfs-file-system-complains-github-creates-absolutely-useless-garbage-merges



Videos
------

* ~145 commands in Git
* 28 hooks in Git, 11 common/ useful



So You Think You Know Git - FOSDEM 2024
https://www.youtube.com/watch?v=aolI_Rz0ZqY

	includeif: different paths for different git configs
	rerere: reuse merge conflict resolution
	force with lease - should be default
	git maintenance
	submodules suck

So You Think You Know Git Part 2 - DevWorld 2024
https://www.youtube.com/watch?v=Md44rcw13k4

	checkout is overloaded, hence switch & restore
	.gitattributes - preprocess files before diff, eg image exit
		smudge & clean
		this is how LFS works
	--fixup
	scalar clone for v.large repos
	worktrees for working on multiple branches simultaneously


UI Tools
--------

https://github.com/gitui-org/gitui

