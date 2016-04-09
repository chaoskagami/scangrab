scangrab
========

Installing
----------

tl;dr - To install, fetch whatever blob floats your boat from the dist folder and put it somewhere as +x. Run `scangrab -U` to get a new copy in the future (saves commands manually typed.)

Or if you're a developer, there's also `make install` which copies the git repo to /usr/share/scangrab and adjusts paths internally.

Do not report bugs unless you can reproduce them with the git repo, installed git repo, or a raw build.

About
-----

The rationale behind this tool is that I became sick of the lack of manga downloading tools that were simple and well documented. Scangrab is incredibly simplistic, unsophisticated, and to an extent, dumb.

To use this, you'll need GNU coreutils, as well as grep and sed. You'll also need a downloader tool, like wget, curl or aria2 (but caveat, POSTs with aria2 doesn't work so logins will fail. Cookies will need to be manually prepared.)

Unfortunately, certain sites will not work without extra tools to support them. See `SUPPORTED.md` for currently supported sites.

For Mac people: I'm not testing it on a Mac, I do not own a functional modern Mac, nor do I ever intend to purchase another Mac. If you submit a PR or issue with notes on how to do stuff so it works there, I'll take note of it for the future. For now, this tool is tested on Linux and Cygwin only.

This tool will not work on a POSIX /bin/sh implementation. I have on occasion tested on zsh, but for the most part it is tested mainly on bash and requires bash-like semantics. This means using scangrab on dash, mksh, fish, tcsh, csh, etc will probably not work.

License
-------

This is open source software released under the terms of GPLv3. Read COPYING. Copyright (C) Jon Feldman (@chaoskagami), 2016, etc.

Please pay heed to your local laws and don't redistribute anything you download. Support authors you like by buying their works (you should see my shelves, seriously.)

This software itself contains no content from any scanlation site and I'm not responsible for how you (mis)use it.
