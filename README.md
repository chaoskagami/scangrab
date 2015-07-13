scangrab
=====

tl;dr - To install, fetch whatever blob floats your boat from the dist folder and put it somewhere as +x. If you need to report an issue, please use the scangrab.raw version - line numbers are fucked in the min, and even worse in sfx.

NOW OFFICIALLY DUE FOR A RENAME. It supports danbooru now, so it's better than just a scangrabber. ;P

The reason for this tool's existence is that I became sick of the lack of manga downloading tools that were simple and well documented.

To use this, you'll need GNU coreutils, as well as grep and sed. You'll also need a downloader tool, like wget, curl or aria2 (but caveat, posting with aria2 doesn't work so logins fail.)

If you don't have these...well, try not running it on android or a netgear router. For mac people - I'm not testing it there, but if you can submit a PR with notes on how to do stuff so it works there, I'll take note of it for the future. For now, this tool is Linux/Cygwin/Macports only.

I removed 'bash' from the tools list since the scripts are bash and zsh compatible (mostly. I test it once in a while to make sure. Wish there was a way to use checkbashisms to check zsh compatibility.) If you want to use zsh, just change the shebang. THIS SCRIPT IS NOT POSIX /bin/sh COMPLIANT. dash, mksh, tcsh and any other random not-bash or zsh shells will fail.

Scangrab is incredibly simplistic, unlike a number of alternatives. It consists of multiple shell scripts, and that's it. All of them can be (and are, in dist) easily merged into a single monolithic script that can be moved around.

Here's the list of sites it currently handles:

 * Mangareader
 * Mangapark
 * Batoto
 * Dynasty Scans
 * Fakku
 * Most FoolSlide Sites (working: foolrulez, vortex-scans, etc)
 * Niconico Seiga (Manga)
 * MangaBox
 * Boorus (working: Danbooru, Safebooru)
 * E-H (Yeah, I know, I know...)

Some of the modules don't provide a scrape operation (read: E-H, Booru). Some of them support more advanced filters (like Batoto - language) and some of them are just plain syntactically weird (Booru)

This is open source software relased under the terms of GPLv3. Read COPYING. Please pay heed to your local laws and don't redistribute anything you download. And support authors you like, obviously. That said, this software itself contains no content from any site and I'm not responsible for how you (ab)use it. Treat it like youtube-dl in terms of legality. It's grey. Plain slate grey.

The reason I originally coded this was Dynasty Scans' nonsense "five zips a day" limit. By viewing the images standalone, I'm already downloading more data than the zip. Also, disatisfaction in general with hakuneko - Adding more sources is impossible, because it consists of far too much GUI code. And other tools are windows-only, or batch unfriendly, or don't properly do titles. I made this originally as a crap shell script that was inflexible and somehow over the course of this repo's life it has become infinitely more flexible and smart. Originally, it wasn't even capable of checking whether a download succeeded. Seriously.

You may have noticed that I'm a size optimization freak, by the various versions in dist. The shxz, shgz, shbz is the scangrab.min file compressed into an archive, with an decompress to stdout and eval payload. They're compressed and only require the compression tools to execute. If you're running this somewhere that can't run xz, for example, you can pick the shgz variant or shbz2. Also, the scangrab.min file is minified - a lot of things are replaced with garbage equivalents. This works much like a javascript minifier. Why isn't there a bash minifier?

A lot of temporary files may show up with some sites. This is normal. I may rewrite to use eval later everywhere.

Note: I will not add support for mangafox. Why? Their scans get run thru jpeg, they don't credit where it's due, and they watermark everything. Have fun coding that yourself.

Don't want anything NSFW because you can't or don't want it? Check the sfw branch out. It's sync'd every once in a while from master with the stuff removed.

