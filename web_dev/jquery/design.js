$("img").click(function() {
	alert("You clicked on the cute little baby ocelot!");
	$('h1').css("color", "pink");
	$('h1').css("border", "50px");
});

$(function() {
  console.log( 'meow' );
});

var button1 = $(".b1");
var button2 = $(".b2");

button2.click(function() {
	$('button:last').hide();
});

var text_field = $("#text");

text_field.mouseover(function() {
	$('button:last').show();
});

$('#button1').click(function() {
	$("p:first").css("color", "hotpink");
});

