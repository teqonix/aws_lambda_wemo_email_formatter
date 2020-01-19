aws cloudformation package \
   --template-file template.yaml \
   --s3-bucket troesner-lambda-artifacts \
   --output-template-file sam-output-template.yaml

aws cloudformation deploy \
   --template-file sam-output-template.yaml \
   --stack-name hello-world-serverless-app \
   --capabilities CAPABILITY_IAM