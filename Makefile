pjName := OcamlRealWorld

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-v $$(pwd):/home/opam/${pjName} \
		mooxe/ocaml \
		/bin/bash