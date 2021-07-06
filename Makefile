serve:
	make $@ -C Server

scheme:
	./node_modules/apollo/bin/run schema:download --endpoint=http://localhost:4200/graphql schema.json
