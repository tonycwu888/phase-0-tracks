var horseColor = ['blue', 'purple', 'pink', 'rainbow'];
var horseName = ['Jeff', 'Steven', 'Tony', 'Jonah'];

horseColor.push('black');
horseName.push('John');


function makeObject(arryKey, arryValue) {
  var newObject = {};
    for (idx=0; idx < arryKey.length; idx++)  {
      newObject[arryKey[idx]] = arryValue[idx];
    }
  return newObject;
}

var horseBarn = makeObject(horseName, horseColor);

console.log(horseBarn);
