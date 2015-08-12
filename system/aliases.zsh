# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias brewi="brew install"
alias brewu="brew uninstall"
alias brewup="brew upgrade"

alias caski="brew cask install"
alias casku="brew cask zap"

alias npmi="npm install"
alias npmu="npm uninstall"
alias npmig="npm install -g"
alias npmug="npm uninstall -g"

alias php-server="php -S localhost:8000"
alias lumen-server="php artisan serve"
