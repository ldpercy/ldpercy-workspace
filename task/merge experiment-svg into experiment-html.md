Merge experiment-svg into experiment-html
=========================================

The svg repo has ended up pretty similar to the html one, using copied code in some places, and now both using html-common.
Might as well jam them together to unify things.




Here's the technique I used for merging my computer workspace into my personal workspace:

```bash
	temp/workspace-computer$ git filter-repo --to-subdirectory-filter workspace-computer			# rewrite the repo to all be under a single `workspace-computer` subdirectory
	temp/workspace-personal$ git remote add workspace-computer temp/workspace-computer
	temp/workspace-personal$ git fetch workspace-computer --tags
	temp/workspace-personal$ git merge --allow-unrelated-histories workspace-computer/main
```


Using that I ended up with two long branches being merged into one, which I came around to seeing the value of, so will use again here.

Dunno what I'll do on github yet - will figure that out - prob just archive the old svg repo in case I need it for something in future.

Also the submodule situation....
Prob don't want to remove it from svg before archiving so it keeps its state, but that will probably mean I have two copies of html-common???
About to find out...



Setup for merge
---------------
I've run a few quick backups for starters.

Script:
```bash
	temp/experiment-svg$ git filter-repo --to-subdirectory-filter svg			# rewrite the svg repo to all be under a single `svg` subdirectory
	temp/experiment-html$ git remote add experiment-svg temp/experiment-svg
	temp/experiment-html$ git fetch experiment-svg --tags
	temp/experiment-html$ git merge --allow-unrelated-histories experiment-svg/main
```
