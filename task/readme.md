Task
====



Todo
----

* Next html-common release
* Start looking into PWAs; evaluate applicability for the apps like medit
* Still looking for a nice, graphical way to compare branches in VSCode (/other) - trialling Branch Compare by CodexDebayan
* xml language server for kate, eg lemminx
* Keep working through [style flow](<🎨🢡🖽 - style flow.md>)
* btrfs subvolume moving - sometimes doesn't work???
* btrfs/btrbk/sata - transfer throttle during send/receive - where are the bottlenecks coming from?
* [mvc pattern](<👠🎑🎛 - mvc pattern.md>)
* Licensing...
* Long running task branches are a problem - think about ways to merge but isolate code, eg with feature flags
* I seem to be losing some task update notes in the merge process - I can see it in the latest html-common merge. Not sure if it's from a one step 'done' that overwrites something? It's v.probably user-error, will watch.
* Convert polygon code use planar-space and move it to html-common
* Rationalise the ldpercy-portfolio project
* General wiki cleanup - It's a bit of a mixed mess right now, some actual wiki style content, some docs that are just link dumps


### Chromium colour scheme bug
There is a colour scheme glitch in chromium when switching from light to dark and back again - some of the ui elements stay light. I was only seeing it in screensaver, but also now in turtle. I suspect it's to do with the transition; some property & the way I've coded it. Need to find.

It was this transition that I'd thrown in hoping it would work:
```
	transition: color-scheme var(--transition-time-page) linear allow-discrete;
```
Take it out for now, do some experimenting to see if it can be made to work.


### Feature Parity

* `yearclock` colour schemes - maybe use something similar to what I'm using for screensaver
* save/download - get these consistent, see what can be common-ised






In progress
-----------

* Simple text/md editor -> Medit
* linting with https://quick-lint-js.com/	https://github.com/quick-lint/quick-lint-js
* [🪓⮁ - axis inversion for planar-space](<🪓⮁ - axis inversion for planar-space.md>)


Done
----
* [common styles](<done/2026-05-21 - common styles.md>)
* [submodule dev pattern](<done/2026-04-16 - submodule development pattern.md>) & [deployment process](<../ldpercy/deployment process.md>)
* The current version of polygon has been [split out into a new a screensaver project](<done/2026-03-26 - screensaver project.md>)
* Found a workaround for the svg 5px problem - use `display:block`
* Gave Terry some bunny ears for Easter
* [projects aligned on initial html-common release](<./done/2026-03-11 - align projects on html-common.md>)
* An initial project logo that is quite silly
* Merge wiki-scitech content into this repo & archive it
* Bring this repo online
* Merge experiment-svg into experiment-html



Ideas
-----
### A kde plasma widget to display a markdown file
There is a widget to display a webpage, have a look at as an example.

* https://develop.kde.org/docs/plasma/widget/
* https://develop.kde.org/docs/plasma/widget/examples/
* https://invent.kde.org/plasma/libplasma/-/tree/master/examples/applets

