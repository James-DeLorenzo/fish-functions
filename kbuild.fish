function kbuild --wraps=kustomize
kustomize build --enable-alpha-plugins --enable-helm $argv
end
