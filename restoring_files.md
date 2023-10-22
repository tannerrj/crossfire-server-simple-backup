# Restoring Files

Now that you have a backup of your important game server files, the process of restoring them may involve some special steps, which are detailed in this document.

Certain steps necessitate [DM access](http://wiki.cross-fire.org/dokuwiki/doku.php/player_commands#dm) on the server, in addition to remote or console access.

It is crucial to remember that case sensitivity matters when dealing with player and map names.

## Text Files vs Binary Files

A binary file cannot be modified or edited in any way outside of how the game server reads and writes data to these files. Attempting to modify the file will inevitably corrupt it, rendering it unusable.

On the other hand, any text file can be restored or copied into the appropriate folder as part of the restoration or data recovery process.

However, there are some considerations to keep in mind. Please see below.

### Player Files

1. Restoring a player file requires the player to log out of the game.
2. Copy or restore the player file (e.g., name.pl) to the correct location via your remote connection to the server.
    * Note: This restoration step is conducted outside the game and is done through a remote connection, such as SSH or console access to the server host.
3. Once the restoration is complete, the player can log back in as they normally would.

It is important to note that the game server does not need to be reset or shut down to restore files like this.

### Unique Maps

Unique maps (apartments, guild maps) are also stored as text files.

Restoring a unique map requires swapping it out from the disk, and this can be accomplished by using the DM [reset command](http://wiki.cross-fire.org/dokuwiki/doku.php/dm_commands#reset).

1. While in DM mode, obtain the map's path that you want to restore (if a player is in the map, use 'who').
2. Ensure that the player leaves the map, as the map reset command will not work if a player is present.
3. Reset the map ('reset /path/to/map_name) until you see a message in the game client indicating that the map is no longer available. Usually, two (2) resets will achieve this.
    * Note: This specific syntax of the map reset command does not erase the map but instead removes it from active use on the game server.
4. Copy or restore the map to the appropriate location through your remote connection to the server.
    * Note: This restoration step is external to the game and should be performed through a remote connection, such as SSH or console access to the server host.
5. Have the player(s) re-enter the map and confirm that everything has been recovered or restored.

As with player files, it's important to understand that the game server does not need to be reset or shut down to restore files of this nature.

## Binary Files

1. When restoring any binary files, the game server should be [shut down](http://wiki.cross-fire.org/dokuwiki/doku.php/dm_commands#shutdown).
2. The entire file must be restored or copied into place.
    * Note: Do not merge the files; the restored file must overwrite and replace the existing file.
3. Start or launch the server as usual.
4. Log back into the server and confirm that everything has been successfully recovered or restored and is functioning correctly.