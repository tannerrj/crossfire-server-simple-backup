# Crossfire Server (Simple) Backup

## Description

A bash script that creates a tar.gz backup with a date stamp in the file name of the following directory /usr/games/crossfire/var/crossfire

## Installation

It is helpful to have git installed to download all the related code for `Crossfire Server (Simple) Backup`

### Requirements

The script requires a fully installed and working Crossfire server, instructions on how to do that can be found on the [Crossfire Wiki](http://wiki.cross-fire.org/dokuwiki/doku.php/server:server_compiling)

The script is also design to be run as the same user or with RW permission to the directory where all the game content is stored, `/usr/games/crossfire/var/crossfire`

## Usage

Once the software is downloaded or pulled via git:

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

## Guidelines

### Description: Questions to Consider

 * What is the app for?
   * Anyone who is running a Crossfire server and wants to ensure player account data is backed up and saved
 * What was your motivation?
   * Working on a gaming project of [Crossfire](https://sourceforge.net/projects/crossfire/), I sometimes encounter a question on [Discord](https://crossfire.real-time.com/discord/) or [IRC](https://crossfire.real-time.com/irc/) or within one of the game servers about backing up player data, so I collected enough info to create this bash script
 * What problem does it solve?
   * Quickly provides simple backup of player data, login account data, and unique maps such as guilds and apartments
 * What else should people know about this script?
    * This does not create an incremental backup, this is a backup of all in-game data when the script runs


## Usage:

When you run this script, it will create tar file in the following format, `crossfire_backup_yearmonthyday_hourminutesecond.tar.gz` and backup the data in `/usr/games/crossfire/var/crossfire`:

 1. account - directory of player files
 2. accounts - file containing Account name:Password:Account last used:Characters (semicolon separated):created:expansion
 3. banish_file - file containing players banned or not allowed to play on the server
 4. bookarch - file that contains all the available readable book and scroll titles, along with the level of difficulty and other information
 5. cfdb_convert - file, python3 script that is used to convert python2 data to python3 compatible data
 6. cflogger.db - a not actively used component, but this logs numerous in-game events for further use
 7. cfnewspaper.db - a not actively used component, but this logs numerous in-game events for further us
 8. clockdata - file used to track passage of time in-game
 9. crossfireboard - content from the in-game message boards
 10. crossfiremail - content from the in-game postal mail
 11. datafiles - directory containing various log files for guilds, log file for events related to each player such as creation date and last login
 12. factions.db - a not actively used component, but this logs reputation of players based on their actions and interactions with other monsters
 13. highscore - file tracking overall level and ranking of players
 14. highscores - file tracking and ranking players experience scores for all the different skills types
 15. ImperialBank_DB - content tracking banking system account balances and transactions
 16. maps - unknown
 17. PicDB - unkown
 18. players - old folder for player files?
 19. PShop - content for tracking player shop data for maps found in Brittany
 20. SlotMachine_file - content for tracking odds and payout for the in-game slot machines
 21. template-maps - unknown
 22. temp.maps - unknown
 23. unique-items - directory containing maps that have areas that do not reset


## Contributing

Contributions are welcome. Creating a fork on this code base is also welcome.

## Questions:

I can be reached via [tannerrj GitHub Profile](https://github.com/tannerrj)
