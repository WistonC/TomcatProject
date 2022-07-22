<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>About us</title>
    <link rel="stylesheet" href="./static/css/aboutus.css">
    <style>
        @media print {
            body {
                display: none
            }
        }

        * {
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
    </style>
</head>
<body oncopy="alert('Copy is not allowed');return false;" , onpaste="alert('Can not paste'); return false;">
<%@include file="navBar.jsp" %>
<!----Main section---->
<div class="main-section">
    <div class="content">
        <h1>About Us</h1>
        <p>The online store book store is founded by group5. The online book store provides books mainly in financial
            area. </p>
        <p>There are many options for customer to acquire the books, including paper book, online reading, electronic
            version download.</p>
        <p>If you have any requests, please leave message on request page, we will contact you immediately</p>

    </div>
</div>
</body>
</html>

<script type='text/javascript'>
    if (window.name != "noReload") {
        window.name = "noReload";
        location.reload();
    } else {
        window.name = "";
    }

    window.history.forward(1);

    function noMenuOne() {
        alert('Can not right click');
        return false;
    }

    document.oncontextmenu = noMenuOne
    window.onload = function () {
        document.onkeydown = function () {
            var e = window.event || arguments[0];
            if (e.keyCode == 123) {
                alert("View Source not allow");
                return false;
            } else if ((e.ctrlKey) && (e.shiftKey) && (e.keyCode == 73)) {
                alert("View Source not allow");
                return false;
            } else if ((e.ctrlKey) && (e.keyCode == 85)) {//追加

                return false;
            }
        };
        document.oncontextmenu = function () {
            alert("View Source is not allow");
            return false;
        }
    }

    window.onload = function () {
        document.onkeydown = function () {
            var e = window.event || arguments[0];
            if ((e.ctrlKey) && (e.keyCode == 80)) {
                alert("No printing allowed");
                return false;
            }
        };
        document.oncontextmenu = function () {
            alert("Printing is not allow");
            return false;
        }
    }
    window.onkeydown = window.onkeyup = window.onkeypress = function () {
        window.event.returnValue = false;
        return false;
    }

    var h = window.innerHeight, w = window.innerWidth;
    window.onresize = function () {
        if (h != window.innerHeight || w != window.innerWidth) {
            window.close();
            window.location = "about:blank";
        }
    }
</script>