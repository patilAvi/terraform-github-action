FROM ubuntu:20.04
COPY main.tf /main.tf
RUN sudo apt-get update -y && sudo apt-get install -y wget
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
RUN sudo apt-get update -y && sudo apt-get install -y terraform
RUN terraform init && terraform apply -auto-approve