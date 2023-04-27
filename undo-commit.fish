function undo-commit --wraps=git-reset
git reset --soft HEAD~
end
