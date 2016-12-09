var colors = ["red", "ombre","sienna","orange"]; //these will be values
var names = ["Tinkerbell" , "Aladdin", "Snow White" , "Mickey Mouse"]; //these will be keys
colors.push("yellow");
names.push("Sammie");
console.log(colors);
console.log(names);
// Release # 1
var barn = {};
 for (var i = 0; i < names.length; i++) {
     barn[names[i]] = colors[i];
 }
console.log(barn);

//Release #2
function Carbuilder(model, color, automatic){
    this.model = model;
    this.color = color;
    this.automatic = automatic;
    this.unlock = function(){console.log("Beep Beep"); };
}
var mazda = new Carbuilder("Miata", "Green", true);
mazda.unlock();
console.log(mazda);

mazda.unlock();
var landrover = new Carbuilder("GT", "Red", false);
console.log(landrover);

mazda.unlock();
var ferrari = new Carbuilder("Spider", "black", false);
console.log(ferrari);
