<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/getDataById5">
  <table>
    <tr>
      <td>用户名</td>
      <td><label>
        <input type="text" name="username">
      </label></td>
    </tr>
    <tr>
      <td>密码</td>
      <td><label>
        <input type="text" name="password">
      </label></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="更新">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
