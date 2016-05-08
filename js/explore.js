/*Reverse function
set a variable equal to an empty string
with a FOR loop, set the i variable equal to the input string length-1
decrease the value of i by one each loop until i less than 0
each loop set the empty string variable equal to itself and the character at index i (i starts at the end of the string)
return the new variable
*/



function reverse(word){

	var reversed = "";

	for(var i = word.length-1; i >= 0; i--){

		reversed = reversed + word.charAt(i);
	}

	return reversed;
}

var test = reverse("This is a test");

if(1 != 2){

	console.log(test);
}