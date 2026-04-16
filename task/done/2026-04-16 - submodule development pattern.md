Submodule development pattern
=============================

Meta-task.

Work out a preferred pattern for submodule dev.

Which branches to track, how to deploy etc.

For example:
* maintenance branch naming and tagging
* semver tagging - eg should I have separate tags for `v1`, `v1.0`, `v1.0.0`?
* git submodule set-branch - is there an equivalent to follow a tag? Or some other similar technique?


branch vs tag
-------------

They both point to commits, but presumably tags aren't meant to be moved all that much, unlike branch pointers?

So maybe instead of having separate tags for submodules to track, I should just leave different branch pointers and update those.
Probably how it's *meant* to be done.
Will try to confirm, then see what it means for the process.

If this works out it the way it's looking and tags are (mostly) fixed then they should be full semver: `v3.2.1`.

Tracking branch pointers could then get truncated names like `v3` or `v3.2`, and move as the version progresses.

I have need for something like this basically _now_ for html-common & turtle, so will try the idea out there.


Branch tracking working
-----------------------

Well I feel like I've just discovered the sky or something.

* Went ahead and merged the little maintenance branch for `html-common` and set a `v0.1` branch at the merge point.
* Set turtle to track the new submodule branch:	`branch = v0.1`

And it looks like it's working fine.

So this will be the pattern for the foreseeable future.
Want to go through a few more iterations to get the whole dev cycle in view now.



Wrapup
------

Pretty happy with this as a pattern, and have run through it few times now.

* Tags are full semver `v1.2.3` and fixed in place
* Use short-version branch pointers to indicate the current position of major & minor revisions, eg `v3` & `v3.2`
* Track submodule versions via the short branch pointers, eg `branch = v0.2`

Getting the branch pointers for submodule versioning in place is still a bit fiddly, will see if that can smoothed out at all.

I've put together a deployment process doc to help keep things in order:
[deployment process](<../wiki/deployment process.md>)

*Done.*


