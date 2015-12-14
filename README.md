Selenium module for Ansible
===

Get it! `ansible-galaxy install seleniumhq.selenium`


Use It
===

After using ansible galaxy to install the module, take the `library/selenium` file, and put it where relevant for your use.

Include it in your playbook/roles:

```yaml
- name: Start a basic grid that listens on port 4444
  selenium:
    role: hub
    state: running

- name: Start a grid that runs on port 4445
  selenium:
    role: hub
    state: running
    args:
      port: 4445

- name: Start the grid with greater memory
  selenium:
    role: hub
    state: running
    javaargs:
      - Xmx1024M
      - Xmy1024M

- name: Start a basic node that connects locally
  selenium:
    role: node
    state: running
    args:
      hubUrl: http://0.0.0.0:4444

- name: Restart a running node that was listening on a previous port
  selenium:
    role: node
    state: restarted
    args:
      hubUrl: http://0.0.0.0:4445

- name: Start a node that uses a JSON config and has a logfile
  roles:
    - name: output the config file
      template: src=config.json.j2 dest=config.json

    - name: start the node
      selenium:
        role: node
        state: running
        logfile: node.log
        args:
          nodeConfig: config.json
```


Develop
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
