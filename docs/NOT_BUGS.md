Things that are not bugs
========================

Mangafox
--------

tl;dr NOT HAPPENING, EVER.

Long: No, I will not add a scraper for them. If you want it, do it yourself. It won't even be accepted as PR. Here's why:

 * They rip off translators without giving proper credit.

 * They upload official, copyrighted translations with incorrect attribution and don't properly respond to DMCA.

 * Everything is a 75%-Q jpeg, in other words... absolute crap quality.

 * Every image has a gigantic uncorrectible watermark at the bottom.

Batoto
------

tl;dr They keep breaking shit, and I've had it.

Long: Sometime late 2015, they replaced the backend with one that used entirely AJAX for manga reading. As a byproduct of this, it was no longer possible to retrieve image lists without javascript support. I impemented a hackish workaround using xulrunner - this has since broken around Spring, 2016, as well as broken in any browser that isn't the latest firefox and chrome. This made some things painfully clear:

A) They don't care about security.

B) They don't really care about their users, because every addon broke as well then (with some remaining unfixed) and the forum response was generally negative.

C) They don't care about compatibility or sane use of web standards. They're (ab)using implementation-specific behavior.

In the end, I can't be bothered to continue providing support for batoto. They update too frequently, and the admins have made clear they don't like scrapers. Every viewer page results in some 'Error 10004' on Pale Moon now, rendering me unable to even access manga there.

So, unless you have some brilliant foolproof rock-solid idea to prevent the incessant rewrites, batoto isn't coming back. I'm not averse to it, but I'm not doing the maintenance here.

