var f = "@PAGE_URI@";
function g() {
  var b = document.getElementById("browser");
  b.loadURI(f, null, null);
  setTimeout(function() {
    dump("==== START DUMP ====");
    dump(b.contentDocument.documentElement.innerHTML);
    dump("==== END DUMP ====");
  }, 5000);
}
addEventListener("load", g, false);
