.PHONY: build upload

docker-image:
	docker build -t kesannon-jekyll .

build:
	docker run -v /home/pk/src/kesannon-kotisivut:/kesannon kesannon-jekyll

upload:
	cd _site; aws s3 sync . s3://www.kesannon.fi
