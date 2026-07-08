function configs
    cd $( ls -D1 --absolute ~/.config | awk "!/:/ { print $1 }" | fzy)
end
