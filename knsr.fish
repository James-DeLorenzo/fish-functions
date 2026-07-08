function knsr --wraps=kubectl --argument-names namespace
    kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 -I "{}" sh -c "echo \"--- Getting resource: {} ---\"; kubectl get --show-kind --ignore-not-found -n $namespace {}" --
end
