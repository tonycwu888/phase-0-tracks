//take the input string
//split it and store in temp array
//reverse the array order of the array
//then join the array back to create the reverse string

function reverse(input) {
  var arryStr = input.split("").reverse();
  reverseStr = (arryStr.join(""));
  return reverseStr;
}

var reverse2 = reverse("hello there");

if (1 == 1)  {
  console.log(reverse2);
}
