client: echo-api.yaml
	codegen -l ruby -o client/generated -i echo-api.yaml

docs: echo-api.yaml
	codegen -l html2 -o docs -i echo-api.yaml

server: echo-api.yaml
	codegen -l scalatra -o server/generated -i echo-api.yaml
