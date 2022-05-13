// Time
function getTime() {
	var time = new Date();
	clock = time.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true } )
	document.getElementById('time').innerHTML = clock;
}
getTime()


setInterval(() => {
	getTime()
}, 500);
