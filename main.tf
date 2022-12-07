#each loop for ec2 instance

resource "aws_instance" "ec2-instance" {
    for_each = var.ForEachInstance
    ami    = var.AMI-Id
    instance_type = var.Instance_type
    tags = {
      "Name" = each.value["Name"]
      "Owner"=each.value["Owner"]
      "Purpose"=each.value["Purpose"]
    }
}

#Count loop for S3 bucket

resource"aws_s3_bucket""buckets3"{
    count=length(var.bucketname)
    bucket=var.bucketname[count.index]
    tags = {
      Owner="Ajay"
      Purpose ="training"  
  }
}   