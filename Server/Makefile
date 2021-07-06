install:
	npm install

serve:
	node index.js

fetch-users:
	@curl 'http://localhost:4200/graphql?' \
		-H 'Content-Type: application/json' \
		-d '{"query":"{ users { name email posts { title } } }"}'

fetch-posts:
	@curl 'http://localhost:4200/graphql?' \
		-H 'Content-Type: application/json' \
		-d '{"query":"{ posts { id title } }"}'
