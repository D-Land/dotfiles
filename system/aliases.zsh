# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias ll="gls -lAh --color"
  alias l="gls -A -1 --color"
  alias la='gls -A --color'
fi

alias books="cd ~/Dropbox/books/"
alias dotfiles="cd ~/github/d-land/dotfiles"
