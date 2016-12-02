var newPara = document.createElement('p');
var textPara = document.createTextNode("The chameleons tongue can reach its prey in just 0.07 split seconds, with the projectile acceleration reaching over 41 g's of force.")
newPara.appendChild(textPara);
var newParagraph = document.getElementById('about-my-pet');
var parent = newParagraph.parentNode;
parent.insertBefore(newPara, newParagraph);
function ourFunction() {
    //var lizard = document.getElementById('lizard-photo');
    lizard.style.border = "5px solid green";
}
function yellowBorder() {
    lizard.style.border = "10px dashed blue";
}
var lizard = document.getElementById('lizard-photo');
lizard.addEventListener("mouseover", ourFunction);
lizard.addEventListener("mouseout", yellowBorder);