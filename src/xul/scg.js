
function x(){
  Components.classes['@mozilla.org/toolkit/app-startup;1'].getService(Components.interfaces.nsIAppStartup).quit(Components.interfaces.nsIAppStartup.eForceQuit);
}
function g(){
  var f = PAGE_URL;
  var b = document.getElementById("browser");
  b.loadURI(f, null, null);
  setTimeout(function() {
    dump("\n==== START DUMP ====\n");
    dump(b.contentDocument.documentElement.innerHTML);
    dump("\n==== END DUMP ====\n");
    x();
  }, 5000);
}
addEventListener("load", g, false);
