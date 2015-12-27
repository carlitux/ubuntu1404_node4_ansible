FROM shippableimages/ubuntu1404_base:latest

RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl software-properties-common;

# Install a default nodejs for the system
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-add-repository ppa:ansible/ansible

RUN apt-get update

RUN apt-get install ansible -y
RUN apt-get install --yes nodejs

CMD ["node"]
