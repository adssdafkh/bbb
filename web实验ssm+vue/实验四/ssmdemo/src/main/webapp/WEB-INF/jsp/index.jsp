<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Full Page Background Images</title>
    <style>
        .container {
            position: relative;
            width: 100%;
            height: 48vh;
            background-image: url('${pageContext.request.contextPath}/image/11.png');
            background-size: cover;
            background-position: center;

        }
        .login-btn, .register-btn {
            position: absolute;
            top: 10px;
            right: 20px;
            padding: 10px 20px;
            background-color: rgba(255, 255, 255, 0);
            border: none;
            border-radius: 2.5px;
            cursor: pointer;
            color: white;
            border: 0.5px solid white;
        }
        .login-btn {
            right: 100px;
        }
        .cloud-programming {

            top: 0px;
            left: 65px;
            padding: 10px;
            font-size: 20px;
            color: white;
        }
        .cloud-text-big {
            font-size: 40px;
            font-weight: bold;
            text-align: center;
            margin-top: 70px;
            color:white;
            margin-bottom: 10px;
        }

        .cloud-text-small {
            font-size: 14px;
            text-align: center;
            color:white;
        }
        .study-btn {
            position: absolute;
            top: 10px;
            right: 47%;
            padding: 10px 20px;
            background-color: white;
            border: none;
            border-radius: 2.5px;
            cursor: pointer;
            color: skyblue;
            border: 0.5px solid white;
            margin-top: 250px;
        }


        .container1 {
            position: relative;
            height: 80vh;
            background-image: url('${pageContext.request.contextPath}/image/22.png');
            background-size: cover;
            background-position: center;
            width:50%;
            margin-left: 30px;
            margin-top:10px;
        }
        .cloud-text-big2 {
            font-size: 40px;
            font-weight: bold;
            margin-top: 8px;
            color:black;
            margin-left: 30px;
        }
        .cloud-text-small2 {
            font-size: 14px;
            background-color: white;
            color:black;
            margin-left: 30px;
            margin-right: 30px;

        }

        .study-btn2 {
            background-color: white;
            color: black;
            border: 0.5px solid black;
            width:100%;
        }
        .container2 {
            position: relative;
            height: 80vh;
            background-image:  url('${pageContext.request.contextPath}/image/33.png');
            background-size: cover;
            background-position: center;
            width:50%;
            margin-left: 30px;
            margin-top:10px;
        }
        .cloud-text-big2 {
            font-size: 40px;
            font-weight: bold;
            margin-top: 8px;
            color:black;
            margin-left: 30px;
            margin-right: 30px;
        }
        .cloud-text-small2 {
            font-size: 14px;
            background-color: white;
            color:black;
            margin-left: 30px;
            margin-right: 30px;

        }

        .study-btn2 {
            background-color: white;
            color: black;
            border: 0.5px solid black;
            width:100%;
        }
        .cloud-text-big3 {
            font-size: 28px;
            font-weight: bold;
            margin-top: 16px;
            color:black;
            margin-left: 30px;
            margin-right: 30px;
        }
        .custom-line {
            margin-top: 5px;
            border-top: 1px solid grey;
            margin-left: 30px;
            margin-right: 30px;
        }
        .aaa{
            margin-top: 50px;
            font-size: 30px;
            font-weight: bold;


            color:black;
            margin-left: 100px;

        }
        .bbb {
            font-size: 10px;
            background-color: white;
            color:black;
            margin-left: 100px;


        }
        .ab{margin-left: 100px;}
        .aaa1{
            margin-top: 50px;
            font-size: 30px;
            font-weight: bold;
            color:black;
            margin-left: 100px;

        }
        .bbb1 {
            font-size: 10px;
            background-color: white;
            color:black;
            margin-left: 100px;


        }
        .ab1{margin-left: 100px;}
        .aaa2{
            margin-top: 50px;
            font-size: 30px;
            font-weight: bold;


            color:black;
            margin-left: 100px;

        }
        .bbb2 {
            font-size: 10px;
            background-color: white;
            color:black;
            margin-left: 100px;


        }
        .ab2{margin-left: 100px;}
        .ccc{
            margin-top: 20px;
            background-color: darkgrey;
            height: 50px;
        }
        .ccc1{
            padding-top: 15px;
            text-align: center;
            margin-top: 30px;
            background-color: darkgrey;

        }
    </style>
</head>
<script src="<%= request.getContextPath() %>/dist/js/about.495d3049.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/dist/css/about.810aa91a.css">
<body>
<!doctype html><html lang=""><head><meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>my-project</title><script defer="defer" src="<%= request.getContextPath() %>/dist/js/chunk-vendors.ef1b1f21.js">
    </script><script defer="defer" src="<%= request.getContextPath() %>/dist/js/app.0335c30c.js"></script>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/fonts/element-icons.f1a45d74.ttf">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/fonts/element-icons.ff18efd1.woff">
    <link href="<%= request.getContextPath() %>/dist/css/chunk-vendors.10dd4e95.css" rel="stylesheet">
    <link href="<%= request.getContextPath() %>/dist/css/app.dc4e1be5.css" rel="stylesheet">

</head><body><noscript><strong>We're sorry but my-project doesn't work properly without JavaScript enabled. Please enable it to continue.</strong></noscript><div id="app"></div></body></html>

<button class="login-btn">
    <a href="${pageContext.request.contextPath}/user/getDataById">登录</a>
</button>
<button class="register-btn"><a href="${pageContext.request.contextPath}/user/getDataById2">注册</a></button>

</body>
</html>
