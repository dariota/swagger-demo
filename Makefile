client: echo-api.yaml
	codegen -l ruby -o client/generated -i echo-api.yaml

client-gem: client/generated/swagger_client.gemspec
	cd client/generated; gem build swagger_client.gemspec; gem install --dev ./swagger_client-1.0.0.gem
	cd client; bundle install

docs: echo-api.yaml
	codegen -l html2 -o docs -i echo-api.yaml

server: echo-api.yaml
	codegen -l scalatra -o server/generated -i echo-api.yaml
