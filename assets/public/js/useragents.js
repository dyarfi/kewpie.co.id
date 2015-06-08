var metas = document.getElementsByTagName('meta');
var i;
if (navigator.userAgent.match(/iPad/i)) {
  for (i=0; i<metas.length; i++) {
	if (metas[i].name == "viewport") {
	  metas[i].content = "width=device-width, minimum-scale=0.62, maximum-scale=0.62";
	}
  }
  document.getElementsByTagName('body')[0].addEventListener("gesturestart", gestureStart, false);
}
function gestureStart() {
  //$('meta[name="viewport"]').attr('content', 'width=device-width, minimum-scale=0.25, maximum-scale=1.6');
  for (i=0; i<metas.length; i++) {
	if (metas[i].name == "viewport") {
	  metas[i].content = "width=device-width, minimum-scale=0.62, maximum-scale=0.62";
	}
  }
}