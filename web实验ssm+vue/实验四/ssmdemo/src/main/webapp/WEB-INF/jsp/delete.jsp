<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<form action="${pageContext.request.contextPath}/user/getDataById4" method="post">
    <table>

        <tr>
            <td>id</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="删除">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
