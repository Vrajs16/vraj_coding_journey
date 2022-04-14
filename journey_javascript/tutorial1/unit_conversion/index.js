let conversionNumber = 0;
let number = document.getElementById("number");
number.value = conversionNumber;

let len = document.getElementById("length");
len.textContent = conversionNumber + " meters = " + (conversionNumber * 3.280839895).toFixed(3) + " feet | " + conversionNumber + " feet = " + (conversionNumber / 3.280839895).toFixed(3) + " meters";

let volume = document.getElementById("volume");
volume.textContent = conversionNumber + " liters = " + (conversionNumber / 3.785411784).toFixed(3) + " gallons | " + conversionNumber + " gallons = " + (conversionNumber * 3.785411784).toFixed(3) + " liters";

let mass = document.getElementById("mass");
mass.textContent = conversionNumber + " kilos = " + (conversionNumber * 2.2046226218).toFixed(3) + " pounds | " + conversionNumber + " pounds = " + (conversionNumber / 2.2046226218).toFixed(3) + " kilos";


function watchtyping() {
    conversionNumber = number.value;
    len.textContent = conversionNumber + " meters = " + (conversionNumber * 3.280839895).toFixed(3) + " feet | " + conversionNumber + " feet = " + (conversionNumber / 3.280839895).toFixed(3) + " meters";
    volume.textContent = conversionNumber + " liters = " + (conversionNumber / 3.785411784).toFixed(3) + " gallons | " + conversionNumber + " gallons = " + (conversionNumber * 3.785411784).toFixed(3) + " liters";
    mass.textContent = conversionNumber + " kilos = " + (conversionNumber * 2.2046226218).toFixed(3) + " pounds | " + conversionNumber + " pounds = " + (conversionNumber / 2.2046226218).toFixed(3) + " kilos";
}