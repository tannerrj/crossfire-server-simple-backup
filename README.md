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

 * `account`: directory of player files and unique apartment maps
    * Player files: files that start with the player's name and ends in .pl (i.e., `Bart.pl`)
      * Player content files: Files that start with the player's name and ends in .knowledge and .quest (i.e., `Bart.knowledge` and `Bart.quest`)
    * Apartment files: unique maps that only the player/owner can enter, or DM can enter if the player is in said map; the files start with an underscore and contain a map name and location reference (i.e., `_scorn_apartment_apartments`)
 * `accounts`: file containing Account name:Password:Account last used:Characters (semicolon separated):created:expansion
 * `banish_file`: file containing players banned or not allowed to play on the server
 * `bookarch`: file that contains all the available readable book and scroll titles, along with the level of difficulty and other information
 * `clockdata`: file used to track passage of time in-game
 * `crossfireboard`: binary file for content from the in-game message boards
 * `crossfiremail`: binary file for content from the in-game postal mail
 * `datafiles`: directory containing various log files for guilds, log file for events related to each player such as creation date and last login
     * `GuildHouse_log`: file that contains Guild status in the format of `#|Founded_Date|Points|Status|Quest_points`
     * `Player_log`: file containing all player files in the format of `#|Born|IP|Last_Login_Date|Login_Count|Kick_Count|Last_Kick_Date|Muzzle_Count|Last_Muzzle_Date`
 * `factions.db`: binary file for a not actively used component, but this logs reputation of players based on their actions and interactions with other monsters
 * `highscore`: file tracking overall level and ranking of players
 * `highscores`: file tracking and ranking players experience scores for all the different skills types and includes: (note - the individual skills files will be created and updated only if a player on the server has such a skill and uses the skill to gain experience points)
     * alchemy
     * bargaining
     * bowyer
     * clawing
     * climbing
     * disarm_traps
     * evocation
     * find_traps
     * fishing
     * flame_touch
     * hiding
     * inscription
     * jeweler
     * jumping
     * karate
     * levitation
     * literacy
     * lockpicking
     * meditation
     * mining
     * missile_weapons
     * mountaineer
     * one_handed_weapons
     * oratory
     * praying
     * punching
     * pyromancy
     * sense_curse
     * sense_magic
     * set_traps
     * singing*
     * smithery
     * sorcery
     * stealing*
     * summoning
     * thaumaturgy
     * throwing
     * two_handed_weapons
     * thaumaturgy
     * use_magic_item
     * woodsman
     * wraith_feed
     * writing
 * `ImperialBank_DB`: binary file for content tracking banking system account balances and transactions
 * `maps`: unknown
 * `players`: old folder for player files?
 * `PShop`: binary file for content for tracking player shop data for maps found in Brittany
 * `SlotMachine_file`: binary file for content for tracking odds and payout for the in-game slot machines
 * `template-maps`: unknown
 * `temp.maps`: unknown
 * `unique-items`: directory containing maps that have areas that do not reset


## Contributing

 * Contributions are welcome.
 * Pull requests are welcome.
 * Creating a fork on this code base is also welcome.

## Questions:

I can be reached via [tannerrj GitHub Profile](https://github.com/tannerrj)
