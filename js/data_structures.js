var colors = ["red", "orange", "green", "blue"];
var names = ["Ted", "Big Ted", "Little Ted", "Quick Ted"];

colors.push("yellow");
names.push("Lying Ted");

var assignedColors = {};

for(var i = 0; i < names.length; i++){

	var currentName = names[i]; 

	assignedColors[names[i]] = colors[i];
}

//console.log(assignedColors)

function Car(model, year, isRunning){

	this.model = model;
	this.year = year;
	this.isRunning = isRunning;

	this.sound = function() {

		if(isRunning){
			console.log("Vrroooomm!");
		} else {
			console.log("Clankity Clank")
		}
	}
}

var newCar = new Car("Cadillac", 1972, false);
newCar.sound();

var anotherCar = new Car("Ferrari", 2016, true);
anotherCar.sound();