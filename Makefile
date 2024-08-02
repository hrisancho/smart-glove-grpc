req:
	pip install -r requirements.txt

protobuf-go:
	protoc --proto_path=./ --go_out=./go/ --go_opt=paths=source_relative ./*.proto

protobuf-python:
	python3 -m grpc_tools.protoc -I./ --python_out=./python --grpc_python_out=./python ./*.proto