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
	temp/experiment-html$ git remote add experiment-svg /path/to/temp/experiment-svg
	temp/experiment-html$ git fetch experiment-svg --tags
	temp/experiment-html$ git merge --allow-unrelated-histories experiment-svg/main
```


git filter-repo
---------------
I've always just done this on repo *copies* before - you get this:

	Aborting: Refusing to destructively overwrite repo history since
	this does not look like a fresh clone.
	(expected freshly packed repo)
	Please operate on a fresh clone instead.  If you want to proceed
	anyway, use --force.

And probably just forced it.
Might try a proper clone this time.

	Aborting: Refusing to destructively overwrite repo history since
	this does not look like a fresh clone.
	(expected freshly packed repo)
	Note: when cloning local repositories, you need to pass
		--no-local to git clone to avoid this issue.
	Please operate on a fresh clone instead.  If you want to proceed
	anyway, use --force.

It would be nice if they added the **Note** the first time.

Have cloned both repos into `temp/` using `--no-local`.


```
	temp/experiment-svg$ git filter-repo --to-subdirectory-filter svg
	Parsed 156 commits
	New history written in 0.07 seconds; now repacking/cleaning...
	Repacking your repo and cleaning out old unneeded objects
	HEAD is now at 486a296 New SVG favicon
	Enumerating objects: 1047, done.
	Counting objects: 100% (1047/1047), done.
	Delta compression using up to 16 threads
	Compressing objects: 100% (376/376), done.
	Writing objects: 100% (1047/1047), done.
	Total 1047 (delta 487), reused 1047 (delta 487), pack-reused 0
	Completely finished after 0.19 seconds.
```

Done.

temp/experiment-html
--------------------

	temp/experiment-html$ git remote add experiment-svg temp/experiment-svg
	temp/experiment-html$ git fetch experiment-svg --tags

	fatal: 'temp/experiment-svg' does not appear to be a git repository
	fatal: Could not read from remote repository.

	Please make sure you have the correct access rights
	and the repository exists.

Oops, has to be proper path, try again:

	temp/experiment-html$ git remote add experiment-svg /path/to/temp/experiment-svg
	temp/experiment-html$ git fetch experiment-svg --tags

	remote: Enumerating objects: 1047, done.
	remote: Counting objects: 100% (1047/1047), done.
	remote: Compressing objects: 100% (376/376), done.
	remote: Total 1047 (delta 487), reused 1047 (delta 487), pack-reused 0
	Receiving objects: 100% (1047/1047), 399.66 KiB | 19.98 MiB/s, done.
	Resolving deltas: 100% (487/487), done.
	From /path/to/temp/experiment-svg
	* [new branch]      main       -> experiment-svg/main

Better.

	git merge --allow-unrelated-histories experiment-svg/main


Looks like it's worked.

So far this is all on temp copies, so a the newly merged repo is still a bit different than my current working copies.
The code should all be the same, but git config in this new repo is different for things like remotes, so need to see what needs updating.


Changeover
----------

The remotes should be easy to update - but what else?

### Submodules

The submodules in both html and svg haven't been initialised yet, so they're both currently empty.

The submodule in svg can probably be safely removed at this point by just deleting its `.gitmodules` file and the empty folder.
Done.


Push to test remote
-------------------

I want to try pushing to an experiment-html remote next, but don't want to mess up any of the existing 'good' remotes in case I bork something.

I might try copying one of those to temp as well and pushing to it.

I've copied in an up-to-date bare repo folder that is one the remotes I push to:

	temp/experiment-html.git

Going to add it as remote and try pushing to it.

	git remote add temp /path/to/temp/experiment-html.git

For safety I've also removed the `origin` remote from the temp repo - it was pointing to the good remote it was cloned from.

So now I've got:

	temp/experiment-html$ git remote -v
	experiment-svg  /path/to/temp/experiment-svg/ (fetch)
	experiment-svg  /path/to/temp/experiment-svg/ (push)
	temp    /path/to/temp/experiment-html.git (fetch)
	temp    /path/to/temp/experiment-html.git (push)

And a push to the temp remote:

	temp/experiment-html$ git push temp
	Enumerating objects: 1052, done.
	Counting objects: 100% (1052/1052), done.
	Delta compression using up to 16 threads
	Compressing objects: 100% (381/381), done.
	Writing objects: 100% (1051/1051), 400.46 KiB | 16.69 MiB/s, done.
	Total 1051 (delta 490), reused 1045 (delta 486), pack-reused 0
	remote: Resolving deltas: 100% (490/490), completed with 1 local object.
	To /path/to/temp/experiment-html.git
	ffc16a5..2410529  main -> main


Looks okay....

Not sure what to try next - I could try getting the submodule going as well, but not really sure if worth it right now, things *seem* okay.

I think I should probably move on to setting it up and using it properly.
Worst case scenario I think I should be able to reset a checkout back to yeasterdays last commit:
	Bring in latest html-common and clean up a bit
	ffc16a522485e09a7a5bd280aa6e5418b1c7ced1

And force push that up to any remotes/github.


Go live with new repo
---------------------

Let's give it a crack.

Well I've renamed the old one, copied the merged one into my local `ldpercy` folder and updated it's remotes.
Have pushed up to github and seems okay so far,  will monitor.

Looking okay, cleaning things up in experiment-html, and am starting to archive/decommission experiment-svg.
