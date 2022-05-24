<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <!-- Bootstrap CSS and link with css files -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./static/css/login_style.css">
    <style>
        @media print {
            body {
                display: none
            }
        }
    </style>
</head>

<body>
<div class="login">
    <h1>Login</h1>
    <form action="./LoginServlet" method="post">

        <label for="username">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                 class="bi bi-person-circle" viewBox="0 0 16 16">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                <path fill-rule="evenodd"
                      d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
            </svg>
        </label>
        <input type="text" name="username" placeholder="Username" id="username" value="${cookie.name.value}" required>
        <label for="password">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-key"
                 viewBox="0 0 16 16">
                <path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"/>
                <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
            </svg>
        </label>
        <input type="password" name="password" placeholder="Password" id="password" required>
        <input type="submit" id="btn-submit" value="Login">
    </form>

</div>
</body>
</html>

<script>

    var i1 = document.querySelector('#Username');
    var i2 = document.querySelector('#Password');
    var uname = document.querySelector('#Username');
    var upswd = document.querySelector('#Password');
    but2.onclick = function () {
        i1.value = "";
        i2.value = "";
    }
    $(function () {
        $(function () {

            if (window.history && window.history.pushState) {
                $(window).on('popstate', function () {
                    window.history.pushState('forward', null, '#');
                    window.history.forward(1);
                });
            }
            window.history.pushState('forward', null, '#');
            window.history.forward(1);
        });
    });
    if (window.name != "noReload") {
        window.name = "noReload";
        location.reload();
    } else {
        window.name = "";
    }
    if (document.addEventListener) {

        window.addEventListener('pageshow', function (event) {
            if (event.persisted || window.performance && window.performance.navigation.type == 2) {
                location.reload();
            }
        }, false);
    }
    window.history.forward(1);
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
            alert("View Source not allow");
            return false;
        }
    }
</script>