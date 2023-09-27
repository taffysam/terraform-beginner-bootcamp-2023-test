# Terraform Beginner Boot

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

- We have added a new file install_terraform_cli. This is a bash script that will install Terraform CLI on gitpod.
- To have the file run we will change file ownership and as well as make the file executable

- We made use of the below commands 

1. **Chaging file ownership** [File Ownership](https://en.wikipedia.org/wiki/Ownership)

2. **Making File Executable** [File-system_permissions](https://en.wikipedia.org/wiki/File-system_permissions)

```sh
chmod u+x ./bin/install_terraform_cli 
or
chmod 744 ./bin/install_terraform_cli 
```


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

Also note that when running the bash script add the below line at the top so that you dont have to go via source each tme ypu want to run the file.

**#!/usr/bin/env bash**



## Working With Environment Variables ####

- we can filter variable using env | grep AWS _VAR

## Setting and Unsetting Variables 
- We can aslo set and unset variables in git using **export $<>**, *echo &<>* and **unset <>**. Make note that we unsetting the variable we do not use the $.
- Also a variable can be set as below


```Hello =$Hello

```sh

Hello =$Hello

```Hello =$Hello



```

## Printing Variables
echo &AWS_var
##Scoping of Environment Variables
When you open new bash code terminal they will not recognise env variables from the last terminal. So thesewill be set as global or persiting env variables
- When persit env variable in secrect storage.


```sh 
gp env Hello ="world"
```

##**Environment Variables can also be set in vargitpod.**
- NB: These are not supposed to be non sensentive variables



gp env Hello ="world"

```gp env Hello ="world"

```

##Environment Variables can also be set in vargitpod.
- NB: These are not supposed to be non sensentive variables


### **AWS CLI INSTALLATION**

AWS CLI is installed for this project and we need via the ./bin/install_aws_cli
[AWS CLI Installation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

- Before we start any AWS CLI configuration we can check if any configuration has been done via the below:

#### 13-refactoring-aws-cli

 aws sts get-caller-identity


aws configure


Next step is get AWS CLI envs

### **Get the AWS CLI env variables**

- [These are available on](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2




gp env AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
gp env AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
gp env AWS_DEFAULT_REGION=us-west-2fake


run the below 
aws sts get-caller-identity

Output should look like the one below:


 "UserId": "FADUXAkkkQLOO000KB",
    "Account": "10879846784999",
    "Arn": "arn:aws:iam::FADUXAkkkQLOO000KB:user/terraform-begginer-bootcamp"
}


```
 aws sts get-caller-identity

```

 or 
```
aws configure

```
Next step is get AWS CLI envs

#### **Terraform Basics**
- get providers, modules and others
- Providers are way you directly interract with an API to make it powered by terraform
- a mapping of APIs to be utilised within terraform.
- direct interfaces to API

#### **Module**
- a collection of terraform files
- used to give a way to utilise the API
- templates 

[These are available at](https://registry.terraform.io/)


#### **Terraform Console**
- we can see all the commands by typing 'terraform'




#### **Key Providers**

Example:
Random
- [Created random items](https://registry.terraform.io/providers/hashicorp/random/latest)

#### **Key Terraform commands**

  - **terraform init**          Prepare your working directory for other commands
  - **terraform validate**      Check whether the configuration is valid
  - **terraform plan**          Show changes required by the current configuration
  - **terraform apply**         Create or update infrastructure
  - **terraform destroy**       Destroy previously-created infrastructure
  - **terraform state** 
  - **terraform output** 
  - **terraform apply --auto-approve**  Automatically approve an apply
  
  
  
  Terraform Lock Files
  Containes locked versioning for providers and modules to be used for the project.
  Should be commited to your version control system eg GitHub
  
  
  'terraform.tffiles'
   Contains information about your current state of your infrastructure
   Should not be commited to your version control system 
   Can contain sensentive information
   
  'terraform.tffiles.backup'
  the previous state file state


  Terraform Directory 
  .terraform : contains binaries of terraform

