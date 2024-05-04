#!/bin/bash

Files=("main.tf","provider.tf","variable.tf","terraform.tfvars")
resource_file="$(pwd | cut -d'/' -f8).tf"

validate_file() {
    if [ -e "$1" ]; then
        echo -e "\e[30mFile exists: $1\e[0m"
    else
        touch "$1"
        echo -e "\e[31mFile created: $1\e[0m"
    fi
}
# Set comma as the field separator
IFS=',' read -ra file_array <<< "${Files[@]}"

# Print each element of the array
for file in "${file_array[@]}"; do
    validate_file "$file"
done
validate_file "$resource_file"