function gr
cd $(ls -D1 --absolute ~/repos/*/* | awk "!/:/ { print $1 }" | fzy)
end
