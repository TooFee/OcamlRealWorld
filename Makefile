pjName := OcamlRealWorld

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-v $$(pwd):/root/${pjName} \
		mooxe/ocaml \
		/bin/bash