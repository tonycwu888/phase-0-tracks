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

function Car(color, make, model) {
    this.color = color;
    this.make = make;
    this.model = model;
    this.passengers = [];

    this.brake = function() {
      console.log("STOP>>>>>");
    }
    this.accelerate = function()  {
      console.log("Zooom...");
    }
    this.getInCar = function(name)  {
      this.passengers.push(name);
      console.log(name + " is now in the " + this.make + " " + this.model + "." );
    }
}

var fancyCar = new Car("black", "lincoln", "towncar");
var lyftCar = new Car("gray", "toyota", "prius");
fancyCar.getInCar("Leo");
fancyCar.accelerate();
fancyCar.brake();
console.log(fancyCar.passengers);
lyftCar.getInCar("drunk Marina bro");
lyftCar.getInCar("drunk Marina girl");
lyftCar.accelerate();
lyftCar.brake();
console.log(lyftCar.passengers);
