@echo on
choco install git.install
choco install vscode
choco install nodejs
choco install onescript -y
call npm install
call opm install precommit1c
call Precommit1c --install
call opm install gitsync
call opm install packman
call opm install deployka
