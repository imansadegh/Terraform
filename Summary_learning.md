# Terraform
## HCL (Hashicorp Configuration Language )
 /*   
this is a<br>
multi line<br>
comment*/<br>

## Blocks
A block is a container for other content.<br>
Blocks are defined by theri type and enclosed in curly braces{}.

block_type {<br>
attribute1 = value1<br>
attribute1 = value1<br>
}<br>

ex: resource block , data block , output block , ...<br>

## Attributes

key = value<br>

for example this is resource block :<br>
resource "aws_instance" "web" {<br>
  ami                    = "ami-a0cfeed8"<br>
  instance_type          = "t2.micro"<br>
  user_data              = file("init-script.sh")<br>
<br>
  tags = {<br>
    Name = random_pet.name.id<br>
  }<br>
}<br>
## Datatypes

### "string"<br>
### number 2/3/5/24<br>
### boolean (true/false)<br>
### List<br>
lsit of somethings<br>
List= ["item1", "item2", "item3"]<br>
### Maps
similar to dictionaries in Python<br>
variable "example_map"{<br>
type = map<br>
default = {key1= "value1", key2= "value2", key3= "value3"}<br>
}<br>
locals.variable "example_map"["key2"]<br>
## Conditions
resource "aws_instance" "server"{<br>
   instance_type = var.environment == "development" ? "t2.micro" : "t2.small"
 <br> 
  Terraform uses resource blocks to manage infrastructure, such as virtual networks, compute instances, or higher-level components such as DNS records.<br>
  
## Function
The Terraform configuration language allows you to write declarative expressions to create infrastructure. While the configuration language is not a programming language, you can use several built-in functions to perform operations dynamically.
We have a lot of function in terraform , you can create your self, for example i create function for myself after that you can see the result:<br>
ex:<br>
locals {<br>
name = "John Cena"<br>
fruits = ["apple", "banana", "mango"]<br>
message = "Hello ${upper (local .name)}! I know you like ${join(",", local. fruits) }"<br>
}<br>

result:<br>
Hello JOHN CENA! I know you like apple, banana, mango<br>

## Resourcedependency
Create relationship between two different resources.there are two types of dependancy :<br>
#### implicit dependancy
is done automatically by terraform
#### explicit dependancy

for ex:<br>
resource "aws _instance" "name" {<br>
vpc security group ids = aws security group.mysg.id<br>
resource "aws security group" "mysg" {<br>
#inbound rules<br>
}
test for asr
iman its last one
