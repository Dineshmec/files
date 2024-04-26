function handleAccordion() {
    const accordions = document.querySelectorAll('.accordion-item');

    accordions.forEach(accordion => {
        const button = accordion.querySelector('.accordion-button');
        const content = accordion.querySelector('.accordion');
        const patnerarrow = accordion.querySelector('.patnerarrow');

        button.addEventListener('click', () => {
            // Close all accordions
            accordions.forEach(item => {
                const itemContent = item.querySelector('.accordion');
                if (itemContent !== content && itemContent.classList.contains('active')) {
                    itemContent.classList.remove('active');
                    item.querySelector('.accordion-button').classList.remove('active');
                    item.querySelector('.patnerarrow').classList.remove('patnerarrowActive');
                }
            });

            // Toggle active class for the clicked accordion
            content.classList.toggle('active');
            button.classList.toggle('active');
            patnerarrow.classList.toggle('patnerarrowActive');
        });

        // Auto open "Customer Journey" accordion item
        if (accordion.querySelector('.partnerAccName').textContent.trim() === 'Customer Journey') {
            content.classList.add('active');
            button.classList.add('active');
            patnerarrow.classList.add('patnerarrowActive');
        }
    });
}

handleAccordion();


function showSelectField(selectValue) {
    const select = document.getElementById(selectValue);
    select.classList.toggle("displayBlock");
}

function handleIndustry() {
    showSelectField("industrySelect");
}
function handleSolutionPartners() {
    showSelectField("solutionPatners");
}

const industrySelectOption = document.querySelectorAll(".industryOptions");
industrySelectOption.forEach(element => {
    element.addEventListener('click', (event) => {
        const clickedOption = event.target.innerHTML;
        const selectField = document.querySelector(".selectField");
        selectField.innerHTML = clickedOption;
        event.stopPropagation();
        showSelectField("industrySelect");
        // console.log(clickedOption);
    })
});

const solutionPatnerOption = document.querySelectorAll(".solutionPatnerOption");
for (let i = 0; i < solutionPatnerOption.length; i++) {

    solutionPatnerOption.forEach(element => {
        const pinShowPart = document.getElementById("addPinBtn");
        element.addEventListener('click', (event) => {
            solutionPatnerOption[i].classList.remove("activeSolution");
            const clickedOption = event.target.innerHTML;
            element.classList.add("activeSolution")
            const partnerAccName = document.getElementsByClassName("partnerAccName");
            const use = document.getElementsByClassName("use");
            const journey = document.getElementsByClassName("journey");
            const features = document.getElementsByClassName("features");
            const models = document.getElementsByClassName("models");
            const changeTitle = document.querySelectorAll(".changeTitle")[1];
            // partnerAccName[0].innerHTML = clickedOption + ' Case';
            // partnerAccName[1].innerHTML = clickedOption + ' Journey';
            // partnerAccName[2].innerHTML = clickedOption + ' Features';
            // partnerAccName[3].innerHTML=clickedOption+' Models';
            // console.log("clickedOption", clickedOption);

            // use[0].innerHTML = clickedOption;
            // use[1].innerHTML = clickedOption;
            // use[2].innerHTML = clickedOption;
            // use[3].innerHTML = clickedOption;

            // journey[0].innerHTML = clickedOption;
            // journey[1].innerHTML = clickedOption + " Banking";
            // journey[2].innerHTML = clickedOption;
            // journey[3].innerHTML = clickedOption;

            // features[0].innerHTML = clickedOption;
            // features[1].innerHTML = clickedOption;
            // features[2].innerHTML = clickedOption;
            // features[3].innerHTML = clickedOption;

            // models[0].innerHTML = clickedOption;
            // models[1].innerHTML = clickedOption;
            // models[2].innerHTML = clickedOption;
            // models[3].innerHTML = clickedOption;

            changeTitle.innerHTML = clickedOption + "Banking"
            pinShowPart.setAttribute("pin-section-name", clickedOption)
            const image = document.querySelectorAll('.zoom-image')[1];
            image.src = `./assets/images/Conceptvines Assets/${clickedOption}.webp`;
            showSelectField("solutionPatners");

        })
    });
}

function toggleSearch(input) {
    const searchInput = document.getElementById(input);
    searchInput.classList.toggle("show");
}
const topIcon = document.querySelectorAll('.topIcon');
const topIcon2 = document.querySelectorAll('.topIcon2');
const icon = document.querySelectorAll('.icon');
// function handleMain(data) {
//     const Information = document.querySelector('.Information');
//     const dropDownAccordian = document.querySelector('.dropDownAccordian');
//     const iconViewPart = document.querySelector('.iconViewPart');

//     // if (data !== "AISDLC") {
//     iconViewPart.style.display = "flex";
//     Information.style.display = "none";
//     dropDownAccordian.style.display = "none";
//     const iconPart = document.querySelector('.iconPart');
//     const existingImage = iconPart.querySelector('img');
//     const existingPtag = iconPart.querySelector('p');

//     if (existingImage) {
//         existingImage.remove();
//         existingPtag.remove();
//     }
//     const img = document.createElement('img');
//     const pTag = document.createElement('p');
//     img.src = `./assets/images/Conceptvines Assets/${data}.webp`;
//     pTag.innerText = data;
//     iconPart.appendChild(img);
//     iconPart.appendChild(pTag);
//     // } else {
//     // iconViewPart.style.display = "none";
//     // Information.style.display = "block";
//     // dropDownAccordian.style.display = "block";
//     // }
//     //    if(data==="appradar"){
//     //     topIcon[0].style.display = "block";
//     //     topIcon2[0].style.display = "none";
//     //     icon[0].classList.toggle("iconActive");

//     //    }else if(data==="AISDLC"){
//     //     topIcon[1].style.display = "block";
//     //     topIcon2[1].style.display = "none";
//     //     icon[1].classList.toggle("iconActive");

//     //    }else if(data==="AIunderwriting"){
//     //     topIcon[2].style.display = "block";
//     //     topIcon2[2].style.display = "none";
//     //     icon[2].classList.toggle("iconActive");
//     //    }
//     //    else if(data==="simulator"){
//     //     topIcon[3].style.display = "block";
//     //     topIcon2[3].style.display = "none";
//     //     icon[3].classList.toggle("iconActive");
//     //    }
//     //    else if(data==="sandbox"){
//     //     topIcon[4].style.display = "block";
//     //     topIcon2[4].style.display = "none";
//     //     icon[4].classList.toggle("iconActive");
//     //    }

//     // if (data === "app radar") {
//     //     toggleIconActive(0);
//     //     topIcon[1].style.display = "block";
//     //     topIcon2[1].style.setProperty('display', 'none', 'important');
//     // } else if (data === "AISDLC") {
//     //     toggleIconActive(1);
//     //     topIcon[1].style.display = "none";
//     //     topIcon2[1].style.setProperty('display', 'block', 'important');
//     // } else if (data === "aI under writing") {
//     //     toggleIconActive(2);
//     //     topIcon[1].style.display = "block";
//     //     topIcon2[1].style.setProperty('display', 'none', 'important');
//     // } else if (data === "simulator") {
//     //     toggleIconActive(3);
//     //     topIcon[1].style.display = "block";
//     //     topIcon2[1].style.setProperty('display', 'none', 'important');
//     // } else if (data === "sand box") {
//     //     toggleIconActive(4);
//     //     topIcon[1].style.display = "block";
//     //     topIcon2[1].style.setProperty('display', 'none', 'important');
//     // }

// }

// function toggleIconActive(index) {
//     for (let i = 0; i < topIcon.length; i++) {
//         if (i === index) {
//             topIcon[i].style.display = "block";
//             topIcon2[i].style.display = "none";
//             icon[i].classList.add("iconActive");
//         } else {
//             topIcon[i].style.display = "none";
//             topIcon2[i].style.display = "block";
//             icon[i].classList.remove("iconActive");
//         }
//     }
// }
// document.addEventListener('click', (event) => {
//     if (!cvInfo.contains(event.target) && event.target !== logo) {
//         cvInfo.classList.remove("d-block");
//     }
//     if (!moreInfo.contains(event.target) && event.target !== logo) {
//         moreInfo.classList.remove("d-block");
//     }
// });

const logo = document.querySelector(".logo");
const cvInfo = document.getElementById("cvInfo");

logo.addEventListener('mouseover', (e) => {
    e.stopPropagation()
    cvInfo.classList.add("d-block");
});
logo.addEventListener('click', (e) => {
    e.stopPropagation();
    cvInfo.classList.add("d-block");
});
logo.addEventListener('', (e) => {
    e.stopPropagation()
    cvInfo.classList.add("d-block");
});

const moreIcon = document.querySelector(".moreIcon");
const moreInfo = document.getElementById("moreInfo");
moreIcon.addEventListener('mouseover', (e) => {
    e.stopPropagation()
    moreInfo.classList.add("d-block");
});
moreIcon.addEventListener('click', (e) => {
    e.stopPropagation()
    moreInfo.classList.add("d-block");
});


const addNewFeaturs = document.querySelector(".addNewFeaturs");
const addNew = document.getElementById("addNew");
addNewFeaturs.addEventListener('click', (e) => {
    e.stopPropagation()
    addNew.classList.toggle("d-block");
    if (addNew.classList.contains("d-block")) {
        addNewFeaturs.style = "transform: rotate(45deg);"
    } else {
        addNewFeaturs.style = "transform: rotate(0deg);"
    }
});

const profile = document.querySelector(".profile");
const profilePop = document.getElementById("profilePop");
profile.addEventListener('click', (e) => {
    e.stopPropagation()
    profilePop.classList.toggle("d-block");
});


// const zoomInBtn = document.getElementById('zoomin');
// const zoomOutBtn = document.getElementById('zoomout');

const zoomInBtn = document.querySelectorAll('[data-zoom-in]');
const zoomOutBtn = document.querySelectorAll('[data-zoom-out]');
// const zoomPercentage = document.querySelectorAll('.zoomPersentage');
const zoomPercentage = document.querySelectorAll('[data-zoomPersentage]');
const zoomImage = document.querySelectorAll('.zoom-image');

let currentZoom = 100;
function updateZoom() {
    console.log("zoomPercentage", zoomPercentage);
    zoomImage.forEach((item, index) => {
        zoomPercentage[index].textContent = `${currentZoom}%`;
        item.style.transform = `scale(${currentZoom / 100})`;
    })
    // for (let i=0;i<)
}
zoomInBtn.forEach((item, index) => {
    item.addEventListener('click', () => {
        console.log("zoomInBtn", zoomInBtn);
        if (currentZoom < 200) {
            currentZoom += 10;
            updateZoom();
        }
    });
})
zoomOutBtn.forEach((item, index) => {
    item.addEventListener('click', () => {
        if (currentZoom > 50) {
            currentZoom -= 10;
            updateZoom();
        }
    });
})

// const zoomInBtn = document.getElementById('zoomin');
// const zoomOutBtn = document.getElementById('zoomout');
// const zoomPercentage = document.querySelector('.zoomPersentage');
// const zoomImage = document.querySelector('.zoom-image');

// let currentZoom = 100;

// function updateZoom() {
//     zoomPercentage.textContent = `${currentZoom}%`;
//     zoomImage.style.transform = `scale(${currentZoom / 100})`;
// }
// zoomInBtn.addEventListener('click', () => {
//     console.log("zoomInBtn", zoomInBtn);
//     if (currentZoom < 200) {
//         currentZoom += 10;
//         updateZoom();
//     }
// });

// zoomOutBtn.addEventListener('click', () => {
//     if (currentZoom > 50) {
//         currentZoom -= 10;
//         updateZoom();
//     }
// });


// toogle
function toggleBtn(event) {
    var normalLabel = document.getElementById("normalLabel");
    var expertLabel = document.getElementById("expertLabel");

    if (event.target.checked) {
        normalLabel.classList.remove("activeClass");
        expertLabel.classList.add("activeClass");
    } else {
        expertLabel.classList.remove("activeClass");
        normalLabel.classList.add("activeClass");
    }
}

// add pin function 
const pinArr = [
    {
        patnerName: "Transactional",
        pin: false,
    },
    {
        patnerName: "Cognext",
        pin: false,
    },
    {
        patnerName: "Giggso",
        pin: false,
    },
    {
        patnerName: "KYG Trade",
        pin: false,
    },
    {
        patnerName: "Modjoul",
        pin: false,
    },
    {
        patnerName: "Antworks",
        pin: false,
    },
    {
        patnerName: "Sriya.AI",
        pin: false,
    },
    {
        patnerName: "Vee 24",
        pin: false,
    }
]
const pinShowPart = document.getElementById("pinShowPart");
// const addPinBtn = document.getElementById("addPinBtn");
const addPinBtn = document.querySelectorAll("[data-addPinBtn]");
const pinSectionName = document.querySelector("[pin-section-name]");
console.log(pinSectionName);
pinShowPart.style.display = "none"
const changeTitle = document.querySelector(".changeTitle");
addPinBtn.forEach((item) => {
    item.addEventListener("click", (e) => {
        if (pinShowPart.style.display == "none") {
            pinShowPart.style.display = "flex"
            pinCount()
        }
        else {
            pinCount()
        }
    })
})
function pinCount() {
    // console.log("pinSectionName", pinSectionName.getAttribute("pin-section-name"))
    const pinVal = pinSectionName.getAttribute("pin-section-name")
    pinArr.map((item) => (
        item.patnerName.toLowerCase() == pinVal.toLowerCase() ? item.pin = !item.pin : item.pin
    ))
    const pinCounts = pinArr.filter((item) => (item.pin))
    pinShowPart.innerText = pinCounts.length;
    if (pinCounts.length == 0) {
        pinShowPart.style.display = "none"
    }
}
window.onclick = function (event) {
    // console.log()
    if (!event.target.matches("#cvInfo")) {
        cvInfo.classList.remove("d-block");
    }
    if (!event.target.matches("#moreInfo")) {
        moreInfo.classList.remove("d-block");
    }
    if (!event.target.matches("#addNew")) {
        addNew.classList.remove("d-block");
        addNewFeaturs.style = "transform: rotate(0deg);"
    }
    if (!event.target.matches("#profilePop")) {
        profilePop.classList.remove("d-block");
    }
    if (!event.target.closest("#selectIndustryId")) {
        document.getElementById("industrySelect").classList.remove("displayBlock");
        // profilePop.classList.remove("displayBlock");
    }
    if (!event.target.closest("#solutionPartnersId")) {
        document.getElementById("solutionPatners").classList.remove("displayBlock");
        // profilePop.classList.remove("displayBlock");
    }
    // if (!event.target.closest("#industrySelect")) {
    //     // profilePop.classList.remove("d-block");
    //     // showSelectField("industrySelect");
    //     // const select = document.getElementById("industrySelect");
    //     // select.classList.remove("displayBlock");
    // }
}
window.onmouseover = function (event) {
    // console.log()
    if (!event.target.closest("#cvInfo")) {
        cvInfo.classList.remove("d-block");
    }
    if (!event.target.closest(".moreIcon")) {
        moreInfo.classList.remove("d-block");
    }
    // if (!event.target.matches("#addNew")) {
    //     addNew.classList.remove("d-block");
    // }
    // if (!event.target.matches("#profilePop")) {
    //     profilePop.classList.remove("d-block");
    // }
}

const applcationNavigation = document.getElementById("applcationNavigation");
const solutionNavigation = document.getElementById("solutionNavigation");

const Information = document.querySelector('.Information');
const Information1 = document.querySelector('.Information1');
const dropDownAccordian = document.querySelector('.dropDownAccordian');
const iconViewPart = document.querySelector('.iconViewPart');
//new sidebar
const applicationSidebar = document.getElementById("applicationSidebar");
const solutionSidebar = document.getElementById("solutionSidebar");
//show ele
const applicationShow = document.querySelector(".applicationShow");
const solutionPatnersShow = document.querySelector(".solutionPatnersShow");

applcationNavigation.addEventListener("click", () => {
    iconViewPart.style.display = "flex";
    Information.style.display = "none";
    Information1.style.display = "none";
    dropDownAccordian.style.display = "none";
    solutionSidebar.style.display = "none"

    applicationSidebar.style.display = "flex"
    solutionSidebar.style.display = "none"

    applicationShow.style.display = "block";
    solutionPatnersShow.style.display = "none";
})
solutionNavigation.addEventListener("click", () => {
    iconViewPart.style.display = "flex";
    dropDownAccordian.style.display = "none";
    Information1.style.display = "none";

    applicationSidebar.style.display = "none"
    solutionSidebar.style.display = "block"
    Information.style.display = "block";

    applicationShow.style.display = "none";
    solutionPatnersShow.style.display = "block";
})

const tabHead = document.querySelectorAll("[data-application-tabHead]");
const tabBody = document.querySelectorAll("[data-application-tabBody]");
for (let i = 0; i < tabHead.length; i++) {

    tabHead[i].addEventListener("click", function () {
        tabBody.forEach(function (element) {
            element.classList.remove("tabBodyActive");
            tabBody[i].classList.add("tabBodyActive");
        });

        tabHead.forEach(function (ele) {
            ele.classList.remove("iconActive");
            tabHead[i].classList.add("iconActive");
        });

    });
}

const tabBodyCloseBtn = document.querySelectorAll("[data-close-btn]");
tabBodyCloseBtn.forEach((item) => {
    item.addEventListener("click", () => {
        iconViewPart.style.display = "none";
        dropDownAccordian.style.display = "block";
        Information1.style.display = "block";

        applicationSidebar.style.display = "none"
        solutionSidebar.style.display = "none"
        Information.style.display = "none";

        applicationShow.style.display = "none";
        solutionPatnersShow.style.display = "none";
    })
})

function toggleIcon(section) {
    const menuCards = document.querySelectorAll('.menuCard');
    menuCards.forEach(card => {
      card.classList.remove('activeMenuIcon');
      card.parentElement.nextElementSibling.classList.remove('activeMenu');
    });
    console.log('helo')
    const clickedMenuCard = document.querySelector(`[onclick*="toggleContentAndIcon('${section}')"]`);
    console.log("Clicked menu card:", clickedMenuCard);
    clickedMenuCard.classList.add('activeMenuIcon');
    clickedMenuCard.parentElement.nextElementSibling.classList.add('activeMenu');
  }

function toggleContent(id) { 
    var elements = document.getElementsByClassName("contentToggle");
    for (var i = 0; i < elements.length; i++) {
        if (elements[i].id === id) {
            elements[i].style.display = "block";
        } else {
            elements[i].style.display = "none";
        }
    }

    var activeMenus = document.getElementsByClassName("activeMenu");
        activeMenus[0].classList.replace("activeMenu","menuInfo");

    var menuIcons = document.getElementsByClassName("menuIcon activeMenuIcon");
        menuIcons[0].classList.add("menuIcon");


    var element = document.getElementById(`${id}Light1`);
    console.log(`${id}Light1`);
    element.classList.add("activeMenuIcon");
    
    var element1 = document.getElementById(`${id}Light2`);
    element1.classList.replace("menuInfo", "activeMenu");

}

function toggleContentAndIcon(section) {
    toggleContent(section);
    toggleIcon(section);
  }