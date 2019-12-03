# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(exa &>/dev/null)
then
  alias l="exa -a --group-directories-first"
  alias ls="exa -lah --git --group-directories-first"
fi

alias brewi="brew install"
alias brewu="brew uninstall"
alias brewup="brew upgrade"
alias brewh="brew home"

alias cask="brew cask"
alias caski="cask install"
alias casku="cask zap"
alias caskh="cask home"


alias npmi="npm install"
alias npmu="npm uninstall"
alias npmig="npm install -g"
alias npmug="npm uninstall -g"

alias php-server="php -S localhost:8000"
alias lumen-server="php artisan serve"
