all:    init build deploy

init:
	git submodule update --recursive
	terraform init

build:	TechChallengeApp/.git
	docker build TechChallengeApp -t servian/techchallengeapp:latest

deploy:
	terraform apply -auto-approve

clean:
	rm -rf .terraform terraform.tfstate  terraform.tfstate.backup TechChallengeApp

destroy: 
	terraform destroy -auto-approve
