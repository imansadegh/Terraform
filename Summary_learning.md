# Terraform
## HCL (Hashicorp Configuration Language )
 /*   
this is a
multi line
comment*/

## Blocks
A block is a container for other content.
Blocks are defined by theri type and enclosed in curly braces{}.

block_type {
attribute1 = value1
attribute1 = value1
}

ex: resource block , data block , output block , ...

## Attributes

key = value

for example this is resource block :
resource "aws_instance" "web" {
  ami                    = "ami-a0cfeed8"
  instance_type          = "t2.micro"
  user_data              = file("init-script.sh")

  tags = {
    Name = random_pet.name.id
  }
}
## Datatypes

## Conditions

## Function

## Resourcedependency



