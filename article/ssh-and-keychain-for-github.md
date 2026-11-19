ssh & keychain for Github
=========================

> [!NOTE]
> Keychain v3 has been released, updates for this doc are in progress



This process will create ssh authentication and signing keys for github with the following names:

	authentication-key
	signing-key

We'll also install and setup keychain to automatically make these available on a per-local-login basis.

N.B. Although this is intended for Github, the process for Gitlab is virtually identical.

- [ssh \& keychain for Github](#ssh--keychain-for-github)
	- [Create authentication and signing ssh keys](#create-authentication-and-signing-ssh-keys)
	- [Create ssh config file for authentication with github.com](#create-ssh-config-file-for-authentication-with-githubcom)
	- [Set local git to use signing key](#set-local-git-to-use-signing-key)
	- [Keychain install and run](#keychain-install-and-run)
		- [Keychain v3.x](#keychain-v3x)
		- [Keychain v2.x](#keychain-v2x)
		- [NB for Wayland sessions use this instead:](#nb-for-wayland-sessions-use-this-instead)
	- [Add keys to github](#add-keys-to-github)


Create authentication and signing ssh keys
------------------------------------------

Each of these will ask for a passphrase.

Keyfiles go into ~/.ssh/

```bash
ssh-keygen  -t ed25519  -f ~/.ssh/authentication-key  -C "key for authenticating with github"

ssh-keygen  -t ed25519  -f ~/.ssh/signing-key  -C "key for signing commits"
```

Private and public keyfiles are created for each key in ~/.ssh/:

-	authentication-key
-	authentication-key.pub
-	signing-key
-	signing-key.pub

Create ssh config file for authentication with github.com
---------------------------------------------------------

Save the following text as ~/.ssh/config

```conf
# GitHub
Host github.com
  PreferredAuthentications publickey
  IdentityFile ~/.ssh/authentication-key
```



Set local git to use signing key
--------------------------------

https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key#telling-git-about-your-ssh-key


```bash
git config --global gpg.format ssh

git config --global user.signingkey ~/.ssh/signing-key.pub

git config --global commit.gpgsign true
```


Keychain install and run
------------------------

### Keychain v3.x

Debian/Ubuntu repos still hold Keychain 2.x releases, but v3 releases are downloadable as executable python scripts from Daniel Robbins github:

	github.com/danielrobbins/keychain/

Eg `keychain-3.0.8.pyz`, approx 115kb.

An easy way to set up 3.x is to alias keychain to a local download in `.bashrc`, eg:
```bash
alias keychain="~/Downloads/keychain-3.0.8.pyz"
```

With that alias, run keychain in bashrc with a line like:
```bash
eval "$(keychain add --eval ~/.ssh/authentication-key ~/.ssh/signing-key)"
```


### Keychain v2.x

> [!WARNING]
> Keychain is in active development again and v3 has been released.
> The following is for keychain 2.x for reference

Main documentation: https://www.funtoo.org/Funtoo:Keychain

A couple of very helpful youtube vids:  https://www.youtube.com/watch?v=XRdybTxW8K4  https://www.youtube.com/watch?v=qirOF6NQc00

```bash
sudo apt install keychain
```

Add the following to .bashrc

```bash
eval 'keychain --agents ssh --eval ~/.ssh/authentication-key ~/.ssh/signing-key'
```

### NB for Wayland sessions use this instead:

```bash
eval 'keychain --inherit any-once --agents ssh --eval ~/.ssh/authentication-key ~/.ssh/signing-key'
```

This will now prompt for your passphrase the first time you open a terminal per your local user login (to make the keys available for authentication and signing). If you don't need these often keep the eval line as a snippet or set an alias.
Note: this may be a moving target, behaviour changes between distros/releases.



Add keys to github
------------------

Log into your github account and head to https://github.com/settings/keys

Add the authentication and signing ssh keys (.pub files), taking care to specify the key type for each correctly.

