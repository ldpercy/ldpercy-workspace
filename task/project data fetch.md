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



