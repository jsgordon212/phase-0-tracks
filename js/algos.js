function longestWord(wordList){

	var longestWord = wordList[0];

	for(var i = 0; i < wordList.length-1; i++){

		if(longestWord.length < wordList[i + 1].length){

			longestWord = wordList[i + 1];
		} 
	}

	return longestWord;
}



function commonPair(obj1, obj2){

	var keysA = Object.keys(obj1);
	var keysB = Object.keys(obj2);

	for(var i = 0; i < keysA.length; i++){

		var a_key = keysA[i];
		var a_value = obj1[a_key];

		for(var j = 0; j < keysB.length; j++){

			var b_key = keysB[j];
			var b_value = obj2[b_key];

			if(a_key==b_key && a_value==b_value){

				return true;

			}
		}
	}

	return false;

}



/*var fruits = ["Banana", "Apple", "Mango", "pear", "the longest fruit ever"];

console.log(longestWord(fruits));

var names = ["Barney", "Wilma", "Fredh", "Pebbles", "Dino", "Bam Bam"]

console.log(longestWord(names))*/

var x = {name: "Steven", weight: 154, age: 53};
var y = {name: "Stevn", age: 53, weight: 134, height: 6};


console.log(commonPair(x, y));