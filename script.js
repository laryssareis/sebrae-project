let currentBg = 1;

function changeCover(type){
    let active = document.getElementById("bg"+currentBg);
    let next = document.getElementById("bg"+(currentBg===1?2:1));

    next.className = "cover-bg active bg-"+type;

    active.classList.remove("active");

    currentBg = currentBg === 1? 2:1;
}



function filterItems(category){
    let items = document.querySelectorAll(".item");

    items.forEach(item =>{
        if(category === "all" ||
            item.classList.contains(category)){
            item.style.display = "";
        }

        else{
            item.style.display = "none";
        }
    });

        if(category === "movie"){
            changeCover("movie");
        }

        else if(category === "serie"){
            changeCover("serie");
        }

        else{
            changeCover("all");
        }
}

