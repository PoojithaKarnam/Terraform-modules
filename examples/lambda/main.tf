provider "aws" {
  region = "ap-south-1"
}

module "lambda" {
  source = "../../modules/lambda"

  function_name = "my-function"
  runtime       = "python3.12"
  handler       = "lambda_function.lambda_handler"
  zip_file      = "lambda.zip"
  role_name     = "lambda-execution-role"
}