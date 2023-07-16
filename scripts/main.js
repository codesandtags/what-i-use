let mainContainer = document.getElementById("main-container");
let darkModeIcon = document.querySelector(".dark-mode-icon");

function createItem(itemData) {
  let itemDiv = document.createElement("div");
  itemDiv.className = "item";

  let itemTitleLink = document.createElement("a");
  itemTitleLink.className = "item-title";
  itemTitleLink.href = itemData.url;
  itemTitleLink.innerText = itemData.name;
  itemDiv.appendChild(itemTitleLink);

  let itemDescription = document.createElement("div");
  itemDescription.className = "item-description";
  itemDescription.innerText = itemData.description;
  itemDiv.appendChild(itemDescription);

  return itemDiv;
}

function createSubcategory(subcategoryData, subcategoryName) {
  let subcategoryDiv = document.createElement("div");
  subcategoryDiv.className = "subcategory";

  let subcategoryTitle = document.createElement("div");
  subcategoryTitle.className = "subcategory-title";
  subcategoryTitle.innerText = subcategoryName;
  subcategoryDiv.appendChild(subcategoryTitle);

  for (let i = 0; i < subcategoryData.length; i++) {
    let item = createItem(subcategoryData[i]);
    subcategoryDiv.appendChild(item);
  }

  return subcategoryDiv;
}

function createCategory(categoryData, categoryName) {
  let categoryDiv = document.createElement("div");
  categoryDiv.className = "category";

  let categoryTitle = document.createElement("div");
  categoryTitle.className = "category-title";
  categoryTitle.innerText = categoryName;
  categoryDiv.appendChild(categoryTitle);

  for (let subcategoryName in categoryData) {
    let subcategory = createSubcategory(
      categoryData[subcategoryName],
      subcategoryName
    );
    categoryDiv.appendChild(subcategory);
  }

  return categoryDiv;
}

function addScrollDownAnimation() {
  var categories = document.querySelectorAll(".category");

  var observer = new IntersectionObserver(function (entries) {
    entries.forEach((entry) => {
      // If element is visible, add the 'fade' class
      if (entry.isIntersecting) {
        entry.target.style.animationPlayState = "running";
      }
    });
  });

  categories.forEach((category) => {
    category.style.animationPlayState = "paused";
    observer.observe(category);
  });
}

// Fetch the resume data from the JSON file
fetch("schema/uses.json")
  .then((response) => response.json())
  .then((data) => {
    for (let categoryName in data) {
      let category = createCategory(data[categoryName], categoryName);
      mainContainer.appendChild(category);
      addScrollDownAnimation();
    }
  })
  .catch((error) => console.error("Error:", error));

// Dark mode
function toggleDarkMode() {
  if (document.body.classList.contains("dark-mode")) {
    darkModeIcon.textContent = "🌚";
  } else {
    darkModeIcon.textContent = "☀️";
  }

  document.body.classList.toggle("dark-mode");
}

function detectDarkMode() {
  if (
    window.matchMedia &&
    window.matchMedia("(prefers-color-scheme: dark)").matches
  ) {
    console.log("Dark mode detected");
    toggleDarkMode();
  }

  if (document.body.classList.contains("dark-mode")) {
    localStorage.setItem("dark-mode", "light");
  } else {
    localStorage.setItem("dark-mode", "dark");
  }
}

document
  .getElementById("dark-mode-link")
  .addEventListener("click", function (event) {
    event.preventDefault();
    toggleDarkMode();
  });

detectDarkMode();
