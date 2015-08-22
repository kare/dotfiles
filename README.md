# Kare's Dotfiles
My personal collection of dotfiles including Plan9port, Acme (where's that config?), plumber, Zsh, Bash and Vim.

## Install

Dotfiles comes with a simple installation script ```setup-dotfiles```. Make sure your run it in an empty $HOME directory. It uses ```mv -i``` for safely moving the dotfiles to your $HOME directory. Mv cannot overwrite existing folders (like bin or lib).
```sh
cd
curl -L https://raw.githubusercontent.com/kare/dotfiles/master/bin/setup-dotfiles > setup-dotfiles
chmod 755 setup-dotfiles
./setup-dotfiles
rm setup-dotfiles
```

## Feedback

[Welcome](https://github.com/kare/dotfiles/issues)!

## Changelog

### Release v0.0.3 22-08-2015
### Release v0.0.2 02-06-2015
### Release v0.0.1 07-04-2014 

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
