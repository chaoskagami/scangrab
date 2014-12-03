scangrab
=====

Eventually, I became sick of the lack of manga downloading tools that were simple and well documented.

To use this, you'll need the following incredibly common tools: grep, sed, bash, wget, and zip. If you don't have these...well, try not running it on android or a netgear router. :P

Scangrab is incredibly simplistic, unlike a number of alternatives. It consists of multiple shell scripts (which can be merged using the 'merge' tool).

Here's the list of sites it currently handles:
 * Mangareader
 * Batoto
 * Dynasty Scans
 * Fakku

To be honest, the reason I originally coded this was Dynasty Scans' nonsense "five zips a day" limit. By viewing the images standalone, I'm already downloading more data than the zip. Also, disatisfaction in general with hakuneko - Adding more sources is impossible, because it consists of far too much GUI code.

To add a new source to download from, make a shell script in modules/, say, arandom. There should be two functions - auto_arandom and dl_arandom. auto_arandom should determine from $1, the url, whether it is the right plugin, and call dl_arandom if so. dl_arandom would do the bulk of work.

The 'merge' script will merge all of the shell scripts into a more permanent and standalone scangrab-merge. This can be dropped anywhere, say, /usr/local/bin.

A lot of temporary files may show up with some sites. This is normal. I may rewrite to use eval later everywhere.
