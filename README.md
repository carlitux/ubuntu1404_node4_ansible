ubuntu1404_nodejs
=================

Shippable CI image for Node.js on Ubuntu 14.04. Available Node.js versions:


## How to use
You can use this image to run node.js builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. You should also
activate the appropriate nvm so your build runs against the
correct version of node.js. 

Here's a sample YML file to get you going:

````
language: node_js
node_js:

build_image: lcruzc/ubuntu1404_node4_ansible

before_install:
  - npm install -g grunt-cli

install:
  - npm install

script:
  - grunt

````



