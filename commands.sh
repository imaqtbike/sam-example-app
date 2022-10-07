#create an s3 bucket
aws s3 mb s3://cuong-code-sam


#package cloudformation === # sam package ....
aws cloudformation package --s3-bucket cuong-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

#deploy

aws cloudformation deploy --template-file gen\template-generated.yaml --stack-name cuong-code-sam --capabilities CAPABILITY_IAM 
