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

Task could still be a subdir, not sure yet about the the history.

