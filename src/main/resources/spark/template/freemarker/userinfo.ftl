<!DOCTYPE html>
<html lang="en">

<head>

    <#include "header.ftl">

</head>

<body>

    <div class="brand">POINT</div>
    <div class="address-bar">Blog | Share | Beauty</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" >
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="home.html">Home</a>
                    </li>
                    <li>
                        <a href="login.html">Login</a>
                    </li>
                    <li>
                        <a href="blog.html">Blog</a>
                    </li>
                    <li>
                        <a href="comment.html">Comments</a>
                    </li>
                    <li>
                        <a href="about.html">About</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


     <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">lIKE YOUR
                        <strong>FAVORITE</strong>
                    </h2>
                    <hr>
                </div>
                

  
           

                
                        <h3>Get JSON</h3>
            <input type="button" value="GetJson" onclick="getJson()">
            <div class="items"></div>
                    
                    
                        <h3>Get XML</h3>
            <input type="button" value="GetXml" onclick="getXml()">
            <div class="about"></div>
                    
                
                <div class="clearfix"></div>
            </div>
        </div>


        <script>
            function changeImage() {
                
                    var image = document.getElementById('myImage1');

                    if (image.src.match("likeon")) {
                        image.src = "img/likeoff.png";
                    }else {
                        image.src = "img/likeon.png";
                    }


                
            }


        </script>
        <script type="text/javascript" src="js/get.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
</body>



</html>






