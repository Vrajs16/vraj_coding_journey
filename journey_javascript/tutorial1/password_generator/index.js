let pass1 = document.getElementById("pass1");
let pass2 = document.getElementById("pass2");
let pass3 = document.getElementById("pass3");
let pass4 = document.getElementById("pass4");
let sliderValue = document.getElementById("sliderValue");
let clipCopy = document.getElementById("clipcopy");

//prettier-ignore
let lowercaseAlphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
//prettier-ignore
let uppercaseAlphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
//prettier-ignore
let specialCharacters = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '=', '{', '}', '[', ']', '|', '\\', ':', ';', '"', '\'', '<', '>', ',', '.', '?', '/', '`', '~'];

let allcharacters = [
  ...lowercaseAlphabet,
  ...uppercaseAlphabet,
  ...numbers,
  ...specialCharacters,
];
let passwordLength = 15;
sliderValue.textContent = "Password Length: " + passwordLength;

//Max length 25 characters
//Min length 8 characters
function generatePassword() {
  let elements = [pass1, pass2, pass3, pass4];

  for (let i = 0; i < elements.length; i++) {
    let password = "";
    let randomIndex = 0;
    for (let j = 0; j < passwordLength; j++) {
      randomIndex = Math.floor(Math.random() * allcharacters.length);
      password += allcharacters[randomIndex];
    }
    elements[i].textContent = password;
  }
}

function slider(value) {
  passwordLength = value;
  sliderValue.textContent = "Password Length: " + passwordLength;
  generatePassword();
}

function popUp(value) {
  if (value !== "") {
    clipCopy.style.transition = "opacity .15s linear";
    clipCopy.style.opacity = 1;
    setTimeout(() => {
      clipCopy.style.opacity = 0;
    }, 2000);
  }
}
