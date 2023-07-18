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

## Function

## Resourcedependency



