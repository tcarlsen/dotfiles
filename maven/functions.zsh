# Maven deployment helper - remembers hosts so you don't have to
# Usage: mvn-deploy test01

mvn-deploy() {
  if [[ -z "$1" ]]; then
    echo "Usage: mvn-deploy {env}"
    echo ""
    echo "Available environments:"
    echo "  dev      → thetis07.eb-dev.jppol.net"
    echo "  test01   → ino01.eb-test.jppol.net"
    echo "  test02   → ino02.eb-test.jppol.net"
    echo "  test03   → ino03.eb-test.jppol.net"
    echo "  test04   → ino04.eb-test.jppol.net"
    echo "  test05   → ino05.eb-test.jppol.net"
    echo "  test06   → ino06.eb-test.jppol.net"
    echo "  test07   → ino07.eb-test.jppol.net"
    return 1
  fi

  local env=$1
  local host

  case $env in
    dev)
      host="thetis07.eb-dev.jppol.net"
      ;;
    test01)
      host="ino01.eb-test.jppol.net"
      ;;
    test02)
      host="ino02.eb-test.jppol.net"
      ;;
    test03)
      host="ino03.eb-test.jppol.net"
      ;;
    test04)
      host="ino04.eb-test.jppol.net"
      ;;
    test05)
      host="ino05.eb-test.jppol.net"
      ;;
    test06)
      host="ino06.eb-test.jppol.net"
      ;;
    test07)
      host="ino07.eb-test.jppol.net"
      ;;
    *)
      echo "Unknown environment: $env"
      $0  # show help
      return 1
      ;;
  esac

  cd ~/Code/eb-deploy
  echo "Deploying to $env ($host)..."
  mvn clean install -f ../ekstrabladet/pom.xml && \
  mvn clean install -Pcdeploy -Dassembly.host=$host
  cd -
}
