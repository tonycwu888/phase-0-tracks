//get the input string
//split it up into an array of letters
//reverse the order of the array
//join the reversed array to make the new string
//return the joined reverse array.


function reverseString(input) {
    var splitString = input.split("");
    var reverseArry = splitString.reverse();
    var joinArry = reverseArry.join("");
    return joinArry;
}

var newReversedString = reverseString("hello there");
