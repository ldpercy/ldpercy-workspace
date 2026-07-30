ssh
===

Quotes are from ArchWiki.


ssh-keygen
----------

> ssh-keygen(1) defaults to Ed25519 therefore there is no need to specify it with the -t ed25519 option. The key pairs can be simply generated with:
>
>	$ ssh-keygen
>
> There is no need to set the key size, as all Ed25519 keys are 256 bits.


### Change passphrase

>If the originally chosen SSH key passphrase is undesirable or must be changed, one can use the ssh-keygen command to change the passphrase without changing the actual key. This can also be used to change the password encoding format to the new standard.
>
>$ ssh-keygen -f ~/.ssh/id_rsa -p



SSH Tunnels
-----------

SSH Tunnels SIMPLIFIED!
https://www.youtube.com/watch?v=Wp7boqm3Xts
