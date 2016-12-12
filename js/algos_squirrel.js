/*  phase 0
write a function to find the logest string in an array
loop through array, compare first string to 2nd string
find the larger of the 2 string, store longer string in var
also store the length of the longer string and use that to compare with next string
then if the next one is larger, store that as longest string.
continue with loop until finish with array, then return longest string.
sample input: ["long phrase","longest phrase","longer phrase"]
expect output: "longest phrase"
*/


/* phase 1 (find a key-value match)
write a function that takes to object as arguement
first, loop through key of object and see if there's any match
  --if no match, loop over properties and see if match, if non found
  --return false
  --if any match is found, return true
example input {name: "Steven", age: 54} and {name: "Tamir", age: 54}
example result:  true
*/

/* phase 2 (generate random test data )
write a function that takes an int returns the number of strings in a array
  ---each word is randomly generated between 1-10 letters.
  1. create function to generate random number from 1-10
  2. create function to generate words from the alphabet.
  3. create generateRandomTestData function to call the 2 functions
---Add driver code that does the following 10 times: generates an array,
---prints the array, feeds the array to your "longest word" function,
---and prints the result.
*/

function longestPhrase(phrase)  {
  var longestLength = 0;
  for (i = 0; i < phrase.length; i++) {
    if (phrase[i].length > longestLength) {
      var longestString = phrase[i];
      longestLength = phrase[i].length;
    }
  }
  return longestString;
}

function keyValueMatch(obj1, obj2)  {
  var match = false;
  var objectKey1 = Object.keys(obj1);
  var objectKey2 = Object.keys(obj2);
  for (i = 0; i < objectKey1.length; i ++)  {
    if (obj1[objectKey1[i]] == obj2[objectKey2[i]]) {
      console.log("Key value pair for (" + objectKey1[i] + ") is " + obj1[objectKey1[i]] + " & " + obj2[objectKey2[i]] + ".  We have a match.");
      return true;
    }
  }
  if (!match) {
    console.log("There's no matching key-value pair in the 2 objects provided.");
  }
  return match;
}
// function to generate a random int range
function getRandomIntInclusive(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function randomTestData(numStr) {
  var ranWordLength = getRandomIntInclusive(1, 10);
  var text = "";
  var ranArry = [];
  var possible = "abcdefghijklmnopqrstuvwxyz";
  for (i = 0; i < numStr; i++)  {
    // was thinking of the following for loop would be able to
    //generate a random string with length from "ranWordLength", but seem to be a lot longer
    // please help and review code.
    for (count = 0; count <= ranWordLength; count++) {
      text += possible.charAt(getRandomIntInclusive(0, 25));
    }
    ranArry.push(text);
  }
  return ranArry;
}
/*
test code for longest phrase
----var arryString = ["long phrase","longest phrase","longer phrase"];
----console.log (longestPhrase(arryString));
*/

/*
test code for key value pair match
-----var exampleObject1 = {name: "Steven", age: 54};
-----var exampleObject2 = {name: "Tamir", age: 55};
-----var exampleObject3 = {name: "Jonny", age: 55};

-----keyValueMatch(exampleObject1, exampleObject2);
-----keyValueMatch(exampleObject2, exampleObject3);
*/

var randomTestDataResult = randomTestData(10);
console.log(randomTestDataResult);
console.log(longestPhrase(randomTestDataResult));
