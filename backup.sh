# This script will back up the directory entered by the user.
  
echo "Enter the full path of the directory you want to back up:"
read sdir

bdir="/backup"

# Check if the entered directory exists
if [ ! -d "$sdir" ]; then
    echo "Error: Directory does not exist!"
else
    # Create the backup directory if it doesn't exist
    mkdir -p "$bdir"

    # Generate a timestamp for the backup file
    timestamp=$(date +"%Y%m%d%H%M%S")
    backup_file="$bdir/backup_$(basename "$sdir")_$timestamp.tar.gz"

    # Create a compressed backup
    tar -czf "$backup_file" "$sdir"

    echo "Backup for $sdir successfully created at $backup_file"

    # List backup files
    ls -lh "$bdir"
fi
