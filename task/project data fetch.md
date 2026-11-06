Project data fetch
==================

From: [ldpercy.github.io/[task]/project data fetch](<../../ldpercy.github.io/[task]/project data fetch.md>)

So far the data in ldpercy.github.io is all hardcoded.
Want to try fetching latest updates from each project instead.
Need to add something like this to the root of each project:

`project.json`
```json
{
	"name"			: "",
	"description"	: "",
	"repository"	: "",
	"version"		: "",
	"commit"		: "",
	"date"			: "",
	"tag"			: ["a","b","c"]
}
```



Standardise meta folders?
-------------------------
Starting to wonder whether the task and wiki folders might be better off combined into a singular `[project]` folder.
Keeping it neat like this though would be need a little adjusting.

Task could still be a subdir, not sure yet about the history.

Also need a subfolder for screenshots/examples.



Screenshots/examples, also schema...
------------------------------------

Okay have gone ahead and combined most of the task and wiki folder into a single 'project' directory.
It's now also holding a 'screenshot' dir.

Did some experiments with tryiong to type json with jsdoc - doesn't work - so I've changed the project json files to become `project.js` modules, with a single default export, and added an initial typedef for it to html-common.


Change HTMLApp to use project-data (and project.css)
----------------------------------------------------
This is the next logical step, undecided if I want to do it now or release what I've got and come back to it.

Also feel like a bit more thought might need to go into it...

