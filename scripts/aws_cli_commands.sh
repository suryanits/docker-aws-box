aws ec2 describe-images --query \
 'Volumes[*].{ID:VolumeId,InstanceId:Attachments[0].InstanceId,AZ:AvailabilityZone,Size:Size}' --output table

aws ec2 describe-volumes --query \
'Volumes[*].[VolumeId,Attachments[0].InstanceId,AvailabilityZone,Size]' --output table