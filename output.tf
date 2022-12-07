output "Output-EC2" {
    value= [for i in var.ForEachInstance: i["Name"]]
    description = "aws instances created"
}

output "Output-S3" {
    value= [for i in var.bucketname: i]
    description = "S3 bucket created"

}