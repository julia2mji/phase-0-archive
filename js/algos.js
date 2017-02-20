//write a function that takes an array of words or phrases and returns the longest word or phrase in the array. 
//set up function taking in words array
//i should probably set up some variables to indicate longest and length?
//now, i wanna loop through my array and find the length of each word using .length  
//if the word is the longest, i want to print that word out


function longestWord(words){
	var long = 0; 
	var longest; 

	for (var i = 0; i < words.length; i++){
		if (words[i].length > long){ //if the array's length is greater than long
			var long = words[i].length; //set long to equal the array's length
			longest = words[i]; //set longest to my array 
		}
	}
	return longest; 
}

longestWord(["big", "bigger", "biggest"])