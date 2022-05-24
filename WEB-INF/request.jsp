<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="private, must-revalidate, max-age=0">
    <meta http-equiv="Expires" content="Sat, 26 Jul 1997 05:00:00 GMT">
    <meta name="referrer" content="never">
    <title>Contact Us</title>
    <link rel="stylesheet" href="./static/css/request.css">
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
<body oncopy="alert('Can not copy');return false;" , onpaste="alert('Can not paste'); return false;">
<%@include file="webheader.jsp" %>
<!---main-section--->
<form class="row g-3" method="post">
    <div class="col-md-4">
        <label for="validationCustom01" class="form-label">First name</label>
        <input type="text" class="form-control" id="validationCustom01" value="" required>
        <div class="valid-feedback">
            Looks good!
        </div>
    </div>

    <div class="col-md-4">
        <label for="validationCustom02" class="form-label">Last name</label>
        <input type="text" class="form-control" id="validationCustom02" value="" required>
        <div class="valid-feedback">
            Looks good!
        </div>
    </div>

    <div class="col-md-6">
        <label for="validationCustom03" class="form-label">E-mail</label>
        <input type="text" class="form-control" aria-describedby="basic-addon2" id="validationCustom03" required>
        <span class="input-group-text" id="basic-addon2">@my.yorku.ca</span>
        <div class="invalid-feedback">
            Please provide a valid E-mail.
        </div>
    </div>

    <div class="col-md-8">
        <label for="validationCustom03" class="form-label">Message:</label>
        <textarea class="form-control" aria-label="With textarea" required></textarea>
        <div class="invalid-feedback">
            Please type your message!
        </div>
    </div>
    <div class="col-12">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
            <label class="form-check-label" for="invalidCheck">
                Agree to terms and conditions
            </label>
            <div class="invalid-feedback">
                You must agree before submitting.
            </div>
        </div>
    </div>
    <div class="col-12">
        <button class="btn btn-primary" type="submit">Submit form</button>
    </div>
</form>
</body>
</html>
</body>
</html>