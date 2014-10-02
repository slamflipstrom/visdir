$(document).ready(function(){
  $("#cards").on("click", ".card-fav", function(e){
    alert("Fav/Unfav!");
    e.preventDefault();
  });
})