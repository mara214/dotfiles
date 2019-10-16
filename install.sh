#!/bin/sh

DOTFILES=${DOTFILES:-~/dotfiles}
REPO=${REPO:-schulke-214/dotfiles}
REMOTE=${REMOTE:-git@github.com:${REPO}.git}
BRANCH=${BRANCH:-master}
VERSION="$(curl -fsSL https://raw.githubusercontent.com/schulke-214/dotfiles/master/version)"
USER="$(whoami)"

TITLE="
 _____     ______     ______   ______   __     __         ______     ______    
/\  __-.  /\  __ \   /\__  _\ /\  ___\ /\ \   /\ \       /\  ___\   /\  ___\   
\ \ \/\ \ \ \ \/\ \  \/_/\ \/ \ \  __\ \ \ \  \ \ \____  \ \  __\   \ \___  \  
 \ \____-  \ \_____\    \ \_\  \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\ 
  \/____/   \/_____/     \/_/   \/_/     \/_/   \/_____/   \/_____/   \/_____/ 

"

install() {
	if [ -d "$DOTFILES" ]; then
		echo "failed to clone $REPO into $DOTFILES since its not empty"
	fi

	echo "cloning $REPO $VERSION into $DOTFILES"

	git clone --depth=1 --branch "$BRANCH" "$REMOTE" "$DOTFILES" &>/dev/null || {
		echo "git clone of $REPO failed"
		exit 1
	}

	echo "-> cloning oh-my-zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git "$DOTFILES/dependencies/oh-my-zsh" &>/dev/null || {
		echo "git clone of oh-my-zsh failed"
		exit 1
	}

	echo "-> cloning nvm"
	git clone https://github.com/nvm-sh/nvm.git "$DOTFILES/dependencies/nvm" &>/dev/null || {
		echo "git clone of nvm failed"
		exit 1
	}

	echo "-> cloning zsh-nvm"
	git clone https://github.com/lukechilds/zsh-nvm.git "$DOTFILES/dependencies/zsh-nvm" &>/dev/null || {
		echo "git clone of zsh-nvm failed"
		exit 1
	}

	echo
}

init() {
	# prepend the dotfiles variable to a temp file
	echo "DOTFILES=$DOTFILES \n" | cat - "$DOTFILES/zshrc" >"$DOTFILES/tmp/zshrc"
	# replace the zshrc with the temp file
	mv "$DOTFILES/tmp/zshrc" "$DOTFILES/zshrc"

	echo "-> made the DOTFILES variable available for your shell"

	# append the import of this dotfiles
	echo "source $DOTFILES/zshrc" >>~/.zshrc
	echo "-> load $DOTFILES/zshrc in ~/.zshrc"
}

usage() {
	echo "$TITLE"
	echo "installed $REPO $VERSION for $USER :)"
}

main() {
	clear

	install
	init
	usage
}

main
