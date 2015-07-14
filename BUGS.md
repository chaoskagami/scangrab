 * Deleted as of July 14, 2015 - Mangareader.
   * There are better sources anyways.

 * Because E-H's H@H is stupid, sometimes it creates corrupt files that no downloader tool detects (e.g. chopped jpegs.) It's nice in concept - a distibuted CDN, but in practice, there's little to no checking if peers supply valid images. Since they now serve the actual webpage, we need a way to check file validity.
   * Mostly resolved. We use IM's identify, and quickly disconnect from unresponsive H@H nodes. If things fail more than five times, we start forcing e-h itself to hand us images.

 * Batoto changes things so frequently its annoying. We print a notice specifically because this is the case.
