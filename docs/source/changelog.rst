Changelog
=========

Version 0.9.5
-------------

*Release date: 2013/06/04*

* new: switch ``--md5`` to request MD5 hashes; they are now turned off by default,
  resulting in a **significant performance improvement** (af745c8581de)
* new: switch ``--exclude-pattern-ci`` for case-insensitive regular expressions
  (1c68ad21c72f)
* fixed: On Windows, the ``--exclude-pattern`` switch has not been case-sensitive
  (f5c00b9eccbc)
* fixed docs: installation instructions for py3bencode using ``setup.py`` (276a82e1cbc3)

Version 0.9.4
-------------

*Release date: 2013/02/26*

* new: documentation is now part of the repository, based on Sphinx (dd3d74f5cc26 and following)
* fixed: UDP tracker announce urls (c639e2f8408a + 69afadea92e4)
* fixed: piece count calculation (8450c6470d7f)
* fixed: inconsistent number of blank lines after summary (30f870d55c56)

Version 0.9.3
-------------

*Release date: 2010/12/13*

* ! fixed: tracker abbreviations for openbittorrent fixed. **new default abbreviations:
  openbt and publicbt** for openbittorrent and publicbittorrent. Note that both of them
  do no more offer a http announce URL (they are pure UDP trackers now).
* fixed: did not prompt the user when overwriting an existing torrent using the
  -o <output directory> switch
* fixed: version number was still 0.9 (now 0.9.3, of course), so it did not
  identify itself correctly, e.g. when issueing "--version".

Version 0.9.2
-------------

*Release date: 2010/11/09*

* fixed: the private switch (--private / -P) did not have any effect (reported by steven)
* fixed: wrong email address (now ...+dev@gmail.com instead of dev+...@gmail.com)

Version 0.9.1
-------------

*Release date: 2010/10/17*

* !!! fixed: torrents for single files could not be created (reported by JWA)

Version 0.9
-----------

*Release date: 2010/08/19*

* !!! fixed: creating torrents with multiple trackers did not work. the announce-list
  has been created in a wrong way by version 0.8.
* added: possibility to create tracker abbreviations. by default there is 'obt'
  for OBT((Open BitTorrent - an open tracker project))'s announce urls
* added: print summary after writing the torrent file
* added: skipping symlinks that point to files or directories that have already
  been processed (or are still being processed)
* added: -v / --verbose option (reports skipped & processed files)
* added: -q / --quiet option (at the moment this option only removes the summary
  in the end)
* added: you may now use --exclude-pattern to exclude files/folders based on
  regular expressions
* changed: applied `Python Style Guide (PEP 8) <http://www.python.org/dev/peps/pep-0008/>`_
* changed: using ``#!/usr/bin/env python3`` instead of ``#!/usr/bin/python3``
* changed: removed the huge get_size function, there was a better way to go
* fixed: removing duplicate trackers now
* fixed: empty comment now disables comment field (didn't work before)

Version 0.8
-----------

*Release date: 2010/08/10.*

Initial release.
