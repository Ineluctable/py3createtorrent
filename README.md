# py3createtorrent

Documentation can be found [at Read the Docs](https://py3createtorrent.readthedocs.org/en/latest/user.html).

Quoted from there:

py3createtorrent is a comprehensive shell/commandline utility for creating torrents (Linux & Windows). It’s a GPL-licensed Python v3.1 script.

Some of the features:

* you can create huge torrents for any amount of data
* you can add a comment to the torrent file
* you can create private torrents (disabled DHT, ...)
* you can create torrents with multiple trackers
* you can exclude specific files/folders
* you can exclude files/folders based on regular expressions
* you can specify custom piece sizes
* you can specify custom creation dates



```
Usage: py3createtorrent.py [options] <file-or-directory> <main-tracker-url> [<backup-tracker-url> ...]

py3createtorrent is a comprehensive command line utility for creating
torrents.

Options:
  --version             show program's version number and exit
  -h, --help            show this help message and exit
  -p PIECE_LENGTH, --piece-length=PIECE_LENGTH
                        piece size in KiB. 0 = automatic selection (default).
  -P, --private         create private torrent
  -c COMMENT, --comment=COMMENT
                        include comment
  -s SOURCE, --source=SOURCE
                        source string, used to create a different infohash for cross-seeding
  -f, --force           dont ask anything, just do it
  -v, --verbose         verbose mode
  -q, --quiet           be quiet, e.g. don't print summary
  -o PATH, --output=PATH
                        custom output location (directory or complete path).
                        default = current directory.
  -e PATH, --exclude=PATH
                        exclude path (can be repeated)
  --exclude-pattern=REGEXP
                        exclude paths matching the regular expression (can be
                        repeated)
  --exclude-pattern-ci=REGEXP
                        exclude paths matching the case-insensitive regular
                        expression (can be repeated)
  -d TIMESTAMP, --date=TIMESTAMP
                        set creation date (unix timestamp). -1 = now
                        (default). -2 = disable.
  -n NAME, --name=NAME  use this file (or directory) name instead of the real
                        one
  --md5                 include MD5 hashes in torrent file
```
