function dta -a ver
echo $ver
set -l zip_path /tmp/aws-$ver
set -l install_dir ~/.terraform.d/plugins/registry.terraform.io/hashicorp/aws/$ver/darwin_arm64/
curl "https://releases.hashicorp.com/terraform-provider-aws/$argv[1]/terraform-provider-aws_$argv[1]_darwin_arm64.zip" -o $zip_path
unzip -q -o $zip_path -d /tmp
mkdir -p $install_dir
mv /tmp/terraform* $install_dir
rm -rf /tmp/*aws*
end
