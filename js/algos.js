//function accept array as argument
//count how many strings are in the array
//count the letters in each string, locate the longest string
//sort the string length in the array.
//print out the last string of the array because that will be longest string in the array

//example input:  ["tommy", "ray ray jones", "killer jonny", "mad max maxwell"]
//example output: "mad max maxwell"

function longestPhrase(input)  {
    var temp = [];
    //console.log(input.length);
    for (i = 0; i < input.length; i++) {
      console.log(input[i].length);  //length of string
      //console.log (input[i]); //string
      //if ((input[i].length) < (input[i+1].length)) {

      //}

      console.log (temp.push(input[i].length)); //pushing string into new array
  // i was able to find the lengths of each string, but fail to pull the index of the longest string and print it

      var lengthTemp = temp.sort();
      console.log(lengthTemp);

    }
//print the index of longest string
//console.log(input[index of longest string])


  }

longestPhrase(["tommy", "ray ray jones", "killer jonny", "mad max maxwell"]);
