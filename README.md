# laptop

Development (and more) environment setup for MacOS. Automatically syncs to make cloning your machine a breeze.

Built with:
- [Homebrew][]
- [Keybase][]
- [zsh][]
- git


### Install

- Fork
- Change "caseyWebb" to your GitHub username in [`install.sh`](./install.sh)
- Edit [`dotfiles/.gitconfig`](./dotfiles/.gitconfig)
- `curl https://raw.githubusercontent.com/<your-username>/laptop/master/install.sh | bash`

**NOTE:** No `sudo`

**NOTE:** If you don't like curl-ing into bash, you can install git and clone this repo, then run `./install.sh`.


### How does it work?

#### Architecture

There are 4 types of [scripts](./scripts), designated by the first digit:

| Digit | Type                          |
|-------|-------------------------------|
| 0     | install                       |
| 1     | system configuration          |
| 2     | environment configuration     |
| 3     | chores                        |

- Install and system configuration scripts are ran once by the [main install script](./install.sh)
- Environment configuration scripts are ran _in the current context_ each time a shell is opened
- Chores are ran _in a spawned process ([screen][])_ each time a shell is opened

For install and configuration scripts (system and environment) the second digit allows controlling the order of execution.

#### Secrets

[Keybase][] is used to securely sync secrets (ssh & gpg keys, private environment variables).

tl;dr it creates a `/keybase` directory that is mounted via the network (configuration uses symlinks, so these never touch your disk). If you aren't familiar with Keybase, you should check it out further (no affiliation, it's just a fantastic product).

This setup will automatically import the following files:

```
/keybase/private/*/
├── gpg
│   └── private.asc
├── ssh
│   └── *
└── vars.sh         // secure environment variables  (e.g. `export AWS_ACCESS_KEY_ID=...`)
```

The benefits of storing your keys (encrypted) in the cloud is not only syncing across machines or installs, but also revocability via Keybase (although you should still change your keys if you have reason to believe theyve been compromised).

[Homebrew]: https://brew.sh/
[Keybase]: https://keybase.io/
[zsh]: https://zsh.org
[screen]: https://www.gnu.org/software/screen/
