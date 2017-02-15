
resource "aws_cloudformation_stack" "upload_bucket" {
  name = "upload-bucket-stack"
  capabilities = ["CAPABILITY_IAM"]
  on_failure = "DELETE"

  template_body = "${file("${path.module}/template.yaml")}"
}
