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
<body>
<div class="demo-input-size">
    <el-input
            placeholder="请输入内容"
            suffix-icon="el-icon-date"
            v-model="input1">
    </el-input>
    <el-input
            size="medium"
            placeholder="请输入内容"
            suffix-icon="el-icon-date"
            v-model="input2">
    </el-input>
    <el-input
            size="small"
            placeholder="请输入内容"
            suffix-icon="el-icon-date"
            v-model="input3">
    </el-input>
    <el-input
            size="mini"
            placeholder="请输入内容"
            suffix-icon="el-icon-date"
            v-model="input4">
    </el-input>
</div>

<div class="container">
    <div class="cloud-programming"> <img src="${pageContext.request.contextPath}/image/logo-white.svg"></div>
    <div class="cloud-text-big">云端编程，浏览器里边学边练</div>
    <div class="cloud-text-small">软件定义一切，网络连接时空，学习软件技术，创造未来世界。</div>
    <button class="study-btn">马上学习</button>
    <button class="login-btn"><a href="${pageContext.request.contextPath}/user/getDataById">登录</a></button>
    <button class="register-btn"><a href="${pageContext.request.contextPath}/user/getDataById2">注册</a></button>
</div>
<div class="container1">
</div>
<div class="cloud-text-big2">高级Web编程实验室</div>
<div class="cloud-text-small2">每人拥有自己完全独立的编程实验室，内置所有基础软件及学习素材。 打开浏览器，即刻开始编程！<button class="study-btn2">了解详情</button></div>
<div class="container2">
</div>
<div class="cloud-text-big2">双屏学习</div>
<div class="cloud-text-small2">双屏学习，小屏视频互动，大屏实际操作，学习无障碍。打开浏览器，即刻开始编程！<button class="study-btn2">了解详情</button></div>
<div class="cloud-text-big3">课程特色</div>
<div class="custom-line"></div>
<div class="aaa">
    丰富的教学服务
</div>
<div class="bbb">
    特色教学服务功能，各种配套教学服务，在线学习从未如此轻松。
</div>
<div class="ab"> <a href="https://www.bilibili.com/">马上学习</a></div>
<div class="aaa1">
    多元的学习方式
</div><div class="bbb1">
    知识提炼、答疑解惑、实时互动、开发有特色的教学服务方式。
</div>
<div class="ab1"> <a href="https://www.bilibili.com/">马上学习</a></div>
<div class="aaa2">
    高品质的学习体验
</div><div class="bbb2">
    多屏合一，随时学习，随时在线，学习记录一目了然，知识充电不再受限。
</div>
<div class="ab2"> <a href="https://www.bilibili.com/">马上学习</a></div>
<div class="ccc">
    <div class="ccc1">  ©2024 云端科技 Artech All rights reserved        </div>

</div>
</body>
</html>
