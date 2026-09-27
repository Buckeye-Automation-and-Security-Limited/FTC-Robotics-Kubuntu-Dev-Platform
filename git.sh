#!/usr/bin/env bash

GITEMAIL=$(grep "^GITEMAIL=" config.txt | cut -d"=" -f2-)
GITNAME=$(grep "^GITNAME=" config.txt | cut -d"=" -f2-)

mkdir -p ~/.ssh/github/

# nohup ssh-agent -s &

ssh-keygen -t ed25519 -C $GITEMAIL -f ~/.ssh/github/id_ed25519 -P ""

#todo find out why this isn't being added in the script
ssh-add ~/.ssh/github/id_ed25519

sudo apt-get -y install git kdiff3


git config --global difftool.kdiff3 'kdiff3 "$LOCAL" "$REMOTE"'
git config --global diff.tool kdiff3
git config --global difftool.prompt false


git config --global mergetool.kdiff3 'kdiff3 "$BASE" "$LOCAL" "$REMOTE" -o "$MERGED"'
git config --global merge.tool kdiff3
git config --global mergetool.prompt false

git config --global user.email $GITEMAIL
git config --global user.name $GITNAME

sudo curl -o /usr/local/bin/git-completion.bash https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-completion.bash

echo "source /usr/local/bin/git-completion.bash" >> ~/.bashrc

sed -i s/#force_color_prompt=yes/force_color_prompt=yes/g ~/.bashrc


sudo curl -o /usr/local/bin/git-prompt.sh https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-prompt.sh

echo "source /usr/local/bin/git-prompt.sh" >> ~/.bashrc

echo "

mkdir ~/code

===== github.com =============

Don't forget to add the pubkey to the github website settings for SSH. Look in ~/.ssh/github

Then open the terminal, cd ~/code, git clone git@github.com:FIRST-Tech-Challenge/FtcRobotController.git

==============================" | tee -a ~/Desktop/post-install-resources.txt
