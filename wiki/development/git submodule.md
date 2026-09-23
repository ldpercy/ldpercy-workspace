Git submodule
=============

> [!IMPORTANT]
> In progress, subject to revision


Add the submodule to an existing project
----------------------------------------

Where:
*	`superproject`		- the project the submodule is being added to
*	`$remotePath`		- the url (or dir path) to the git repository being added as a submodule
*	`$submoduleDir`		- the directory in superproject the submodule will go





```bash
git submodule add $remotePath $submoduleDir
git submodule update
```

Equivalent to in `superproject/.gitmodules`:
```conf
[submodule "$submoduleDir"]
	path = $submoduleDir
	url = $remotePath
```

The submodule commit hash is tracked in (might vary):

* superproject/.git/modules/$submoduleDir/refs/heads/main
* superproject/.git/modules/$submoduleDir/refs/remotes/origin/main


Track a specific branch
-----------------------
```bash
git submodule set-branch --branch v0.1 "$submoduleDir"
```

Equivalent in `superproject/.gitmodules`:
```conf
[submodule "$submoduleDir"]
	path = $submoduleDir
	url = $remotePath
	branch = v0.1
```


Maintenance
-----------
```bash
	git submodule update
```


Local development
-----------------

To use a local development copy of the submodule:
```bash
git config --local protocol.file.allow always
git config --local submodule."$submoduleDir".url /local/path/to/submodule-repo/

git submodule update		# performs the clone operation
```

Or in `superproject/.git/config`:
```conf
[protocol "file"]
	allow = always
[submodule "$submoduleDir"]
	url = /local/path/to/submodule-repo/
```


The submodule commit hash is also tracked in `superproject/.git/modules/$submoduleDir/FETCH_HEAD`, eg:

```
1234abcd------commit-hash-------1234abcd		branch 'main' of /local/path/to/submodule-repo
```

#### `.git/modules/$submoduleDir/config`

It might be necessary to manually edit this file to make sure it's pointing to the local development copy eg:
```conf
[remote "origin"]
	url = /local/path/to/submodule-repo/
	fetch = +refs/heads/*:refs/remotes/origin/*
```



User global config
------------------

To set some of these user-wide:

```bash
git config --global submodule.recurse true
git config --global protocol.file.allow always
git config --global submodule."$submoduleDir".url /local/path/to/submodule-repo/
```

Equivalent to in `~/.gitconfig`:
```conf
[submodule]
	recurse = true
[protocol "file"]
	allow = always
[submodule "$submoduleDir"]
	url = /local/path/to/submodule-repo/
```


Troubleshooting
---------------

### 'file' not allowed

	Cloning into '/local/path/to/superproject/$submoduleDir'...
	fatal: transport 'file' not allowed
	fatal: clone of '/local/path/to/submodule-repo/' into submodule path '/local/path/to/superproject/$submoduleDir' failed
	Failed to clone '$submoduleDir'. Retry scheduled


* https://stackoverflow.com/questions/74486167/git-clone-recurse-submodules-throws-error-on-macos-transmission-type-file-n
* https://git-scm.com/docs/git-config#Documentation/git-config.txt-protocolallow
* https://github.blog/open-source/git/git-security-vulnerabilities-announced/#fn-67904-1


	git config --global protocol.file.allow always



