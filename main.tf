variable "cross_account_access_id" {
  default = ""
}

resource "aws_cloudformation_stack" "upload_bucket" {
  name = "upload-bucket-stack"
  capabilities = ["CAPABILITY_IAM"]
  on_failure = "DELETE"

  parameters {
    CrossAccountAccessId = "${var.cross_account_access_id}"
  }
  template_body = "${file("${path.module}/template.yaml")}"
}
