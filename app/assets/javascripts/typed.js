
var i = 0;
var j = 0;
var txt = 'you choose the food...';
var backtxt = "we choose the song!"
var speed = 75;



window.addEventListener("load", function(){
  typeWriter();
  setTimeout(backwards, 2500);
});



function typeWriter() {
  var displayArea = document.getElementById("typer");
 if (i < txt.length) {
   displayArea.innerHTML += txt.charAt(i);
   i++;
   setTimeout(typeWriter, speed);
 }
}



function backwards() {
  var backdisplayArea = document.getElementById("backtyper");
 if (j < backtxt.length) {
   backdisplayArea.innerHTML += backtxt.charAt(j);
   j++;
   setTimeout(backwards, speed);
 }

}
