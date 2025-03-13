# This script will get the input from the customer and check if the directory exists or not.
# If the directory does not exist, it will prompt the user to create a new directory.

echo " Enter the full path of directory "  # Prompt user to enter the directory path
read fdir  # Read user input

# Check if the directory exists
if [ ! -d fdir ]; then
  echo " Directory Exist"  # Print message if directory exists
else 
  echo " Directory Not Exist"  # Print message if directory does not exist
  echo " "

  echo " Enter the full path of Parent directory where you want to create new directory"
  read dpath  # Read the parent directory path
  cd $dpath  # Navigate to the parent directory

  echo " Enter the Name of directory you want to create "
  read newdirname  # Read the new directory name
  mkdir $newdirname  # Create the new directory
  echo " New Directory $newdirname created under $dpath"  # Confirmation message

fi
