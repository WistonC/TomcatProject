<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>web header</title>
    <link rel="stylesheet" href="./static/css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        @media print {
            body {
                display: none
            }
        }

    </style>

</head>
<body oncopy="alert('Copy is not allowed');return false;" , onpaste="alert('Paste is not allowed'); return false;">
<div class="main">

    <nav class="navbar navbar-expand navbar-light bg-light">
        <div class="container">
            <!--logo--------------->
            <a href="#" class="navbar-brand">
                <img src="./ImgServlet?imgVal=logo.png" alt="" width="30" height="24">
                Online Book Store
            </a>

            <!--menu-------------->
            <ul class="navbar-nav navbar-expand-xxl me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" id="Home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="Contact Us">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="About Us">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="Logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<form name="navForm" method="post" action="./NavButton">
    <input type="hidden" name="navBtnVal"/>
</form>
<script>
    $(".nav-link").click(function () {
        document.navForm.navBtnVal.value = $(this).attr("id");
        document.navForm.submit();
    });
    $(document).ready(function () {
        document.getElementById("${sessionScope.active}").className += " active";
    });
</script>


</body>
</html>