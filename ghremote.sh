#!/usr/bin/env sh

if ! [ $1 ]; then
  echo "GitHub remote shortcut\n\n"
  echo "Usage:\n  $ ghremote <username>/<repo>\n\n"
  echo "Example:\n  $ ghremote johnotander/pixyll\n"
  echo "Example:\n  $ ghremote upstream johnotander/pixyll\n"
  exit 1
fi

if [ $2 ]; then
  GITREMOTENAME=${1}
  GITREPO=${2}
else
  GITREMOTENAME="origin"
  GITREPO=${1}
fi

git remote add ${GITREMOTENAME} https://github.com/${GITREPO}.git
