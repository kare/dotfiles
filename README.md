# Kare's Dotfiles
My personal collection of dotfiles including Plan9port, Acme (where's that
config?), plumber, Zsh, Bash and Vim.

## Install

Start intallation by testing ssh connection to GitHub. Make sure your ssh key is
correctly installed.
Dotfiles comes with a simple installation script ```setup-dotfiles```. Make sure
your run it in an empty $HOME directory. Script uses mv command for moving
files. Mv cannot overwrite existing folders (like bin or lib).
```sh
cd
curl -L https://raw.githubusercontent.com/kare/dotfiles/master/bin/setup-dotfiles > setup-dotfiles
vi setup-dotfiles # Inspect script before running
chmod 755 setup-dotfiles
./setup-dotfiles
rm setup-dotfiles
```

## Blog post about profile management with Git and GitHub

* http://silas.sewell.org/blog/2009/03/08/profile-management-with-git-and-github/

## Feedback

[Welcome](https://github.com/kare/dotfiles/issues)!

## FAQ

### Test your ssh connection to GitHub

Make sure your ssh keys for GitHub are in place.
```
ssh -T git@github.com
```

* [Testing your SSH connection](https://help.github.com/articles/testing-your-ssh-connection/)
* [Error: Permission denied (publickey)](https://help.github.com/articles/error-permission-denied-publickey/)


### Cleanup failed installation
**WARNING!!!** Use responsibly
```
rm -rf lib bin README.md .zshrc .zshenv .zprofile .zlogin .zlogout .vimrc .vim .tmux.conf .screenrc .profile .gitmodules .gitignore .gitconfig .gemrc .dotfiles.git/ .ctags .bashrc .bash_history
```

### ```dotfiles push``` prompts for username and password
```
macbook:~ kkn$ dotfiles push
Username for 'https://github.com': kare
Password for 'https://kare@github.com':
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/kare/dotfiles.git/'
macbook:~ kkn$ vi .dotfiles.git/config
```

Modify $HOME/.dotfiles/config and replace
```
https://github.com/kare/dotfiles.git/
```
with
```
git@github.com:kare/dotfiles.git/
```

## Changelog

#### Release v0.0.4 21-10-2016

* Acme, plumber, Bash, Git, Zsh, Vim
	- No shell history
	- Bash customized for Acme
	- Zsh for other command line work
	- Improved docs
* Brew

#### Release v0.0.3 22-08-2015

* Acme, plumber, Bash, Git, Zsh, Vim
* Brew, ports

#### Release v0.0.2 02-06-2015

* Acme, plumber, Git, Zsh, Vim
* Brew

#### Release v0.0.1 07-04-2014

* Vim, Zsh, Git
* Brew

## License

Copyright © 2015 Kare Nuorteva
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above
copyright notice, this list of conditions and the following disclaimer
in the documentation and/or other materials provided with the
distribution.

3. Neither the name of the copyright holder nor the names of its
contributors may be used to endorse or promote products derived from
this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
