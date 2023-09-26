# Terraform Beginner Bootcamp 2023






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
