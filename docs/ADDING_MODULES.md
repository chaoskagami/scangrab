To add a new source to download from, make a shell script in src/modules. There should be a few functions of the following prototypes, as well as some variables:

Variables:

 * (mod)_longname - String, full site name

 * (mod)_url      - URL of site, or N/A

 * (mod)_state    - 0=Broken, 1=Working

 * (mod)_filt     - 1 if filtering capabilities are supported.

Functions:

 * auto_(mod)     - 1=URL matches site, 0=Not matched.
   * $1             - URL

 * dl_(mod)       - Heavy lifter - downloads a set of images.
   * $1             - URL
   * ...            - Anything extra the user passes.

 * scrape_(mod)   - Scrapes a list of manga/sets to a file.
   * $1             - URL
   * ...            - Anything extra the user passes.

The following are optional; But provided for sites which need them:

Variables:
 * (mod)_loginreq - You need to login before this can be used. If set, you need to provide a login_(mod)
 * login_(mod)    - Logs into the site, creating a cookie jar.

These are internal functions meant to be used by you in your scripts. They abstract detail so you can simply do what you need to without resorting to calling commands directly in most cases. If you want to look through for more comprehensive docs, check the source code. It's rather well documented.

 * type $textstyle
    Sets text style. 0=normal, 1=bold, 2=dim

 * color $color
    Sets text color. Generally, this follows a terminal scheme.

 * cbz_make $folder
    Compresses a folder to a cbz.

 * verify $image
    Will validate an image is not corrupted or invalid. In absence of imagemagick or other tools,
    this will act as if it succeeded.

 * spinner $mesg
    Shows a spinner at the end of a line, with $mesg inside it. You should update this in a download loop.
    Avoid cluttering the terminal.

 * spinner_done $mesg
    Cleans up spinner. Call after done. By default $mesg is 'OK'.

 * mimetype
    Returns the mimetype of a file.

 * s_login $userfield $passfield $user $pass $url $extra
    Logs into a site $url, putting $user and $pass into named fields $userfield and $passfield, respectively.
    Anything specified in extra will be added to the POST, which is useful for getting around bot filters.

 * fetch $url $dest
    Fetches a webpage/image/anything from $url to $dest. If $dest is not supplied,
    content disposition is used with wget, otherwise $(basename $url)
    Additionally, supplying - as $dest will output to stdout.

 * entity_to_char
    Accepts input from stdin, outputs to stdout. Translates most common html entitities to utf8.

 * remove_illegal
    Accepts input from stdin, outputs to stdout. Removes filesystem-illegal characters, such as '/' on unix systems and '?' when on FAT, etc.

 * reverse_lines
    Reverses lines read from stdin, outputs to stdout. Use this instead of tail -r or tac. It's guaranteed to function regardless of platform.
