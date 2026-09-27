#!/usr/bin/env bash

#$prompt_text = <<<EOD
echo "

# Extract the current Git branch name
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}" | tee -a ~/.bashrc > /dev/null

# Colors from: https://misc.flogisoft.com/bash/tip_colors_and_formatting#colors2

echo '

#North & South Colors in the terminal command prompt
PS1="\[\033[38;5;208m\]\u@\[\033[38;5;208m\]\h\[\033[1;00m\]\[\033[01;01m\]:\w\[\033[01;34m\]\[$(parse_git_branch)\]\[\033[00m\]\$ "' | tee -a ~/.bashrc

# echo "$prompt_text"
# echo $prompt_text | tee -a ~/.bashrc
