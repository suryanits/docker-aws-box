aws ec2 describe-images --owner amazon --query \ 
'Images[?Name!=`null`]|[?starts_with(Name, `aws-elasticbeanstalk`) == `true`]|[0:5].[ImageId,Name]' --output text

aws ec2 describe-images --owner amazon --query 'Images[?Name!=`null`]|[?starts_with(Name, `aws-elasticbeanstalk`) == `true`]|[?contains(Name, `tomcat7`) == `true`]|[0:5].[ImageId,Name]' --output text

aws ec2 describe-images --owner amazon --query 'Images[?Name!=`null`]|[?starts_with(Name, `aws-elasticbeanstalk`) == `true`]|[?contains(Name, `x86_64-tomcat7java6-pv`) == `true`].[CreationDate,ImageId,Name]' --output text | sort -k1


aws ec2 describe-images --owner amazon --query \
'Images[?Name!=`null`]|[?starts_with(Name, `aws-elasticbeanstalk`) == `true`]|[0:5].{ID:ImageId,Name:Name}' --output table