<%-- 
    Document   : adduser
    Created on : May 23, 2023, 10:55:44 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8" />
        <title>Update Content Group</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="support@shreethemes.in" />
        <meta name="website" content="../../../index.html" />
        <meta name="Version" content="v1.2.0" />
        <!-- favicon -->
        <link rel="shortcut icon" href="../../assets/images/flm-dark.png">
        <!-- Bootstrap -->
        <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="../../assets/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Select2 -->
        <link href="../../assets/css/select2.min.css" rel="stylesheet" />
        <!-- Date picker -->
        <link rel="stylesheet" href="../../assets/css/flatpickr.min.css">
        <!-- Icons -->
        <link href="../../assets/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="../../assets/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->   <!--curriculum subject css-->
        <link rel="stylesheet" href="../../Style/CurriculumSubject.css">
        <link rel="stylesheet" href="../../assets/css/toast.style.css"/>
        <!--toast-js-->
        <script src="../../assets/js/jquery.min.js"></script>
        <script src="../../assets/js/toast.script.js"></script>
        <link href="../../assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
    </head>
    <body>
        <c:if test="${sessionScope.toast == 'true'}">
            <c:remove var="toast" scope="session" /> 
            <script>
                function addToast(title, content, type, count) {
                    $.Toast(title, content, type, {
                        has_icon: true,
                        has_close_btn: true,
                        stack: true,
                        fullscreen: false,
                        position_class: "toast-top-right",
                        timeout: count,
                        sticky: false,
                        has_progress: true,
                        rtl: false,
                    });
                }
                ;
                // type: success, warning, error, info or notice
                //            addToast(title, content, type, count)
                window.onload = addToast("Success", "Successfully!", "success", 5000);
            </script>


        </c:if>
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader -->

        <div class="page-wrapper doctris-theme toggled">
            <%@include file="../common/sidebar.jsp" %>
            <!-- sidebar-wrapper  -->

            <!-- Start Page Content -->
            <main class="page-content bg-light">
                <%@include file="../common/headerforsidebar.jsp" %>
                <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0" style="margin-bottom:10px">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="/FLM_NEW/view/common/home">ADMIN</a></li>
                                    <li class="breadcrumb-item">Content</li>
                                    <li class="breadcrumb-item active" aria-current="page">Update Content Group</li>
                                </ul>
                            </nav>
                        </div>

                        <div class="row">
                            <div class="col-lg-8 mt-4">
                                <h3>Update Content Group</h3>
                                <form action="contentgroup?action=updatecontentgroup&contentgroupid=${contentgroupid}&curriculumid=${curriculumid}" method="POST" class="mt-4">
                                    <div class="row justify-content-start align-items-center" style="margin-bottom: 20px">
                                        <div class="mb-0 position-relative">
                                            <table style="border-collapse: collapse; border-spacing: 0;">
                                                <tbody>
                                                    <c:if test="${curriculumid != null}"> 
                                                        <tr>
                                                            <td style="padding: 10px; border: 1px solid #ccc;"><label class="form-label" style="font-weight: bold;">Curriculum ID</label></td>                                                   
                                                            <td style="padding: 10px; border: 1px solid #ccc;"><input type="text" readonly value="${curriculumid}" style="background-color: #decbcb; border: none; padding: 5px;"></td>     
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 10px; border: 1px solid #ccc;"><label class="form-label" style="font-weight: bold;">Content Group ID</label></td>                                                   
                                                            <td style="padding: 10px; border: 1px solid #ccc;"><input type="text" readonly value="${contentgroupid}" style="background-color: #decbcb; border: none; padding: 5px;"></td>     
                                                        </tr>
                                                    </c:if>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="row"> 
                                        <div class="col-md-10">
                                            <div class="mb-3">
                                                <label class="form-label" style="font-weight: bold">Content Group NAME</label>
                                                <input name="contentgroupnamenew" value="${contentgroupname}" id="contentgroupname" pattern="^[a-zA-Z0-9_:.()ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂ
                                                       ẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏ
                                                       ốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ\s]{1,255}$" 
                                                       title="Can only be letters, numbers, space, _ : . () and maximum 255 characters" type="text" value="${groupNameNew}" class="form-control" placeholder="Enter Combo NAME.." required="">
                                            </div> 
                                        </div>

                                        <button type="submit" name='btnUpdateContentGroup' class="btn btn-primary col-md-10">Add Content Group</button>
                                        <div style="display:flex">
                                            <c:if test="${alertError != null}">
                                                <img src="../../assets/images/errorchamthan.png" style="width: 35px;margin-top:10px" alt="!"/>
                                                <h5 style="color:red; margin-top:20px;margin-left: 10px">${alertError}</h5>
                                            </c:if>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div><!--end container-->

                <!-- Footer Start -->
                <%@include file="../common/footerforsidebar.jsp" %>
                <!-- End -->
            </main>
            <!--End page-content" -->
        </div>
        <!-- page-wrapper -->
        <!-- Modal end -->

        <!-- javascript -->
        <script src="../../assets/js/jquery.min.js"></script>
        <script src="../../assets/js/bootstrap.bundle.min.js"></script>
        <!-- simplebar -->
        <script src="../../assets/js/simplebar.min.js"></script>
        <!-- Select2 -->
        <script src="../../assets/js/select2.min.js"></script>
        <script src="../../assets/js/select2.init.js"></script>
        <!-- Datepicker -->
        <script src="../../assets/js/flatpickr.min.js"></script>
        <script src="../../assets/js/flatpickr.init.js"></script>
        <!-- Icons -->
        <script src="../../assets/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="../../assets/js/app.js"></script>
        <script src="../../JS/Combo.js"></script>
    </body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
