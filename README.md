scangrab
=====

tl;dr - To install, fetch whatever blob floats your boat from the dist folder and put it somewhere as +x. Run scngrab upgrade to get a new copy in the future (saves commands manually typed.)

Do not report bugs using anything besides the git repo, or raw if you believe it is unrelated to the minifier; the minified and eval'd versions have no real debugging info, line formatting is destroyed, etc. The raw version has markers for file boundaries, so this is okay.

About
-----

The reason for this tool's existence is that I became sick of the lack of manga downloading tools that were simple and well documented. Scangrab is incredibly simplistic, unsophisticated, and to an extent, stupid.

To use this, you'll need GNU coreutils, as well as grep and sed. You'll also need a downloader tool, like wget, curl or aria2 (but caveat, POSTs with aria2 doesn't work so logins will fail. Cookies will need to be manually prepared.)

If you don't have these...well, try not running it on android or a netgear router. For mac people - I'm not testing it there, but if you can submit a PR with notes on how to do stuff so it works there, I'll take note of it for the future. For now, this tool is Linux/Cygwin/Macports w/ Coreutils only.

I removed 'bash' from the tools list since the scripts are bash and zsh compatible (mostly. I test it once in a while to make sure. Wish there was a way to use checkbashisms to check zsh compatibility.) If you want to use zsh, just change the shebang. THIS SCRIPT IS NOT POSIX /bin/sh COMPLIANT. dash, mksh, fish, tcsh and any other random not-bash or zsh shells will fail.

Here's the list of sites it currently handles:

 * Mangapark
 * ~~Batoto~~ Broken badly.
 * Dynasty Scans
 * Fakku
 * FoolSlide Sites (working: foolrulez, vortex-scans, etc)
 * Niconico Seiga (Manga)
 * MangaBox
 * Boorus (working: Danbooru, Safebooru)
 * E-H ,Ex (The latter requires login first, and will auto-edit cookies. See notes in BUGS.)

Some of the modules don't provide a scrape operation (read: E-H, Booru). Some of them support more advanced filters (like Batoto - language) and some of them are just plain syntactically weird (Booru)

This is open source software relased under the terms of GPLv3. Read COPYING. Please pay heed to your local laws and don't redistribute anything you download. And support authors you like, obviously. That said, this software itself contains no content from any site and I'm not responsible for how you (ab)use it. Treat it like youtube-dl in terms of legality. It's grey. Plain slate grey.

The reason I originally coded this was Dynasty Scans' nonsense "five zips a day" limit. By viewing the images standalone, I'm already downloading more data than the zip. Also, disatisfaction in general with hakuneko - Adding more sources is impossible, because it consists of far too much GUI code. And other tools are windows-only, or batch unfriendly, or don't properly do titles. I made this originally as a crap shell script that was inflexible and somehow over the course of this repo's life it has become infinitely more flexible and smart. Originally, it wasn't even capable of checking whether a download succeeded. Seriously.

You may have noticed that I'm a size optimization freak, by the various versions in dist. The shxz, shgz, shbz are minifed version compressed into an archive, with a decompress-and-eval before everything else. They require the compression tools to operate; if you have any doubts about what is supported, choose shgz, since gzip is required for operation anyways.

A lot of temporary files may show up with some sites. This is normal. I may rewrite to use eval later everywhere, but for now there are some issues with handling newlines.

Note: I will not add support for mangafox. Why? Their scans get run thru jpeg, they don't credit where it's due, and they watermark everything. Have fun coding that yourself.

Don't want anything NSFW because you can't or don't want it? Check the sfw branch out. It's pulled every once in a while from master with the stuff removed. That said, by every once in a while, I mean horribly out-of-date.

