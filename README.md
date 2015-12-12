Selenium module for Ansible
===

Get it! `ansible-galaxy install seleniumhq.selenium`

Testing
===

*(The following instructions are for those using Vagrant)*

Before running tests:

```sh
alias test-module=/home/vagrant/ansible/hacking/test-module
```

To test the module manually, you can run:

```sh
cd library/
test-module -m ./selenium -a "role=hub state=running"
``

To run all tests:

```sh
cd tests/
ansible-playbook -i localhost, test.yml
```
