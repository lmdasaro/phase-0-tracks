//I need to take a string as a parameter and reverse it! ex: reverse("hello") should return "olleh".
//for each letter, I need to print it to the console in reverse.

//'' + 'a' would result in the string 'a'


// testing var str = "hello";


function reverse(str) {
	var reverseString =  '';
	for (var i =str.length-1; i >= 0; i--) 
	reverseString += str[i];
	return reverseString;
}
console.log(reverse("hello"));

console.log(reverse("Lisa D'Asaro"));