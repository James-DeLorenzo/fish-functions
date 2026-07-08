function krender --wraps=kustomize
kbuild $argv | cat -pplyaml
end
