VSCode / Codium
===============



Profiles
--------

Settings -> Profiles

https://code.visualstudio.com/docs/editor/profiles

	creates groups of user settings for things like extensions
	are remembered per workspace




Extensions
----------

* regexper - regex visualiser
* https://quick-lint-js.com/	https://github.com/quick-lint/quick-lint-js
* trialing `mads-hartmann.bash-ide-vscode` as bash language support for vscode
* Git Graph
* Git History
* Hex Editor
* Markdown All in One
* Material Icon Theme
* Numbered Bookmarks
* Peacock
* Project Manager
* SVG
* Swap Diff
* Typos spell checker




Material-icon-theme
-------------------

Custom svg icons can be added to (~version):

	~/.vscode-oss/extensions/pkief.material-icon-theme-5.40.0-universal/icons/

Unfortunately the folder gets reset every time materia-icon-theme is updated, so you'll need to go back in and re-add anything custom (until I find a workaround).

Association to the icon SVG then need to be registered in your vscode `settings.json` (this is permanent):

```json
	"material-icon-theme.files.associations": {
		"*.foo": "foo-icon"			// `.svg` is implied
	},
```
