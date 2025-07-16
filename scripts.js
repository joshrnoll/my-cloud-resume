// Types content to the browser window at a given speed
function typeWriter(elementToType, speedInMilliseconds){
  let originalHTML = elementToType.innerHTML;
  elementToType.innerHTML = "";
  for (let i = 0; i < originalHTML.length; i++){
    setTimeout((char) => elementToType.innerHTML += char, i * speedInMilliseconds, originalHTML[i])
  }
}

function getElementsWithNoChildren(arrayOfElements){
  let elementsWithNoChildren = [];
  for (item of arrayOfElements){
    if (item.children.length === 0){
      elementsWithNoChildren.push(item);
    }
  }
  return elementsWithNoChildren;
}

let allHeaders = document.querySelectorAll("h1, h2, h3, h4")
let allBodyElements = document.querySelectorAll("a, span, p")
let allAccomplishments = document.querySelectorAll(".accomplishments")


for (item of allHeaders){
  typeWriter(item, 75)
}

for (item of allBodyElements){
  typeWriter(item, 5)
}

for (item of allAccomplishments){
  typeWriter(item, 5)
}