# apache

This cookbook install Apache and created a default HTML welcome page with "Hello World" and some system information like IP address.

It also creates the Message of the Day.

## Testing

We have ChefSpec and Inspec tests for this.

chef exec rspec

chef exec kitchen test

## Driver

It runs on a Dokken container.

## Port Forwarding

It forward port 80 in the container to port 49160 into the host. 
