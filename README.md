# Terraform Beginner Bootcamp 2023

**Semantic Versioning 2.0.0**
**Summary**
Given a version number **MAJOR.MINOR.PATCH**, increment the:

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.


## **Installing Terraform CLI**
- We have added a new file install_terraform_cli. This is a bash script that will install Terraform CLI on gitpod. 
- This has been mde neccesary to fix the terrafom gpg issues
- To have the file run we will change file ownership and as well as make the file executable

##**Bash Script Considerations**  

1. **Chaging file ownership** [File Ownership](https://en.wikipedia.org/wiki/Ownership)


2. **Making File Executable** [File-system_permissions](https://en.wikipedia.org/wiki/File-system_permissions)

chmod u+x ./bin/install_terraform_cli 
or
chmod 744 ./bin/install_terraform_cli 

## **OS Version**
- It is impontant to understand the UNIX version you are running from so that the files can be customised accordingly
- We used this link to understand our [UNIX Distribution](https://www.geeksforgeeks.org/how-to-check-the-os-version-in-linux/) 


```sh
**cat /etc/os-release**

PRETTY_NAME="Ubuntu 22.04.3 LTS"
NAME="Ubuntu"
VERSION_ID="22.04"
VERSION="22.04.3 LTS (Jammy Jellyfish)"
VERSION_CODENAME=jammy
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=jammy

```

##**Shebanh Unix**
Also note that when running the bash script add the below line at the top so that you dont have to go via source each tme ypu want to run the file.
[Using Shebang](https://bash.cyberciti.biz/guide/Shebang)

ChatGPT reccomended we use the first format for OS distribution portability
**#!/usr/bin/env bash**
**#!/usr/bin/bash**

##**Execution Considerations**##
- When executing bash scripts we can use 

./bin/install_tearrform_cli

- We use the bin as recommended with most scripting best practices.



## Working With Environment Variables ####

- we can filter variable using env | grep AWS _VAR

## Setting and Unsetting Variables 
- We can aslo set and unset variables in git using **export $<>**, *echo &<>* and **unset <>**. Make note that we unsetting the variable we do not use the $.
- Also a variable can be set as below

```
Hello =$Hello
## Printing Variables
echo &AWS_var
##Scoping of Environment Variables
When you open new bash code terminal they will not recognise env variables from the last terminal. So thesewill be set as global or persiting env variables
- When persit env variable in secrect storage.
gp env Hello ="world"
##Environment Variables can also be set in vargitpod.
- NB: These are not supposed to be non sensentive variables



