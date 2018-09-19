<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Ucilove</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.css">

    <!-- Main Styles CSS -->
    <link href="/resources/css/main.css" rel="stylesheet">


</head>

<body>

    <div id="wrapper">

        <div class="nav-wrapper">
            <div class="container">
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">Ucilove.com</a>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">About <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="http://www.ucilove.com/intro/">유콜잇러브 소개</a></li>
                                        <li><a href="http://www.ucilove.com/our-menu/">오시는 길</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Timber Houses <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="http://www.ucilove.com/explore/">A 동</a></li>
                                        <li><a href="http://www.ucilove.com/explore2/">B 동</a></li>
                                        <li><a href="http://www.ucilove.com/explore3/">C 동</a></li>
                                    </ul>
                                </li>
                                <li><a href="http://www.ucilove.com/picnic-1/">Picnic</a></li>
                                <li><a href="http://www.ucilove.com/care-hotel/">Hotel</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Timber Houses <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="http://www.ucilove.com/cafe/">카페테리아</a></li>
                                        <li><a href="http://www.ucilove.com/playground/">반려견 전용 운동장</a></li>
                                        <li><a href="http://www.ucilove.com/go-on-a-water-sides/">계곡 물놀이</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Booking <span class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="http://www.ucilove.com/booking-guide/">요금 및 이용안내</a></li>
                                        <li><a href="http://booking.ucilove.com/">실시간 예약</a></li>
                                    </ul>
                                </li>
                                <li><a href="http://gallery.ucilove.com/">Gallery</a></li>
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
<%--                <li data-target="#mainCarousel" data-slide-to="2"></li>--%>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="/resources/img/main_1.png" alt="...">
                  <div class="carousel-caption">
                    <h3>운동장 전경</h3>
                  </div>
                </div>
                <div class="item">
                    <img src="/resources/img/main_2.png" alt="...">
                  <div class="carousel-caption">
                    <h3>계곡 물놀이</h3>
                  </div>
                </div>
                <%--
                <div class="item">
                  <img src="http://placehold.it/1920x650/777/fff&amp;text=Third+Slide" alt="...">
                  <div class="carousel-caption">
                    <h3>Slide Caption</h3>
                  </div>
                </div>
                --%>
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
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to You Call It Love.
                        </h1>
                    </div>
                    <div class="col-sm-4">
                        <img class="img-circle img-responsive img-center" src="/resources/img/a-380x380.jpg" alt="">
                        <h3>Pension A</h3>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                        <a href="http://www.ucilove.com/explore/" class="btn btn-primary btn-sm">Show More</a>
                    </div>
                    <div class="col-sm-4">
                        <img class="img-circle img-responsive img-center" src="/resources/img/b-380x380.jpg" alt="">
                        <h3>Pension B</h3>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                        <a href="http://www.ucilove.com/explore2/" class="btn btn-primary btn-sm">Show More</a>
                    </div>
                    <div class="col-sm-4">
                        <img class="img-circle img-responsive img-center" src="/resources/img/a-380x380.jpg" alt="">
                        <h3>Pension C</h3>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                        <a href="http://www.ucilove.com/explore3/" class="btn btn-primary btn-sm">Show More</a>
                    </div>
                </div>
            </div>
            <!-- /.section -->

            <hr>

            <div class="section">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            You Call It Love Recreation.
                        </h1>
                    </div>
                    <div class="row text-left">
                        <div class="col-md-4 col-sm-6 hero-feature">
                            <div class="thumbnail">
                                <img src="http://placehold.it/800x500" alt="">
                                <div class="caption">
                                    <h3>반려견 전용 운동장</h3>
                                    <p>약 700평 잔디 운동장 전체를 펜스가  감싸고 있으니,  리드줄은 잠시 풀어주셔도 좋을껍니다.</p>
                                    <p>
                                        <a href="http://www.ucilove.com/playground/" class="btn btn-default">More Info</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 hero-feature">
                            <div class="thumbnail">
                                <img src="http://placehold.it/800x500" alt="">
                                <div class="caption">
                                    <h3>한여름밤 야외 영화관</h3>
                                    <p>밤하늘 별과 함께, 사랑하는 가족, 연인, 반려견과 함께 영화 감상.. 운치있죠?</p>
                                    <p>
                                        <a href="javascript:alert('준비중입니다.');" class="btn btn-default">More Info</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 hero-feature">
                            <div class="thumbnail">
                                <img src="http://placehold.it/800x500" alt="">
                                <div class="caption">
                                    <h3>청정계곡 물놀이</h3>
                                    <p>운동장과 이어진 계곡은 깊이가 다양하여 반려견과 보호자가 함께 물놀이를 즐길 수 있습니다.</p>
                                    <p>
                                        <a href="http://www.ucilove.com/go-on-a-water-sides/" class="btn btn-default">More Info</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
            <!-- /.section -->

            <hr>

            <footer>
                <div class="copy-rights clearfix">
                    <div class="pull-left">
                        <a href="#">이용약관</a> <a href="#">개인정보</a> <a href="#">취급방법</a>
                    </div>
                    <div class="pull-right">
                        2016 You Call It Love All Copy Rights Reserved
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
    <script src="/resources/js/custom.js"></script>

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
