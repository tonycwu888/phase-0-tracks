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

/* phase 1 (find a key-value match)
write a function that takes to object as arguement
first, loop through key of object and see if there's any match
  --if no match, loop over properties and see if match, if non found
  --return false
  --if any match is found, return true
example input {name: "Steven", age: 54} and {name: "Tamir", age: 54}
example result:  true
*/

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

//test code for longest phrase
var arryString = ["long phrase","longest phrase","longer phrase"];
console.log (longestPhrase(arryString));

//test code for key value pair match
var exampleObject1 = {name: "Steven", age: 54};
var exampleObject2 = {name: "Tamir", age: 55};
var exampleObject3 = {name: "Jonny", age: 55};

keyValueMatch(exampleObject1, exampleObject2);
keyValueMatch(exampleObject2, exampleObject3);
