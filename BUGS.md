Info on weird behavior that is NOT bugs
----------------

 * Eh and Ex do some things very strange. Normally, the download of an image counts as one towards your total; when logged in, a full-size image counts as FIVE. Therefore, a 224-page manga would eat approximately 1120 images of your limit. So, downloading four and half full manga would reach the limit. Take into account bad H@H peers whom don't give out data, and this is annoying. Luckily, it regenerates at a rate of 3/min, so per 24 hour period, you'll regain 4320 possible images. Meaning, there's a rough limit of four manga/day. PLEASE KEEP THIS IN MIND WHILE FETCHING THINGS. At least it costs a grand total of zero credits, right?

 * Boorus generate a specialized structure. All images/webms/swf/etc will be placed in a subfolder 'content'. All of the metadata will be put in a directory named 'meta'. Images are named by ID, NOT MD5. MD5 is a crappy algorithm with loads of collisions anyways. If you just want all the images; after the download finishes, you can safely delete the meta directory and move everything from contents elsewhere.

Actual issues
----------------

 * Deleted as of July 14, 2015 - Mangareader.
   * There are better sources anyways.

 * Because E-H's H@H is stupid, sometimes it creates corrupt files that no downloader tool detects (e.g. chopped jpegs.) It's nice in concept - a distibuted CDN, but in practice, there's little to no checking if peers supply valid images. Since they now serve the actual viewer webpage, we need a way to check file validity.
   * Mostly resolved. We use IM's identify, and quickly disconnect from unresponsive H@H nodes. We try a fallback on failure using the 'not loading' button.

 * Batoto changes things so frequently it's annoying. I'll try to fix it ASAP but no guarantees about speediness.
