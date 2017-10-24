resource "aws_iam_role" "data_dog_integration_role" {
  name               = "DatadogAWSIntegrationRole"
  assume_role_policy = "${data.aws_iam_policy_document.instance_assume_role_policy.json}"
}

resource "aws_iam_role_policy_attachment" "data_dog_integration_attachment" {
    role       = "${aws_iam_role.data_dog_integration_role.name}"
    policy_arn = "${aws_iam_policy.data_dog_integration_policy.arn}"
}
