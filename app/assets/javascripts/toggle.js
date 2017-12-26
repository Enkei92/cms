document.addEventListener("DOMContentLoaded", function(event){
  var btn = document.getElementById("toggle");
  var published = document.getElementById("published_posts")
  var unpublished = document.getElementById("unpublished_posts")
  btn.onclick=function(){
    published.classList.toggle("hidden");
    unpublished.classList.toggle("hidden");
    if (published.classList.contains("hidden")){
      btn.value = "Show published";
    }
    else{
      btn.value = "Show unpublished";
    }
  }
});