DEPLOY DJANGO DOCKER MICROSERVICE TO SEPERATE EC2 INSTANCES USING ANSIBLE CONTROL MACHINE

# REQUIREMENTS
1. github repo code on ansible control machine
2. aws ec2 instances
3. ubuntu system (all systems are ubuntu)

# DIRECTORY STRUCTURE AND EXPLANATION

- deploydigi.sh: script to deploy all services to their respective aws ec2 instances

- ansible.cfg: ansible configuration file. hosy key checking was set to false to prevent ssh key prompt on first connection to remote servers

- inventory: contains remote host and host group configurations. also contains path to ssh key file 

- playbooks/: contains ansible playbooks to deploy microservice applications
    - playbooks/installsyspackages: updates and installs the required packages on the remote systems
    - playbooks/installdocker.yml: installs docker and docker-compose on remote systems
    - playbooks/deployauth.yml: copies auth service application code from ansible control machine and deploys using docker-compose
    - playbooks/deployconfig.yml: copies config service application code from ansible control machine and deploys using docker-compose
    - playbooks/deploywallet.yml: copies wallet service application code from ansible control machine and deploys using docker-compose

# BONUS DIRECTORY
- scripts/: contains scripts to install necessary requirements on ansible control machine
    - scripts/install-ansible-ubuntu.sh: installs ansible on ansible control machine
    - scripts/install-docker-ubuntu.sh: installs docker and docker-compose on ansible control machine


# STEPS

1. setup ansible control machine instance on aws ec2
2. ssh into ansible control machine
3. create a project directory in ansible control machine
4. download and install ansible on ansible control machine
5. setup microservice application(s) remote instance(s) on aws ec2
6. setup inventory file with login config to remote instances
7. clone git repositories with application code to ansible control machine
8. run deploydigi.sh script
9. test deployment on remote machines

# IMPROVEMENTS

- create a playbook to clone application from github repo to ansible control machine. (now, we manually clone the repos on the ansible control machine)



