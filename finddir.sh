# This script will get the input from customer and check if the directory exist or not , if directory not exist then it will create it.

echo " Enter the full path of directory "
read fdir
if [ !-d fdir ]; then
  echo " Directory Exist"
else 
  echo " Directory Not Exist"
  echo " "
  echo " Enter the full path of Parent directory where you want to create new directory"
  read dpath;
  cd $dpath;
  echo " Enter the Name of directory you want to create "
  read newdirname;
  mkdir $newdirname;
  echo " New Directory $newdirname created under $dpath"

fi

