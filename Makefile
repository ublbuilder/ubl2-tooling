docker:
	@docker build -t ublbuilder/ubl2-tooling:dev .

run:
	@docker run --rm -it ublbuilder/ubl2-tooling:dev sh