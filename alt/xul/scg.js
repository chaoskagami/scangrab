function x(){
  Components.classes['@mozilla.org/toolkit/app-startup;1'].getService(Components.interfaces.nsIAppStartup).quit(Components.interfaces.nsIAppStartup.eForceQuit);
}
function g(){
  var f = PAGE_URL;
  var b = document.getElementById("browser");
  b.loadURI(f, null, null);
  setTimeout(function() {
    dump(b.contentDocument.documentElement.innerHTML);
    x();
  }, 5000);
}
addEventListener("load", g, false);
