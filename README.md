# Crossfire Server (Simple) Backup

## Description

This is a bash script that creates a tar.gz backup of the `/usr/games/crossfire/var/crossfire` directory, with a date stamp in the filename.

## Installation

It is helpful to have Git installed to download all the related code for the `Crossfire Server (Simple) Backup`.

### Requirements

The script requires a fully installed and working Crossfire server. Instructions on how to set up the server can be found on the [Crossfire Wiki](http://wiki.cross-fire.org/dokuwiki/doku.php/server:server_compiling).

The script is designed to be run by the same user or with read and write (RW) permissions to the directory where all the game content is stored (`/usr/games/crossfire/var/crossfire`).

## Usage

Once the software is downloaded or pulled via Git:

 1. Change (`cd`) to the directory where the script is located (e.g., `cd script`).
 2. Make the backup script executable with the `chmod +x backup_crossfire.sh` command.
 3. Run the command with `./backup_crossfire.sh`.
 4. This script will create a tar.gz backup of the specified directory with a timestamp in the filename.

The successful backup and output of the script should look like this:

```

Backup created successfully: crossfire_backup_20231121_152754.tar.gz
Backup file exists: crossfire_backup_20231121_152754.tar.gz

```

## Guidelines

### Description: Questions to Consider

 * What is the app for?
   * This app is for anyone running a Crossfire server who wants to ensure player account data is backed up and saved.
 * What was your motivation?
   * I developed this script while working on a gaming project of [Crossfire](https://sourceforge.net/projects/crossfire/). I often encountered questions on [Discord](https://crossfire.real-time.com/discord/) or [IRC](https://crossfire.real-time.com/irc/) or within game servers about backing up player data, so I collected enough information to create this bash script.
 * What problem does it solve?
   * It provides a quick and simple backup of player data, including login account data and unique maps such as guilds and apartments.
 * What else should people know about this script?
   * This does NOT create an incremental backup; it backs up all in-game data each time the script runs.

## Usage:

When you run this script, it will create a tar file in the following format: `crossfire_backup_yearmonthday_hourminutesecond.tar.gz` and backup the data in `/usr/games/crossfire/var/crossfire`.

 * `account`: directory of player files and unique apartment maps
  * Player files: files that start with the player's name and end in .pl (e.g., `Bart.pl`)
    * Player content files: Files that start with the player's name and end in .knowledge and .quest (e.g., `Bart.knowledge` and `Bart.quest`)
  * Apartment files: unique maps that only the player/owner can enter or DM can enter if the player is in the map; files start with an underscore and contain a map name and location reference (e.g., `_scorn_apartment_apartments`).
 * `accounts`: file containing Account name:Password:Account last used:Characters (semicolon separated):created:expansion.
 * `banish_file`: file containing players banned or not allowed to play on the server.
 * `bookarch`: file that contains all the available readable book and scroll titles, along with the level of difficulty and other information.
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
     * singing
     * smithery
     * sorcery
     * stealing
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
 * `unique-items`: directory containing maps that have areas that do not reset such as certain world maps, HallOfDMs, et al.


## Contributing

 * Contributions are welcome.
 * Pull requests are welcome.
 * Creating a fork on this code base is also welcome.

## Questions:

I can be reached via [tannerrj GitHub Profile](https://github.com/tannerrj)

## License:

MIT License

## Crossfire Social Media Links

 * [Facebook](https://www.facebook.com/crossfireproject/)
 * [Mastodon](https://mastodon.social/@crossfiremrpg)
 * [X (Formerly Twitter)](https://twitter.com/crossfiremrpg/)