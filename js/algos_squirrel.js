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

var arryString = ["long phrase","longest phrase","longer phrase"];
console.log (longestPhrase(arryString));
