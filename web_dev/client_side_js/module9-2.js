function makePhotoBig(event){
  event.target.style.width = "100%";
}
var photo = document.getElementById("beauty");
photo.addEventListener("click",makePhotoBig);
