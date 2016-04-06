function getJson(){
  $.ajax({
    url : "/items",
    success : function(result) {
      var items = JSON.parse(result);
      if(items.length>0){
        for ( var i = 0; i < items.length; i++) {
          $("div.items").append(
            '<p class="question" id="' + items[i].id + '">' + items[i].name + '</p>' + '<br/>'
          );
        }
      }
    }
  });
}
function getXml(){
    $.ajax({
         url : "/like",
         type : "get",
         success : function(result) {
           branch = result.getElementsByTagName("Branch");
           $("div.about").append(
               '<p>Name:'+branch[0].childNodes[0].firstChild.nodeValue+'</p>'+
               '<p>Brand:'+branch[0].childNodes[1].firstChild.nodeValue+'</p>'+
               '<p>Category:'+branch[0].childNodes[2].firstChild.nodeValue+'</p>'+
               '<p>Price:'+branch[0].childNodes[3].firstChild.nodeValue+'</p>'+
               '<p>Sensitive:'+branch[0].childNodes[4].firstChild.nodeValue+'</p>'+
               '<p>Review:'+branch[0].childNodes[5].firstChild.nodeValue+'</p>'+
               '<p>Newin:'+branch[0].childNodes[6].firstChild.nodeValue+'</p>'+
               '<p>Phone:'+branch[0].childNodes[7].firstChild.nodeValue+'</p>'+
               '<p>Email:'+branch[0].childNodes[8].firstChild.nodeValue+'</p>'+
               '<p>Address:'+branch[0].childNodes[9].firstChild.nodeValue+'</p>'
             );
           }
         });
       }
function postJson(){
  var username = $("#username").val();
  var password = $("#password").val();
  var info = JSON.stringify({"username":username,"password":password});
  alert(info);
  $.ajax({
    contentType:'application/json',
    url : "/login",
    type : "post",
    dataType: "json",
    data:info,
    success : function(flowers){
      for ( var i = 0; i < flowers.length; i++) {
        $("div.flowers").append(
          '<p class="question" id="' + flowers[i].id + '">' + flowers[i].name + '</p>' + '<br/>'
        );
      }
      alert("Login successfully.");
      window.location.href='/index.html';
    }
  });
}