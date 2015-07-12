To add a new source to download from, make a shell script in src/modules. There should be a few functions of the following prototypes, as well as some variables:

Variables:
 * (mod)_longname - String, full site name
 * (mod)_url      - URL of site, or N/A
 * (mod)_state    - 0=Broken, 1=Working
 * (mod)_filt     - 1 if filtering capabilities are supported.

Functions:
 * auto_(mod)     - 1=URL matches site, 0=Not matched.
 * dl_(mod)       - Heavy lifter - downloads a set of images.
 * scrape_(mod)   - Scrapes a list of manga/sets to a file.

The following are optional; But provided for sites which need them:

Variables:
 * (mod)_loginreq - You need to login before this can be used. If set, you need to provide a login_(mod)
 * login_(mod)    - Logs into the site, creating a cookie jar.

These are internal functions meant to be used by you in your scripts. They abstract detail so you can simply do what you need to without resorting to calling commands directly in most cases.

 * type $textstyle    - Sets text style. 0=normal, 1=bold, 2=dim
 * color $color       - Sets text color. Generally, this follows a terminal scheme.
 * cbz_make $folder   - Compresses a folder to a cbz.
 * verify $image      - Will validate an image (is not corrupted.) In absence of imagemagick or other tools, this will act as if it succeeded.
 * spinner $1         - Shows a spinner at the end of a line. You should update this in a download loop. Avoid cluttering the terminal.
 * done_spin          - Cleans up spinner. Call after done.
 * mimetype           - Returns the mimetype of a file.
 * s_login $userfield $passfield $user $pass $url            - Logs into a site $url, putting $user and $pass into named fields $userfield and $passfield, respectively.
 * fetch $url $dest   - Fetches a webpage/image/anything from $url to $dest. If $dest is not supplied, $(basename $url) is used. Additionally, supplying - as $dest will output to stdout.
 * entity_to_char     - Accepts input from stdin, outputs to stdout. Translates most common html entitities to utf8. Also removes filesystem-illegal characters, such as '|' and '/'.
 * reverse_lines      - Reverses lines read from stdin, outputs to stdout. Use this instead of tail -r or tac.
