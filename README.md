scangrab
=====

Eventually, I became sick of the lack of manga downloading tools that were simple and well documented.

To use this, you'll need the following incredibly common tools: grep, sed, bash, wget, file, gunzip, and zip. Additionally, you need either tac or tail -r. If you don't have these...well, try not running it on android or a netgear router. :P

Scangrab is incredibly simplistic, unlike a number of alternatives. It consists of multiple shell scripts, and that's it. Want one script? I've coded up the multiple scripts so they can all be clunked together into one script.

Here's the list of sites it currently handles (with scraper indicating it can generate a series batch file):
 * Mangareader
 * [scraper] Mangapark
 * [scraper] Batoto
 * [scraper] Dynasty Scans
 * [scraper] Fakku
 * [scraper] Most FoolSlide Sites (foolrulez, vortex-scans, etc)

Some of the scrapers accept an extra parameter of a filter. The modules supporting this:
 * Batoto (Extra: Language)

This is open source software relased under the terms of GPLv3. Read COPYING.

To be honest, the reason I originally coded this was Dynasty Scans' nonsense "five zips a day" limit. By viewing the images standalone, I'm already downloading more data than the zip. Also, disatisfaction in general with hakuneko - Adding more sources is impossible, because it consists of far too much GUI code.

To add a new source to download from, make a shell script in modules/, say, arandom. There should be two functions - auto_arandom and dl_arandom. auto_arandom should determine from $1, the url, whether it is the right plugin, returning 1 if so. dl_arandom would do the bulk of work by downloading $1. You must provide a scrape_arandom even if it's a stub.

The 'merge' script will merge all of the shell scripts into a more permanent and standalone scangrab-merge. This can be dropped anywhere, say, /usr/local/bin.

A lot of temporary files may show up with some sites. This is normal. I may rewrite to use eval later everywhere.

Note: I will not add support for mangafox. Why? Their scans get run thru jpeg, they don't credit where it's due, and they watermark everything. Have fun coding that yourself.
