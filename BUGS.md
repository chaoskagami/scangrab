Info on weird behavior that is NOT bugs
----------------

 * Eh and Ex do some things very strange. Normally, the download of one non-fullsize image counts as one towards your total; when logged in, a full-size image counts as a variable amount. Therefore, a 224-page manga can theoretically eat your limit depending on the load on e-h as well as transfer size. Best case, four 224-page manga. Worst case; not even a whole one. I have never seen e-h serve images that cost more than 100 towards the 5000+ quota, so I use 100 as a theoretical MAX_QUOTA. This will be changed later to adjust if it ever exceeds the hard limit by delta-ing previous transfer cost.
 
 * Another thing about e-h worth noting is that image limits are counted by IP address, not by session cookie. If you use a VPN, reconnection will usually reset the limit. I personally think this is strange, but whatevs.

 * Boorus generate a specialized structure. All images/webms/swf/etc will be placed in a subfolder 'content'. All of the metadata will be put in a directory named 'meta'. Images are named by ID, NOT MD5. MD5 is a crappy algorithm with loads of collisions anyways. If you just want all the images; after the download finishes, you can safely delete the meta directory and move everything from contents elsewhere. Also, some stuff on danbooru requires a gold account. I will not be able to do anything about this, seeing as I'm not paying. Some metadata can be extracted usually from json, though.

Actual issues
----------------

 * Batoto changes things so frequently it's annoying. I'll try to fix it ASAP but no guarantees about speediness. The current method is hopefully future-proof.
 
 * Foolslide only gets zips. Right now, it doesn't fetch individual images in the event such functionality isn't available.
