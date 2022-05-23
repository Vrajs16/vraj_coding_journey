const service1 = document.getElementById("service1");
const service2 = document.getElementById("service2");
const service3 = document.getElementById("service3");
const taskUl = document.getElementById("task-ul");
const total = document.getElementById("total");
const send = document.getElementById("send-btn");
let totalCost = 0;
let taskList = [];

function removeli(id) {
  let destoryli = document.getElementById(`task${id}`);
  let price = destoryli.querySelector(".task-price").innerText.substring(1);
  let taskName = destoryli.querySelector(".task-name").innerText;
  destoryli.remove();
  totalCost -= parseInt(price);
  total.innerHTML = `$${totalCost}`;
  taskList = taskList.filter((task) => task !== taskName);
}

function renderItem(service) {
  if (!taskList.includes(service.taskName)) {
    taskList.push(service.taskName);
    let li = `<li id="task${service.id}" class="task-container">
              <div class="task-name">${service.taskName}</div>
              <button onclick="removeli(${service.id})" class="task-remove">Remove</button>
              <div class="task-price"><span class="symbol">$</span>${service.price}</div>
            </li>`;
    taskUl.innerHTML += li;
    totalCost += service.price;
    total.innerHTML = `$${totalCost}`;
  }
}

service1.addEventListener("click", function () {
  let serviceObject = { id: 1, price: 10, taskName: "Wash Car" };
  renderItem(serviceObject);
});

service2.addEventListener("click", function () {
  let serviceObject = { id: 2, price: 20, taskName: "Mov Lawn" };
  renderItem(serviceObject);
});

service3.addEventListener("click", function () {
  let serviceObject = { id: 3, price: 30, taskName: "Pull Weeds" };
  renderItem(serviceObject);
});

send.addEventListener("click", function () {
  taskList = [];
  totalCost = 0;
  total.innerText = "$0";
  taskUl.innerHTML = "";
});
