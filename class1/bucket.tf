resource "aws_s3_bucket" "example" {
  bucket_prefix = "kaizen-"
}


resource "aws_s3_bucket" "example2" {
  bucket = "kaizen-elima-hello"
}

output bucket {
    value = aws_s3_bucket.example2.arn
}

output bucket2 {
    value = aws_s3_bucket.example.arn
}