scangrab
=====

tl;dr - To install, fetch whatever blob floats your boat from the dist folder and put it somewhere as +x. If you need to report an issue, please use the scangrab.raw version - line numbers are fucked in the min, and even worse in sfx.

Eventually, I became sick of the lack of manga downloading tools that were simple and well documented.

To use this, you'll need the following incredibly common tools:

 * grep
 * sed
 * wget
 * file
 * gunzip
 * zip

If you don't have these...well, try not running it on android or a netgear router. :P I also assume the GNU versions, so it may not work right on a mac.

I removed 'bash' from the tools list since the scripts are bash and zsh compatible. If you want to use zsh, just change the shebang. However, it's still not POSIX, so dash probably will not work.

Scangrab is incredibly simplistic, unlike a number of alternatives. It consists of multiple shell scripts, and that's it. Want one script? I've coded up the multiple scripts so they can all be clunked together into one script.

Here's the list of sites it currently handles (with scraper indicating it can generate a series batch file):

 * Mangareader
 * [scraper] Mangapark
 * [scraper] Batoto
 * [scraper] Dynasty Scans
 * [scraper] Fakku
 * [scraper] Most FoolSlide Sites (foolrulez, vortex-scans, etc)
 * E-H (Yeah, I know, I know...)

Some of the scrapers accept an extra parameter of a filter. The modules supporting this:

 * Batoto (Extra: Language. Try 'English', 'Chinese', 'Russian', 'French', etc.)

This is open source software relased under the terms of GPLv3. Read COPYING.

To be honest, the reason I originally coded this was Dynasty Scans' nonsense "five zips a day" limit. By viewing the images standalone, I'm already downloading more data than the zip. Also, disatisfaction in general with hakuneko - Adding more sources is impossible, because it consists of far too much GUI code.

To add a new source to download from, make a shell script in modules/, say, arandom. There should be two functions - auto_arandom and dl_arandom. auto_arandom should determine from $1, the url, whether it is the right plugin, returning 1 if so. dl_arandom would do the bulk of work by downloading $1. You must provide a scrape_arandom even if it's a stub.

The 'merge' script will merge all of the shell scripts into a more permanent and standalone scangrab.min. This can be dropped anywhere, say, /usr/local/bin. Merge's behavior can be adjusted, but the default is to minify and create an xz self-decompressing shell script. This is desirable because minifying shaves off 4k, and compressing cuts that down to a fourth. I'm a size-optimization freak. In detail, size comparisons are roughly:

 * Raw                        Same as git, add sizes.
 * Minified                   Roughly 1/2 Raw
 * Self-decompressing (gzip)  Roughly 1/5 Raw
 * Self-decompressing (bz2)   Roughly 1/5 Raw (10 bytes less than gz, give or take)
 * Self-decompressing (xz)    Roughly 1/5 Raw (200 bytes less than bz2, give or take)


A lot of temporary files may show up with some sites. This is normal. I may rewrite to use eval later everywhere.

Note: I will not add support for mangafox. Why? Their scans get run thru jpeg, they don't credit where it's due, and they watermark everything. Have fun coding that yourself.

Don't want anything NSFW because you can't or don't want it? Check the sfw branch out. It's sync'd every once in a while from master with the stuff removed.

