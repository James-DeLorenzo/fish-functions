function gw
cd $(ls -1 --absolute ~/workspaces/ | awk "!/:/ { print $1 }" | fzy)
end
