<%--
  Created by IntelliJ IDEA.
  User: 何欣梅
  Date: 2018/9/13
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-2.1.0.js"></script>
</head>
<body>

<table border="1">
    <tr>
        <td width="50">Id</td>
        <td width="150">UserName</td>
        <td width="150">Password</td>
        <td width="150">Edit</td>
        <td width="150">Delete</td>

    </tr>
    <c:forEach items="${pageBean.list}" var="admin">
        <tr>
            <td><c:out value="${admin.id}"/></td>
            <td><c:out value="${admin.username}"/></td>
            <td><c:out value="${admin.password}"/></td>
            <td><c:out value="${admin.password}"/></td>
            <td><a href="update?id=${admin.id}">Edit</a></td>
            <td><a href="delete?id=${admin.id}">Delete</a></td>
        </tr>
    </c:forEach>

    <tr>
        <td colspan="5">共&nbsp;${pageBean.getTotalPages()}&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;
            当前第&nbsp;${pageBean.getPageNo()}页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
                    href="list?pageNo=${pageBean.getTopPageNo()}">首页</a>
            <a
                    href="list?pageNo=${pageBean.getPreviousPageNo()}">上一页</a>
            <a
                    href="list?pageNo=${pageBean.getNextPageNo()}">下一页</a>
            <a
                    href="list?pageNo=${pageBean.getNextPageNo()}">尾页</a>

        </td>
    </tr>
</table>
</body>
</html>
