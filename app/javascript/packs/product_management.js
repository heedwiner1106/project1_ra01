// function addproduct(){
//     document.getElementById("addproduct").style.display = "block";

//     document.getElementById("productlist").style.display = "none";
//     document.getElementById("productonsale").style.display = "none";
//     active("add");
// }
// function openmenu(){
//     document.getElementById("menus").classList.toggle("Openmenus");
//     document.getElementById("mainadmin").classList.toggle("hidemenu-main");
// }


// function showList(){
//     document.getElementById("productlist").style.display = "block";
//     document.getElementById("productonsale").style.display = "none";
//     document.getElementById("addproduct").style.display = "none";

//     active("list");
// }
// function showProduct(){
//     document.getElementById("productlist").style.display = "none";
//     document.getElementById("productonsale").style.display = "block";
//     document.getElementById("addproduct").style.display = "none";
//     active("onsale");
// }

// function active(a){
//     if(a=="list"){
//         document.getElementById("list").classList.remove("unfocus");
//         document.getElementById("onsale").classList.remove("focus");
//     }
//     if(a=="onsale"){
//         document.getElementById("list").classList.add("unfocus");
//         document.getElementById("onsale").classList.add("focus");
//     }
//     if(a=="add"){
//         document.getElementById("list").classList.add("unfocus");
//         document.getElementById("onsale").classList.remove("focus");
//     }
// }
$(document).ready(function(){
    $('#list').click(function(){
        $('.productlist').removeClass('listP');
        $('#productlist').addClass('listP');
    });
    $('#onsale').click(function(){
        $('.productlist').removeClass('listP');
        $('#productonsale').addClass('listP');
    });
    $('.btnaddproduct').click(function(){
        $('.productlist').removeClass('listP');
        $('#addproduct').addClass('listP');
    })
})