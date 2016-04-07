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
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/clar.jpg" style="width:380px;height:237px;" alt="">
                    <h3>Clarasonic
                        <small>Face wash</small>
                        <img id="myImage1" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/armani_lip.jpg" style="width:380px;height:237px;" alt="">
                    <h3>Giorgio Armani
                        <small>Lips</small>
                        <img id="myImage2" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/guerlain.png" style="width:380px;height:237px;" alt="">
                    <h3>Guerlain
                        <small>Powders</small>
                        <img id="myImage3" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/chanel.png" style="width:380px;height:237px;" alt="">
                    <h3>Chanel
                        <small>Nail polish</small>
                        <img id="myImage4" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/dior.png" style="width:380px;height:237px;" alt="">
                    <h3>Dior
                        <small>Eye shadow</small>
                        <img id="myImage5" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/nars.jpg" style="width:380px;height:237px;" alt="">
                    <h3>Nars
                        <small>Blush</small>
                        <img id="myImage6" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/kiehls.png" style="width:380px;height:237px;" alt="">
                    <h3>Kiehl's
                        <small>Skin care</small>
                        <img id="myImage7" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/ysl.jpg" style="width:380px;height:237px;" alt="">
                    <h3>YSL
                        <small>Mascara</small>
                        <img id="myImage8" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
                </div>
                <div class="col-sm-4 text-center">
                    <img class="img-responsive" src="img/sigma.png" style="width:380px;height:237px;" alt="">
                    <h3>Sigma
                        <small>Brushes</small>
                        <img id="myImage9" onclick="changeImage()" class="img-left" src="img/likeoff.png" alt="" style="width:20px;height:20px;">
                    </h3>
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






