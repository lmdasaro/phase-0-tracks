//A function needed that takes the longest word in an array and returns the word with the greatest length. I'll need to iterate through an array and determine which word has the greatest length value, then return that word.

function longestWord(arr){
	var longestWord = ""
	for(var i = 0; i < arr.length; i++){
		if(arr[i].length > longestWord.length){
			longestWord = arr[i];
		}
	}

	return longestWord;
}
//test code
console.log(longestWord(["apple", "banana", "cat", "dog", "elephant"]))
console.log(longestWord(["short", "long", "extraneous"]))

//A function needed that takes two objects and checks to see if the objects share at least one key-value pair. 

function pairShare(obj1, obj2){
	for(var key in obj1) {
		if (obj1[key] == obj2[key]){
			return true;
		}
	}	
	return false;
}
//test code
console.log(pairShare())