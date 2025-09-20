// Types content to the browser window at a given speed
function typeWriter(elementToType, speedInMilliseconds){
  let originalHTML = elementToType.innerHTML;
  elementToType.innerHTML = "";
  for (let i = 0; i < originalHTML.length; i++){
    setTimeout((char) => elementToType.innerHTML += char, i * speedInMilliseconds, originalHTML[i])
  }
}

function getElementsWithNoChildren(){
  let allElements = document.querySelectorAll("*")
  let elementsWithNoChildren = [];
  for (item of allElements){
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

// Pre-print formatting

let headerSection = document.getElementById("header")
let headerButtons = [];

window.addEventListener("beforeprint", () => {
  let buttons = document.querySelectorAll("button");
  let regex = /'http.+'/
  for (button of buttons){
    let buttonText = button.innerHTML + " | "
    let url = button.attributes.getNamedItem("onclick").value.match(regex)[0]
    let newAnchorElement = document.createElement("a")
    newAnchorElement.classList.add("replacedButtons")
    newAnchorElement.href = url
    newAnchorElement.innerHTML = buttonText
    headerButtons.push(button)
    headerSection.appendChild(newAnchorElement)
    button.remove()
  }
})

window.addEventListener("afterprint", () => {
  let links = document.querySelectorAll(".replacedButtons")
  for (link in links){
    for (button in headerButtons){
      if (button === link){
        headerSection.appendChild(headerButtons[button])
        links[link].remove()
      }
    }
  }
})
