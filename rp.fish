function rp --wraps=sed
sed -i '' -e "s/$argv[1]/$argv[2]/g" $argv[3..]
end
