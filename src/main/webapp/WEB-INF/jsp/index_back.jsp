<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>Slider Layout - Scoop Themes Template</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

    <!-- Main Styles CSS -->
    <link href="/resources/css/main.css" rel="stylesheet">


</head>
<body>

<div id="wrapper">

    <div class="nav-wrapper">
        <div class="container">

            <nav class="navbar navbar-default navbar-inverse" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Scoop Themes</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Link</a></li>
                            <li><a href="#">Link</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Link</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>

        </div>
        <!-- /.container -->
    </div>
    <!-- /.nav-wrapper -->

    <div id="mainCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#mainCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#mainCarousel" data-slide-to="1"></li>
            <li data-target="#mainCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="http://placehold.it/1920x650/777/fff&amp;text=First+Slide" alt="...">
                <div class="carousel-caption">
                    <h3>Slide Caption</h3>
                </div>
            </div>
            <div class="item">
                <img src="http://placehold.it/1920x650/777/fff&amp;text=Second+Slide" alt="...">
                <div class="carousel-caption">
                    <h3>Slide Caption</h3>
                </div>
            </div>
            <div class="item">
                <img src="http://placehold.it/1920x650/777/fff&amp;text=Third+Slide" alt="...">
                <div class="carousel-caption">
                    <h3>Slide Caption</h3>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#mainCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#mainCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <div class="container">

        <div class="section">
            <div class="row">
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="http://placehold.it/300x200" alt="">
                    </a>
                    <h3>Header One</h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                    <a href="#" class="btn btn-primary btn-sm">Read More</a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="http://placehold.it/300x200" alt="">
                    </a>
                    <h3>Header Two</h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                    <a href="#" class="btn btn-primary btn-sm">Read More</a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="http://placehold.it/300x200" alt="">
                    </a>
                    <h3>Header Three</h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                    <a href="#" class="btn btn-primary btn-sm">Read More</a>
                </div>
                <div class="col-md-3">
                    <a href="#" class="thumbnail">
                        <img src="http://placehold.it/300x200" alt="">
                    </a>
                    <h3>Header Four</h3>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                    <a href="#" class="btn btn-primary btn-sm">Read More</a>
                </div>
            </div>
        </div>
        <!-- /.section -->

        <hr>

        <div class="section">
            <div class="row">
                <div class="col-md-7">
                    <h1>Font Awesome Is There</h1>
                    <p>Font Awesome is included and from MaxCDN <span class="fa fa-heart"></span></p>
                </div>
                <div class="col-md-5">
                    <img src="http://placehold.it/450x200" class="img-responsive" alt="">
                </div>
            </div>
        </div>
        <!-- /.section -->

        <hr>

        <footer>
            <div class="copy-rights clearfix">
                <div class="pull-left">
                    All Copy Rights Reserved For YourCompany 201*
                </div>
                <div class="pull-right">
                    by <a href="http://scoopthemes.com">Scoop Themes</a>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->


</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- Bootstrap JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<!-- Custom JavaScript -->
<script src="js/custom.js"></script>

<!-- Call functions on document ready -->
<script>
    $(document).ready(function() {
        // Call Functions Like
        appMaster.aFunction();
        // Call anotherFunction
        appMaster.anotherFunction();
    });
</script>

</body>

</html>
