
#!/bin/bash

# Ask the user to enter their username
echo "Please enter your username:"

# Read the username and store it in the USER_NAME variable
read -r USER_NAME

# Ask the user to enter their password
echo "Please enter your password:"

# Read the password without displaying it on the screen
read -rs PASSWORD
echo

# Display the username and confirm password input
echo "Your username is: $USER_NAME"
echo "Password entered successfully!"
