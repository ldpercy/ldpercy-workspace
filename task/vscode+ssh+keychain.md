VSCode, ssh, keychain
======================

Things get quirky sometimes.
For about the fiftieth time...

This time on Kubuntu with flatpak vscode.

Keychain
--------

I'm currently flip-flopping between v2 and v3 (in beta) to get *anything* working for now.

I also might try going oldschool and keep keychain out for a bit while troubleshooting:

	https://stackoverflow.com/questions/69488006/i-need-to-re-run-evalssh-agent-and-ssh-add-on-every-boot

	> If so, I would consider adding these two lines to the bottom of your ~/.bashrc login file:

	>	eval "$(ssh-agent -s)"
	>	ssh-add ~/.ssh/id_personal


	https://docs.oracle.com/cd/E19683-01/806-4078/6jd6cjrub/index.html


Problems
--------

Using flatpak & the integrated terminal some commands appear absent.


From regular terminal `ssh-askpass` works fine:

```bash
	~$ which ssh-askpass
	/usr/bin/ssh-askpass
```
On my filesystem:

	/usr/bin/ssh-askpass			# exists
	/usr/libexec/ssh-askpass		# does not exist

From VSCode's bash terminal:

```bash
$ which ssh-askpass
which: no ssh-askpass in (/app/bin:/app/bin:/app/bin:/usr/bin:/home/paul/.var/app/com.vscodium.codium/data/node/bin:/home/paul/.var/app/com.vscodium.codium/data/cargo/bin:/home/paul/.var/app/com.vscodium.codium/data/python/bin)
```

The internet
------------
There are several suggestions out there, seems like this is a perennial problem.
* install ssh-askpass (already installed for me)
* "git.useIntegratedAskPass": false,
*


Flatpak vscodium
----------------


https://github.com/flathub/com.vscodium.codium/blob/master/README.md#host-shell


Original:

```json
	"terminal.integrated.profiles.linux": {
		"bash": {
			"path": "bash"
		},
	}
```

Suggestions:
```json
//	flatpak-spawn

{
	"terminal.integrated.defaultProfile.linux": "bash",
	"terminal.integrated.profiles.linux": {
		"bash": {
			"path": "/usr/bin/flatpak-spawn",
			"args": ["--host", "--env=TERM=xterm-256color", "bash"],
			"icon": "terminal-bash",
			"overrideName": true
		},
	},
}

//	host-spawn

{
	"terminal.integrated.defaultProfile.linux": "bash",
	"terminal.integrated.profiles.linux": {
		"bash": {
			"path": "/app/bin/host-spawn",
			"args": ["bash"],
			"icon": "terminal-bash",
			"overrideName": true
		},
	},
}
```

This doesn't seem to work directly for me just yet, but...


For some reason running `/app/bin/host-spawn` directly in vscode's bash terminal seems to work *a bit*...
It doesn't know about any existing keychains/sshagents, but it runs keychain correctly and i can add ssh keys.


```
        "bash": {
            "path": "/app/bin/host-spawn"
        },
```


Snap?
-----
Tried stock vscode snap last night and it seemed 'better' and turns out I'm using the snap on another machine also - look into.