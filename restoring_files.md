# Restoring Files

Now that you have a backup of important game server files, restoring them can require some special steps, which are covered in this document.

Some steps require [DM access](http://wiki.cross-fire.org/dokuwiki/doku.php/player_commands#dm) on the server, in addition to remote access or console access.

A very important reminder, case sensitivity is important in player and map names.

## Text Files vs Binary Files

A binary file cannot be modified or edited outside of how the game server reads and writes data to those files. Trying to modify the file will surely corrupt it and make it unusable.

Any text file can be restored or copied in to place in the relevant folder as part of the restore or data recovery.

There are some considerations to keep in mind though. See below.

### Player Files

 1. Restoring a player file requires the player to be logged out of the game.
 2. Copy or restore the player file (i.e., name.pl) to the proper location through your remote connection to the server.
    * NOTE: this restore step is outside the game and done through a remote connection such as ssh or console access to the server host.
 3. When the restore is completed, the player can log back in like they normally would do.

The game server does not need a reset or shutdown to restore files like this.

### Unique Maps

Unique maps (apartments, guild maps) are also text files.

Restoring a unique map requires the map to be "swapped out" from disk and this is done by using the dm [reset command](http://wiki.cross-fire.org/dokuwiki/doku.php/dm_commands#reset).

 1. While in DM mode, get the map path to the map in question (if a player is in the map, use 'who).
 2. Make sure that the player leaves the map, or else the map reset command will not work.
 3. Reset the map ('reset /path/to/map_name) until you see a message in the game client that indicates the map is not available, usually two (2) resets will do this.
    * NOTE: the map reset command in this syntax does NOT erase the map, it just makes the game server take the map out of active use.
 4. Copy or restore the map to the proper location through your remote connection to the server.
    * NOTE: this restore step is outside the game and done through a remote connection such as ssh or console access to the server host.
 5. Have the player(s) re-enter the map and confirm all is recovered or restored.

The game server does not need a reset or shutdown to restore files like this.

## Binary Files

 1. The game server should be [shutdown](http://wiki.cross-fire.org/dokuwiki/doku.php/dm_commands#shutdown) when restoring any of the binary files.
 2. The entire file must be restored or copied into place.
    * Note: do not merge the files, the restored file must overwrite and replace the file that is already in place.
 3. Start or launch the server as normal.
 4. Log back into the server and confirm all is recovered or restored and working correctly.


