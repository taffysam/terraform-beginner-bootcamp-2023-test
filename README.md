# Terraform Beginner Bootcamp 2023

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

- We made use of the below commands 

1. **Chaging file ownership** [File Ownership](https://en.wikipedia.org/wiki/Ownership)


2. **Making File Executable** [File-system_permissions](https://en.wikipedia.org/wiki/File-system_permissions)

## **OS Version**
- It is impontant to understand the UNIX version you are running from so that the files can be customised accordingly
- We used this link to undrstand our [UNIX version]() 
Shebanh Unix
Also note that when running the bash script add the below line at the top so that you dont have to go via source each tme ypu want to run the file.

**#!/usr/bin/env bash**


```Hello =$Hello
## **Printing Variables**
echo &AWS_var
## **Scoping of Environment Variables**
When you open new bash code terminal they will not recognise env variables from the last terminal. So thesewill be set as global or persiting env variables
- When persit env variable in secrect storage.
gp env Hello ="world"
## **Environment Variables can also be set in vargitpod.**
- NB: These are not supposed to be non sensentive variables



