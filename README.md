# Elk-Project-Michael
Cloud Set Up Project
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![ Update the path with the name of your diagram]
(https://drive.google.com/file/d/1GZDJhh4zVr8BXVEplNH9Hi7zrB93R8i6/view?usp=sharing)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _Ansible Config____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Ansible-playbook.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _available____, in addition to restricting _access____ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_
Load balancers defend organizations against distributed denial of service attacks(DDoS). This is achieved by shifting the attack traffic from the corporate server to a public cloud provider. The Jump Box is advantageous as a single reference point for potential software upgrades on a single deployable system

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the __Data/Logs___ and system _breaches____.
- _TODO: What does Filebeat watch for?_ 
Filebeat:They watch for logs and data event
Metricbeat: They record system performance metrics such CPU memory usage,number of log-in attempts and failures

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway     | 10.0.0.6   | Linux            |
| Web-1    |Ubuntu Server| 10.0.0.7   | Linux     |             |            | Web-2    |Ubuntu Server  10.0.0.8     Linux
| ElkVm    |Ubuntu Server| 10.1.0.4   |Linux                  |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _Jump-Box-Provisioner____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- Whitelisted IP Address for Jump-Box-Provisioner 52.188.43.28_

Machines within the network can only be accessed by _SSH____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_ Jump-Box-Provisioner

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 52.188.43.28         |
| Web-1    | No                  | 10.0.0.7             |
| Web-2    | No                  | 10.0.0.8             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_ 
It helps to automate daily tasks so that IT administrators can focus their energies and time to help deliver more value to the business on more important tasks. Secondly it reduces the potential for errors when configured daily.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
1 Install the Elk.yml file
2 Update the yml script with the appropriate parameters and save 
3 Run the script with the command: ansible-playbook install Elk.yml

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.  


![TODO: Update the path with the name of your screenshot of docker ps output]( root@ba34047a60ab:/etc/ansible# ansible-playbook install-elk.yml)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
Web-1 10.0.0.7
Web-2 10.0.0.8
ElkVM 10.1.0.4
We have installed the following Beats on these machines:
-Filebeat and Metricbeat_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
Filebeat collects log/data and events associated with downloads, logon and attempted/failed logons, etc.
Metricbeat collects the performance of the system to include the memory usage and available, number of log-ins and breaches, CPU usage percentage, RAM etc

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the source_____ file to __destination___.
- Update the _ansible-playbook____ file to include...
- Run the playbook, and navigate to _The URL___ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_

- _Which file do you update to make Ansible run the playbook on a specific machine?
You update the Ansible config file to run the playbook
How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
Filebeat.playbook.yml to install the filebeat and Install Elk.yml file to install on ELK server.
- _Which URL do you navigate to in order to check that the ELK server is running?
URL:https://40.123.52.162:5601/app/Kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
Touch/Nano /etc/ansible/install-elk.yml
Open and update the file with the following commands:
vm.max_map_count to 262144:
•  5601:5601 
•  9200:9200 
•  5044:5044
•  docker.io: The Docker engine, used for running containers. 
•  python3-pip: Package used to install Python software.
