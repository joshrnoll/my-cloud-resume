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

let errthang = document.querySelectorAll("*");
let elementsWithNoChildren = getElementsWithNoChildren(errthang);

for (item of elementsWithNoChildren){
  typeWriter(item, 15)
}