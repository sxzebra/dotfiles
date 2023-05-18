
# open file explorer in pwd
alias oph='xdg-open .'

# for SVN command
# only show the latest 5 commits
alias svl='svn log -l5'
# directly commit with a short message(without invoking text editor)
alias scm='svn commit -m'
# show diff of the working dir with base commit
alias sdf='svn diff | vim -'
# show diff between base commit and previous commit
alias sdf1='svn diff -rPREV:BASE | vim -'

# Custom copy and paste to clipboard
alias cb='cat | xclip -selection clipboard'

alias pb='xclip -selection clipboard -o'

