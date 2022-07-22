<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>Online Book Store</title>
    <link rel="stylesheet" href="./static/css/mainpage.css">
    <link rel="stylesheet" href="./static/css/bootstrap.css">
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

<body oncopy="alert('Can not copy');return false;" , onpaste="alert('Can not paste'); return false;"
      ondragstart="return false;" ondrop="return false;">
<%@include file="navBar.jsp" %>
<%--Card Group--%>
<div class="card-group">
    <%--1st card--%>
    <div class="card mb-3" style="max-width: 540px;position: relative">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="./ImgServlet?imgVal=intelligent.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body" style="">
                    <h5 class="card-title">The Intelligent Investor</h5>
                    <p class="card-text">Price: $713.99</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <a href="#" class="btn btn-primary" style="position: absolute; bottom: 1%">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-cart-plus" viewBox="0 0 16 16">
                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>
                        Add to Cart</a>
                </div>
            </div>
        </div>
    </div>

    <%--2nd card--%>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="./ImgServlet?imgVal=future.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Technical Analysis of the Future Marke</h5>
                    <p class="card-text">Price: $566.99</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <a href="" class="btn btn-primary" style="position: absolute; bottom: 1%">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-cart-plus" viewBox="0 0 16 16">
                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>
                        Add to Cart</a>
                </div>
            </div>
        </div>
    </div>

    <%--3rd card--%>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="./ImgServlet?imgVal=operator.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Reminiscences of a Stock Operator</h5>
                    <p class="card-text">Price: $24.99</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <a href="" class="btn btn-primary" style="position: absolute; bottom: 1%">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-cart-plus" viewBox="0 0 16 16">
                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>
                        Add to Cart</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card-group">
    <%--4th--%>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="./ImgServlet?imgVal=modelling.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Modelling Value</h5>
                    <p class="card-text">Price: $229.44</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <a href="" class="btn btn-primary" style="position: absolute; bottom: 1%">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-cart-plus" viewBox="0 0 16 16">
                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>
                        Add to Cart</a>
                </div>
            </div>
        </div>
    </div>

    <%--5th card--%>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="./ImgServlet?imgVal=waves.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Elliott Wave Principle</h5>
                    <p class="card-text">Price: $129.99</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <a href="" class="btn btn-primary" style="position: absolute; bottom: 1%">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-cart-plus" viewBox="0 0 16 16">
                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>
                        Add to Cart</a>
                </div>
            </div>
        </div>
    </div>

    <%--6th card--%>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row g-0">
            <div class="col-md-4">
                <img src="./ImgServlet?imgVal=irrational.png" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Predictably Irrational</h5>
                    <p class="card-text">Price: $29.99</p>
                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    <a href="" class="btn btn-primary" style="position: absolute; bottom: 1%">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-cart-plus" viewBox="0 0 16 16">
                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>
                        Add to Cart</a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="webfooter.jsp" %>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            //F12
            if (e.keyCode == 123) {
                return false;
                //Ctrl+Shift+I
            } else if ((e.ctrlKey) && (e.shiftKey) && (e.keyCode == 73)) {
                return false;
                //Shift+F10
            } else if ((e.shiftKey) && (e.keyCode == 121)) {
                return false;
                //Ctrl+U
            } else if ((e.ctrlKey) && (e.keyCode == 85)) {
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
    }

    window.onkeydown = window.onkeyup = window.onkeypress = function () {
        window.event.returnValue = false;
        return false;
    }

</script>
