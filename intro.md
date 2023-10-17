# Crossfire Server Simple Backup

User
Show me a bash script that creates a tar.gz backup of the following directory /usr/games/crossfire/var/crossfire



You can create a bash script to create a tar.gz backup of the `/usr/games/crossfire/var/crossfire` directory using the following code:

```bash
#!/bin/bash

# Define the source directory and backup filename
src_dir="/usr/games/crossfire/var/crossfire"
backup_filename="crossfire_backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Check if the source directory exists
if [ ! -d "$src_dir" ]; then
  echo "Source directory does not exist: $src_dir"
  exit 1
fi

# Create the tar.gz backup
tar -czvf "$backup_filename" "$src_dir"

if [ $? -eq 0 ]; then
  echo "Backup created successfully: $backup_filename"
else
  echo "Backup creation failed."
fi
```

Save the script to a file (e.g., `backup_crossfire.sh`), make it executable with the `chmod +x backup_crossfire.sh` command, and then run it with `./backup_crossfire.sh`. This script will create a tar.gz backup of the specified directory with a timestamp in the filename.