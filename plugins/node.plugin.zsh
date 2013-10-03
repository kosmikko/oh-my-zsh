alias npm-upgrade=updateModule

updateModule() {
  npm install $1@`npm info $1 version` --save
}