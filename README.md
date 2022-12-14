# terraform-issue-23387
A test case for https://github.com/hashicorp/terraform/issues/23387.

**NOTE:** This issue seems fixed as per **Terraform 1.3.4** (possibly since 1.3.0).

This repository takes advantage of [*Bash Magic Enviro*](https://github.com/jmnavarrol/bash-magic-enviro/blob/main/README.md) (*BME*) so, if you already configured your Bash console to use it, your environment will be automatically configured once you enter your sandbox' root directory.

Once *BME* is properly configured, it will download and activate the proper terraform version.

## testing this bug
After running `terraform init`, `terraform apply` and `terraform destroy`, running `terraform plan -detailed-exitcode -destroy` and then `$?` will show a return status '2'.

Note than contrary to the description of the bug, if you comment in the output stanza, then it will properly return '0' as expected after a destroy.
