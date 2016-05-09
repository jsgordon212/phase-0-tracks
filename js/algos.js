/*longestWord method:
set a variable equal to the first word or phrase of the array passed in as an argument
loop through the array one string at a time and compare the length of the variable to 
the next string in the array.
IF the variable is shorter than the next string, set the variable equal to that next string.
return the variable.*/


function longestWord(wordList){

	var longestWord = wordList[0];

	for(var i = 1 ; i < wordList.length-1; i++){

		if(longestWord.length < wordList[i].length){

			longestWord = wordList[i];
		} 
	}

	return longestWord;
}

/*commonPair method:
set two variables equal to the array of keys returned by the Object.keys method.
loop through the first array, setting two variables equal to the current item in the array
and the value of that item.
For each loop of the first array, enter a new loop of the second array.
set two variables equal to the current item and value of the second array.
IF the keys and the values of a given loop match return true, If not loop to the next item.
If all the loops are completed without a matching pair, return false.*/


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


/*random data method:
Set a variable equal to the alphabet as a string and a variable equal to an empty array.
Use a For loop as many times as the inter passed in the argument.
Set a variable to an empty string.
The inside For loop will iterate randomly between 1-10 times.
The blank variable will equal itself plus a random character from the alphabet string.
The completed string will be added to the empty array and the variables reset starting the
next loop.
After all loops are finished the array is returned.
*/

function randomData(array_size){

	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var output = [];

	for(var i = 0; i < array_size; i++){

		var randWord = "";

		for(var j = 0; j < Math.floor((Math.random() * 10) + 1); j++){

			randWord = randWord + alphabet[randChar = Math.floor((Math.random() * 25) + 1)];

		}

		output.push(randWord);
	}

	return output;

}



/*var fruits = ["Banana", "Apple", "Mango", "pear", "the longest fruit ever"];

console.log(longestWord(fruits));

var names = ["Barney", "Wilma", "Fredh", "Pebbles", "Dino", "Bam Bam"]

console.log(longestWord(names))*/

var x = {name: "Steven", weight: 154, age: 53};
var y = {name: "Stevn", age: 53, weight: 134, height: 6};


for(var i = 0; i < 10; i++){

	my_array = randomData(Math.floor((Math.random() * 10) + 1));
	console.log(my_array);
	console.log(longestWord(my_array));

}