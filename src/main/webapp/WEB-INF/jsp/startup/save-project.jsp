
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>Constra - Construction Html5 Template</title>

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

    <!-- Favicon
  ================================================== -->
    <link rel="icon" type="/image/png" href="/images/favicon.png">

    <!-- CSS
  ================================================== -->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="/plugins/bootstrap/bootstrap.min.css">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/plugins/fontawesome/css/all.min.css">
    <!-- Animation -->
    <link rel="stylesheet" href="/plugins/animate-css/animate.css">
    <!-- slick Carousel -->
    <link rel="stylesheet" href="/plugins/slick/slick.css">
    <link rel="stylesheet" href="/plugins/slick/slick-theme.css">
    <!-- Colorbox -->
    <link rel="stylesheet" href="/plugins/colorbox/colorbox.css">
    <!-- Template styles-->
    <link rel="stylesheet" href="/css/style.css">
    <style>
        figure{
            width: 45%;
        }
        img {

            width: 100%;
        }
    </style>
</head>
<body>
<div class="body-inner">
    <!--/ Header end -->
    <div id="banner-area" class="banner-area" style="background-image:url(/images/banner/banner1.jpg)">
        <div class="banner-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="banner-heading">
                            <h1 class="banner-title">D??? ??n</h1>
                            <!-- <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                                  <li class="breadcrumb-item"><a href="#">News</a></li>
                                  <li class="breadcrumb-item active" aria-current="page">News Right sidebar</li>
                                </ol>
                            </nav> -->
                        </div>
                    </div><!-- Col end -->
                </div><!-- Row end -->
            </div><!-- Container end -->
        </div><!-- Banner text end -->
    </div><!-- Banner area end -->

    <section id="main-container" class="main-container">
        <div class="container">
            <div class="row">
                <div class="col-lg mb-5 mb-lg-0">
                    <h1 style="margin-bottom: 10%">D??? ??n c???a b???n</h1>
                    <form:form action="/startup/saveProject" method="POST" name="saveProjectForm" modelAttribute="projectForm" onsubmit="return validateProject()" enctype="multipart/form-data">
                        <form:hidden path="id"/>
                        <h5 style="color: red">${message}</h5>
                        <div class="form-group">
                            <label for="categoryId">Danh m???c d??? ??n</label>
                            <form:select class="form-control" id="categoryId" path="categoryId">
                                <form:options items="${categories}" itemLabel="categoryname" itemValue="id"/>
                                <form:errors path="categoryId"/>
                            </form:select>
                        </div>
                        <div class="form-group">
                            <label for="projectname">T??n d??? ??n</label>
                            <form:input path="projectname" class="form-control" id="projectname" placeholder="Nh???p t??n d??? ??n"/>
                            <form:errors path="projectname"/>
                        </div>
                        <div class="form-group">
                            <label for="title">Ti??u ????? cho d??? ??n (M???c ????ch)</label>
                            <form:input path="title" class="form-control" id="title" placeholder="Nh???p ti??u ????? d??? ??n"/>
                            <form:errors path="title"/>
                        </div>
                        <div class="form-group">
                            <label for="amountcalled">S??? ti???n mu???n k??u g???i</label>
                            <form:input path="amountcalled" class="form-control" id="amountcalled" />
                            <form:errors path="amountcalled"/>
                            <p id="isNumeric" style="color: red"></p>
                        </div>
                        <div class="form-group">
                            <label for="projectdetail">M?? t??? chi ti???t d??? ??n</label>
                            <form:textarea path="projectdetail" class="form-control"  id="projectdetail" style="height: 60vh; color: black" ></form:textarea>
                            <form:errors path="projectdetail"/>
                        </div>
                        <div class="form-group" >
                            <label style="margin-top: 2%">?????a ch??? d??? ??n:</label>
                        </div>
                        <div class="form-row">
                            <div class="form-group col">
                                <label for="provinceId">T???nh/TP: </label>
                                <form:select class="form-control" id="provinceId" path="province">
                                    <option class="hidden"  selected disabled>T???nh/Th??nh ph???*</option>
                                    <form:options items="${provinces}" itemLabel="name" itemValue="id"/>
                                </form:select>
                                <p id="checkProvince" style="color: red"></p>
                            </div>
                            <div class="form-group col">
                                <label for="districtId">Qu???n/Huy???n: </label>
                                <form:select class="form-control" id="districtId" path="district">
                                    <option selected value="">Ch???n Qu???n Huy???n</option>
                                </form:select>
                                <p id="checkDistrict" style="color: red"></p>
                            </div>
                            <div class="form-group col">
                                <label for="subdistrictId">X??/Ph?????ng: </label>
                                <form:select class="form-control" id="subdistrictId" path="subdistrict">
                                    <option selected value="">Ch???n X?? Ph?????ng</option>
                                </form:select>
                                <p id="checkSubDistrict" style="color: red"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="housenoId">?????a ch??? nh?? - ???????ng/Th??n:</label>
                            <form:input type="text" class="form-control" id="housenoId" path="houseno"/>
                            <form:errors path="houseno"/>
                        </div>
                        <label>L??u ??: </label>
                        <div class="form-group">
                            <label for="imagepresent">Ch???n ???nh ?????i di???n d??? ??n</label><br>
                            <input type="file" name="imagepresent" id="imagepresent">
                        </div>

                        <div class="form-group">
                            <label>Ch???n ???nh cho d??? ??n</label>
                            <input type="file" multiple id="imageOfProject" name="imageofproject" onchange="preview()" style="display: none;">
                            <label for="imageOfProject" style="background-color: orange; cursor: pointer; padding: 10px; margin-top: 2%;">
                                <i class="fas fa-upload"></i>Ch???n ???nh
                            </label>
                            <div id="images" style="display: flex;"></div>
                        </div>
                        <button type="submit" class="btn btn-primary">????ng d??? ??n</button>
                    </form:form>
                </div><!-- Content Col end -->

            </div><!-- Main row end -->

        </div><!-- Container end -->
    </section><!-- Main container end -->
    <!-- Javascript Files
    ================================================== -->

    <!-- initialize jQuery Library -->
    <script src="/js/validation.js"></script>
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

    <!-- Template custom -->
    <script src="/js/script.js"></script>
    <script src="/js/multipleImageJS.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#provinceId').on('change',function(){
                var provinceId = $(this).val();
                $.ajax({
                    type: 'GET',
                    url: "/province/" + provinceId,
                    success: function(result) {
                        var result = JSON.parse(result);
                        var s = '';
                        for(var i = 0; i < result.length; i++) {
                            s += '<option value="' + result[i].id + '">' + result[i].name + '</option>';
                        }
                        $('#districtId').html(s);
                        $('#subdistrictId').html('<option value=""></option>')
                    }
                });
            });
            $('#districtId').on('change',function(){
                var districtId = $(this).val();
                $.ajax({
                    type: 'GET',
                    url: "/district/" + districtId,
                    success: function(result) {
                        var result = JSON.parse(result);
                        var s = '';
                        for(var i = 0; i < result.length; i++) {
                            s += '<option value="' + result[i].id + '">' + result[i].name + '</option>';
                        }
                        $('#subdistrictId').html(s);
                    }
                });
            });
        });
    </script>

</div><!-- Body inner end -->
</body>

</html>