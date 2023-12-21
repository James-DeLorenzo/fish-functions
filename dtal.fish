function dtal
curl -s https://releases.hashicorp.com/terraform-provider-aws/ | rg -o -e "aws_\d+.\d+.\d+" | awk '{ FS="_"; print $2 }'
end
