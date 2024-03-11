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
alias brewh="brew home"

alias php-server="php -S localhost:8000"
alias lumen-server="php artisan serve"

# Deploy from eb-deploy
alias mvn-deploy-dev="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=thetis07.eb-dev.jppol.net && cd -"
alias mvn-deploy-test01="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=ino01.eb-test.jppol.net && cd -"
alias mvn-deploy-test02="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=ino02.eb-test.jppol.net && cd -"
alias mvn-deploy-test03="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=ino03.eb-test.jppol.net && cd -"
alias mvn-deploy-test04="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=ino04.eb-test.jppol.net && cd -"
alias mvn-deploy-test05="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=ino05.eb-test.jppol.net && cd -"
alias mvn-deploy-test06="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=ino06.eb-test.jppol.net && cd -"
alias mvn-deploy-test07="cd ~/Code/eb-deploy; mvn clean install -f ../ekstrabladet/pom.xml && mvn clean install -Pcdeploy -Dassembly.host=ino07.eb-test.jppol.net && cd -"
