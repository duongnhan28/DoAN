<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic Page Needs
================================================== -->
    <meta charset="utf-8" />
    <title>Project Tile</title>

    <!-- Mobile Specific Metas
================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Construction Html5 Template" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0" />

    <!-- Favicon
================================================== -->
    <link rel="icon" type="image/png" href="/images/favicon.png" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- CSS
================================================== -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="/plugins/bootstrap/bootstrap.min.css" />
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/plugins/fontawesome/css/all.min.css" />
    <!-- Animation -->
    <link rel="stylesheet" href="/plugins/animate-css/animate.css" />
    <!-- slick Carousel -->
    <link rel="stylesheet" href="/plugins/slick/slick.css" />
    <link rel="stylesheet" href="/css/custom.css" />
    <link rel="stylesheet" href="/plugins/slick/slick-theme.css" />
    <!-- Colorbox -->
    <link rel="stylesheet" href="/plugins/colorbox/colorbox.css" />
    <!-- Template styles-->
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<div class="body-inner">

    <!--/ Header end -->
    <div id="banner-area" class="banner-area" style="background-image: url(/images/banner/banner1.jpg);">
        <div class="banner-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="banner-heading">
                            <h1 class="banner-title">D??? ??n</h1>
                            <nav aria-label="breadcrumb">

                            </nav>
                        </div>
                    </div>
                    <!-- Col end -->
                </div>
                <!-- Row end -->
            </div>
            <!-- Container end -->
        </div>
        <!-- Banner text end -->
    </div>
    <!-- Banner area end -->

    <section id="main-container" class="main-container">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="post-content post-single">
                        <h4><a href="#"> ${project.category.categoryname} > ${project.projectname}</a></h4>
                        <div class="post-media post-image">
                            <img loading="lazy" src="/images/projects/${project.imagepresent}"  class="img-fluid" alt="post-image" />
                        </div>

                        <div class="post-body">
                            <div class="entry-header">
                                <div class="post-meta">
                                    <span class="post-author"> <i class="far fa-user"></i><a href="#">${project.user.fullname}</a> </span>

                                    <span class="post-meta-date"><i class="far fa-calendar"></i> Ng??y ????ng: <fmt:formatDate pattern = "dd-MM-yyyy" value = "${project.postedday}" /> </span>
                                    <span class="post-comment"><i class="far fa-comment"></i> 03<a href="#" class="comments-link">Comments</a></span>
                                </div>
                                <h5>
                                    -> M???c ????ch d??? ??n: ${project.title}
                                </h5>
<%--                                <h4 style=" color: orange">S??? v???n k??u g???i: <fmt:formatNumber value="${project.amountcalled}" maxFractionDigits="0" currencyCode="VND" type="currency" currencySymbol="VND"/></h4>--%>
                                    <h4 style=" color: orange">S??? v???n k??u g???i: <fmt:formatNumber value="${project.amountcalled}" maxFractionDigits="0"/> VND</h4>
                                <blockquote>
                                    <p>Location: ${project.houseno} - ${project.subdistrict} - ${project.district}
                                        - ${project.province} - ${project.country}</p>
                                </blockquote>
                            </div>
                            <!-- header end -->

                            <div class="entry-content">
                                <textarea class="form-control" id="projectDetail" style="height: 100vh; color: black" >${project.projectdetail}</textarea>
                            </div>
                            <!-- Page slider end -->
                            <div id="page-slider" class="page-slider" style="display: flex; justify-content: center; align-items: center; margin-top: 1%">
                                <c:forEach items="${imageOfProject}" var="image">
                                    <div class="item" style="text-align: center;">
                                        <img loading="lazy" class="img-fluid" src="/images/projectImages/${image.imagename}" />
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <!-- post-body end -->
                    </div>
                    <!-- post content end -->
                    <div class="like-box">
                        <h3>
                            <a class="comment-reply font-weight-bold" href="#"><i class="fas fa-thumbs-up"> 50 Likes</i></a>
                        </h3>
                        <h3>
                            <a class="comment-reply font-weight-bold" href="#"><i class="fas fa-comment"> 5 Comments</i></a>
                        </h3>
                    </div>
                    <div class="vote-box">
                        <form action="/startup/voteStar" method="POST" class="form-inline">
                            <input type="hidden" name="projectId" value="${project.id}">
                            <p style="font-weight: bold">
                                ????NH GI?? CHO D??? ??N N??Y:
                                <span class="my-rating-9"></span>
                                <input type="hidden" class="live-rating" name="ratedStar" style="margin-left: 1%;"/>
                            </p>
                            <c:choose>
                                <c:when test="${user.fullname!=null}">
                                    <button class="btn btn-outline-success" style="margin-left: 4%">X??c nh???n</button>
                                </c:when>
                                <c:otherwise>
<%--                                    <button class="btn btn-outline-success" onclick="return confirm('B???n c???n ????ng nh???p tr?????c!')" style="margin-left: 4%">X??c nh???n</button>--%>
                                    <a class="btn btn-outline-success" style="margin-left: 4%"data-toggle="modal" data-target="#loginModal">
                                        X??c nh???n
                                    </a>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                    <div class="author-box d-nlock d-sm-flex">
                        <div class="author-img mb-2 mb-md-0">
                            <img loading="lazy" src="/images/userImages/${project.user.avataruser}" alt="author" />
                        </div>
                        <div class="author-info">
                            <h3>Th??ng tin li??n h???</h3>
                            <h3>${project.user.fullname}<span>${project.user.job}</span></h3>
                            <p class="mb-2"><strong>?????a ch???:</strong> ${project.user.houseno} - ${project.user.subdistrict} - ${project.user.district} - ${project.user.province} - ${project.user.country}</p>
                            <p class="mb-2"><strong>??i???n tho???i:</strong> ${project.user.phone}</p>
                            <p class="mb-2"><strong>Email:</strong>${project.user.email}</p>
                            <p>
                                Voted: ${project.totalvoted} <a href="#"><i class="fa fa-star checked"></i></a>
                                <a><i class="fa fa-star checked"></i></a>
                                <a><i class="fa fa-star checked"></i></a>
                                <a><i class="fa fa-star checked"></i></a>
                                <a><i class="fa fa-star checked"></i></a>
                                (${project.sumvoted} ????nh gi??)
                            </p>

                            <button type="button" data-toggle="modal"  data-target="#myModal" class="btn btn-primary" href="#"><i class="fas fa-envelope"></i>Li??n h??? v???i ${project.user.email}</button>
                        </div>
                    </div>
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">G???i mail th??ng b??o</h5>
                                    <button type="button" class="close btn btn-danger" data-dismiss="modal" aria-label="Close"  id="close-button">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form method="post" action="/investor/registration">
                                        <input type="hidden" value="${project.id}" name="id">
                                        <div class="form-group">
                                            <label  class="col-form-label">From:</label>
                                            <input type="text" class="form-control" name="from" value="${user.email}">
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-form-label">To:</label>
                                            <input type="text" class="form-control"  name = "to" id="email" value="${project.user.email}">
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-form-label">Ch??? ?????:</label>
                                            <input type="text" class="form-control" name="subject" value="????ng k?? ?????u t?? d??? ??n"/>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-form-label">N???i dung:</label>
                                            <textarea class="form-control" name="body"></textarea>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal" title="Quay l???i">
                                                Tho??t
                                            </button>
                                            <button type="submit" class="btn btn-success" title="G???i mail" id="submit-button">
                                                G???i mail
                                            </button>
                                        </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- Author box end -->

                    <!-- Post comment start -->
                    <div id="comments" class="comments-area">
                        <div class="comments-form border-box">
                            <h4 class="title-normal">B??nh lu???n</h4>

                            <form role="form" action="/startup/postComment" method="POST">
                                <input type="hidden" value="${user.username}" name="username">
                                <input type="hidden" value="${project.id}" name="projectId">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="message" class="w-100"><textarea class="form-control required-field" id="message" name="binhluan" placeholder="Your Comment" rows="4" required></textarea></label>
                                        </div>
                                    </div>
                                    <!-- Col 12 end -->
                                </div>
                                <!-- Form row end -->
                                <div class="username">
                                    <p>${user.fullname}</p>
                                </div>
                                <div class="clearfix text-md-right">
                                    <c:choose>
                                        <c:when test="${user.fullname!=null}">
                                            <button class="btn btn-primary" type="submit" aria-label="post-comment">G???i</button>
                                        </c:when>
                                        <c:otherwise>
<%--                                            <button class="btn btn-primary" type="submit" onclick="return confirm('B???n c???n ????ng nh???p tr?????c')" aria-label="post-comment">G???i</button>--%>
                                            <a class="btn btn-outline-success" style="margin-left: 4%"data-toggle="modal" data-target="#loginModal">
                                                G???i
                                            </a>
                                        </c:otherwise>
                                    </c:choose>

                                </div>
                            </form>
                            <!-- Form end -->
                        </div>
                        <!-- Comments form end -->
                        <ul class="comments-list">
                            <c:forEach items="${comments}" var="comment">
                                <li>
                                    <div class="comment d-flex">
                                        <img loading="lazy" class="comment-avatar" alt="author" src="/images/userImages/${comment.user.avataruser}" />
                                        <div class="comment-body">
                                            <div class="meta-data">
                                                <span class="comment-author mr-3">${comment.user.fullname}</span>
                                                <span class="comment-date float-right"><fmt:formatDate pattern = "dd-MM-yyyy" value = "${comment.postedday}" /> </span>
                                            </div>
                                            <div class="comment-content">
                                                <p>
                                                        ${comment.binhluan}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                            <!-- Comments-list li end -->
                        </ul>
                        <!-- Comments-list ul end -->
                    </div>
                    <!-- Post comment end -->

                </div>
                <div class="col-lg-4">
                    <div class="sidebar sidebar-right">
                        <div class="widget recent-posts">
                            <h3 class="widget-title">Blog</h3>
                            <ul class="list-unstyled">
                                <li class="d-flex align-items-center">
                                    <div class="posts-thumb">
                                        <a href="#"><img loading="lazy" alt="img" width="400" height="600" src="/images/blog/blog1.jpg"></a>
                                    </div>
                                    <div class="post-info">
                                        <h4 class="entry-title">
                                            <a href="#">T??? Ph?? Marc Lore V?? Nh???ng S??ng Ki???n X??y D???ng L???i H??? Sinh Th??i</a>
                                        </h4>
                                    </div>
                                </li><!-- 1st post end-->

                                <li class="d-flex align-items-center">
                                    <div class="posts-thumb">
                                        <a href="#"><img loading="lazy" alt="img" src="/images/blog/blog2.jpg"></a>
                                    </div>
                                    <div class="post-info">
                                        <h4 class="entry-title">
                                            <a href="#">B??i H???c T??? Th???t B???i ??? Leflair</a>
                                        </h4>
                                    </div>
                                </li><!-- 2nd post end-->

                                <li class="d-flex align-items-center">
                                    <div class="posts-thumb">
                                        <a href="#"><img loading="lazy" alt="img" src="/images/blog/bl3.jpg"></a>
                                    </div>
                                    <div class="post-info">
                                        <h4 class="entry-title">
                                            <a href="#">B?? Quy???t Thuy???t Tr??nh: C??ng ????n Gi???n, C??ng Thuy???t Ph???c</a>
                                        </h4>
                                    </div>
                                </li><!-- 3rd post end-->

                            </ul>

                        </div><!-- Recent post end -->

                        <div class="widget">
                            <h3 class="widget-title">Th??? lo???i</h3>
                            <ul class="arrow nav nav-tabs">
                                <li><a href="#">C??ng ngh??? th??ng tin</a></li>
                                <li><a href="#">T??i ch??nh - Ng??n H??ng</a></li>
                                <li><a href="#">X??y d???ng</a></li>
                                <li><a href="#">C?? kh??</a></li>
                                <li><a href="#">Du l???ch</a></li>
                            </ul>
                        </div><!-- Categories end -->

                        <div class="widget widget-tags">
                            <h3 class="widget-title">Tags </h3>

                            <ul class="list-unstyled">
                                <li><a href="#">C??ng ngh??? th??ng tin</a></li>
                                <li><a href="#">T??i ch??nh - Ng??n H??ng</a></li>
                                <li><a href="#">X??y D???ng</a></li>
                                <li><a href="#">C?? Kh??</a></li>
                                <li><a href="#">Du L???ch</a></li>
                                <li><a href="#">Vi???n Th??ng</a></li>
                                <li><a href="#">Kinh Doanh</a></li>
                                <li><a href="#">Gi??o D???c</a></li>
                            </ul>
                        </div><!-- Tags end -->


                    </div><!-- Sidebar end -->
                </div><!-- Sidebar Col end -->
            </div>
            <!-- Main row end -->
        </div>
        <!-- Conatiner end -->
    </section>
    <!-- Main container end -->

    <!-- Footer end -->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Th??ng b??o</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">??</span>
                    </button>
                </div>
                <div class="modal-body">B???n c???n ????ng nh???p tr?????c! </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal" style="font-weight: bold">TR??? V???</button>
                    <a class="btn btn-primary" href="/login">????ng nh???p</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Javascript Files
================================================== -->
    <script>
        $(function() {
            $(".my-rating-9").starRating({
                initialRating: 5,
                disableAfterRate: false,
                onHover: function(currentIndex, currentRating, $el){
                    console.log('index: ', currentIndex, 'currentRating: ', currentRating, ' DOM element ', $el);
                    $('.live-rating').val(currentIndex);
                },
                onLeave: function(currentIndex, currentRating, $el){
                    console.log('index: ', currentIndex, 'currentRating: ', currentRating, ' DOM element ', $el);
                    $('.live-rating').val(currentRating);
                }
            });
        });
        function submitForm() {
            $("#close-button").trigger("click");
            $("#send-form").submit();
        }

    </script>
    <!-- initialize jQuery Library -->
    <script src="/plugins/jQuery/jquery.min.js"></script>
    <!-- Bootstrap jQuery -->
    <script src="/plugins/bootstrap/bootstrap.min.js" defer></script>
    <!-- Slick Carousel -->
    <script src="/plugins/slick/slick.min.js"></script>
    <script src="/plugins/slick/slick-animation.min.js"></script>
    <!-- Color box -->
    <script src="/plugins/colorbox/jquery.colorbox.js"></script>
    <!-- shuffle -->
    <script src="/plugins/shuffle/shuffle.min.js" defer></script>

    <!-- Google Map API Key-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
    <!-- Google Map Plugin-->
    <script src="/plugins/google-map/map.js" defer></script>
    <script src="/js/star.js"></script>
    <!-- Template custom -->
    <script src="/js/script.js"></script>
</div>
<!-- Body inner end -->
</body>
</html>