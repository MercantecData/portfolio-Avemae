function ChangeText()
{
    document.getElementById("change-text-on-button").innerHTML = "You clicked the button!";
}

function AddElement()
{
    document.getElementById("paragraph-with-javascript").innerHTML = "Paragraph Two added with JavaScript.";
}

function RemoveElement()
{
    document.getElementById("remove-this-paragraph").remove();
}

var myArray = [];

function AddElementToArray()
{
    var element = document.getElementById("new-element").value;
    myArray[myArray.length] = element;
    document.getElementById("show-array").innerHTML = myArray.toString();
}

function AddElementToSite()
{
    var textOnSite = document.getElementById("text-field-element").value;
    document.getElementById("insert-text-field-text").innerHTML += textOnSite+"</br>";
}

function randomImage(){
    var images = [
     'winter_trees.jpg',
     'red_trees.jpg',
     'trees.jpg',
     'foggy_trees.jpg'];
    var size = images.length;
    var x = Math.floor(size * Math.random());
    var element = document.getElementsByClassName('html');
    element[0].style["background-image"] = "url("+ images[x] + ")";
}
document.addEventListener("DOMContentLoaded", randomImage);