let countEl = document.getElementById("count-el");
let saveEL = document.getElementById("save-el");

let count = 0;

function increment() {
    count += 1;
    countEl.innerText = count;
}

function save() {
    saveEL.textContent += count + " - ";
    count = 0;
    countEl.textContent = count;
}

// let welcomeEl = document.getElementById("welcome-el");
// let myname = "Vraj";
// let greeting = "Welcome back!"
// welcomeEl.innerText = greeting + " " + myname;

// welcomeEl.innerText += "👋";
