//***phase 0 ******
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
    for (var i = 0; i < input.length; i++) {
      console.log(input[i].length);  //length of string

      console.log (temp.push(input[i].length)); //pushing string into new array
  // i was able to find the lengths of each string, but fail to pull the index of the longest string and print it
      var lengthTemp = temp.sort();
      console.log(lengthTemp);
    }
//print the index of longest string
//console.log(input[index of longest string])
  }

//  **** phase 1 ******
//finding a key value match
//create a set of key and values to pass into function
//function will accept 2 sets of key and values
//function will look at the values of the key in an object to see if any of the values match
//if any values of a key matches then return true
//otherwise, return false
//example input:  ({name: "joe", age: 34}, {name: "joe", age: 55})
//example output: true (because the value of the "name" key matches)


function keyValueMatch(input1, input2) {
  var keyValues = [input1, input2];
  console.log(keyValues[0] == keyValues[1]);
  console.log(keyValues[0]);
  console.log(keyValues[1]);

//i'm not understanding what is going on system is
//evaluating below if statement being true and when trying to print the key and value, it shows undefined
// trying to compare the vaules of the keys to see if any of them are equal so I can return
//true, but can't seem to understanding why below if statement is evaluating "true"
  if (input1.key == input2.value){
    console.log('hey');
    console.log(input2.value);
    console.log(input1.key);
  }
}

//***phase 2 ******
//generate random test data
//create function to accept int
//function will generate 3 random strings in an array (each string with length of 1-10 characters)
//input == array.length
//keep creating random strings until array.length is reached --
//if array.length is reach, return array of strings
//example input:  3
//example of possible output: ["ksdjdj", "ee", "utmdklllp"]

function randomTestData(numStr) {
  var text = "";
  var ranArry = [];
  var possible = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i < numStr; i++) {
    if (ranArry.length < numStr) {
      text += possible.charAt(Math.floor(Math.random() * 10));
      ranArry.push(text);
    }

  }
  return ranArry;

}
randomTestData(6);

longestPhrase(["tommy", "ray ray jones", "killer jonny", "mad max maxwell"]);

keyValueMatch({name: "joe", age: 34}, {name: "joe", age: 55});
