var colors = ["teal", "fuschia", "jade", "tangerine"]

var horseNames = ["Ed", "Silver", "Bojack", "Seabiscuit"]


colors.push("lavender");

horseNames.push("Lucky");

//console.log(colors);

var horseColors = {}

for (var i = 0; i < horseNames.length; i++){
    horseColors[horseNames[i]] = colors[i];
}

console.log(horseColors);

function Car(make, model, color) {

    this.make = make;
    this.model = model;
    this.color = color;

    this.drive = function() {console.log("Our car drives!"); };

}

var ourCar = new Car("Honda","Accord", "Silver");

console.log(ourCar);

ourCar.drive();


var ourCartoo = new Car("Mazda","Speed3","Black");

console.log(ourCartoo);

var ourCarthree = new Car("Tesla","Model S P100D","Crimson");

console.log(ourCarthree);