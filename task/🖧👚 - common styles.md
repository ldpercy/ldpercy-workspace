Common styles
=============

The main apps share similar layouts, but the styles are copied.
Add a subset to html-common for reuse.

```
2026-04-28		🖧👚		new task
```

### subtasks

* [x] App info dialog style
* [x] panel group style
* [x] Chromium colour scheme switching glitch (sorted now)
* [ ] figure out custom accent colour for Turtle (& maybe yearclock)
* [ ] figure out ui-panel inputs




Preamble
--------

While I was thinking about this yesterday I was wondering how to provide namespaces for particular styles /groups.

The styles I was to commonise here are things that are pretty much the same between the fullscreen-style apps I'm doing right now - turtle, yearclock, screensaver, thoughtcloud, wormfarm.

But I might do different kinds of apps, or change the appearance for one of them or whatever.

Same goes for a lot of the other styles that have been dumped into html-common.
They really need to be grouped by a theme or scheme or style or flavour or something.

Not 100% sure how I'm going to solve that just yet, will let the thought simmer.
Might just start by adding a fullscreen/fullpage folder for the main things I'm targeting for this task.

Also really need to brush up on my terminology re viewports etc.


Info dialog
-----------

This one should be pretty easy to start with as it really is just copy-pasted between the apps.
There are a couple of tweaks in screensaver I think, but should be simple to commonise.

Done, it's now common across the apps, also commonised the panel-group styles.


The ui panel
------------
I've been spending a bit more time on this as it's a bit more detailed.
Currently have it at a fairly acceptable state across the apps, but now starting to think about how customisations should flow into it.

More general discussion: [style flow](<🎨🢡🖽 - style flow.md>)

In particular the screensaver style panel is getting too big so have been trying tweaking some of it's settings, but ultimately it will need to be broken down or reimagined somehow.

I'm half tempted to do a release here, but there are still a lot of bugs and things that need to be squished in turtle and yearclock.


