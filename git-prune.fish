function git-prune
git fetch --all --prune
git branch --merged | egrep -v "(^\*|main)" | xargs git branch -d
end
