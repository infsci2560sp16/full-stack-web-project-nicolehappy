<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome to POINT</title>

    <!-- Bootstrap Core CSS -->
    <link href="stylesheets/bootstrap.min.css" rel="stylesheet">

    <!--Main CSS -->
    <link href="stylesheets/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

   
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
                <a class="navbar-brand" href="home.html">Business Casual</a>
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
                    <li class = "current">
                        <a href="/userinfo"> Personal Page</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <div id="body">

    <h2><b>Hello, ${username}</b></h2>
    <#if product??>
    <div id ="userinfo">No product has been liked!</div>
    <#else >

    <ul>
      <#list products as product>
      <li> ${product}</li>
    </ul>
      </#list>
    </div>
    </#if>
</div>

</body>
</html>










