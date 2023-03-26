<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/3/13
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="subway.using" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html >
<head>
    <title>路线查询</title>
</head>

<body >
<%

    String startname=request.getParameter("departure");
    String stopname=request.getParameter("destination");

    useing me=new useing();
    int stop1=me.findshortrole(startname, stopname);
    int stop2=me.findfewrole(startname, stopname);


    out.println("起点:"+startname+"<br>");
    out.println("终点:"+stopname+"<br>");
    out.println("最短线路！！！"+"<br>");
    out.println("经过站点数:"+stop1+"<br>");
    out.println("最短线路:"+me.role+"<br>");

    out.println("----------------------------------"+"<br>");
    out.println("----------------------------------"+"<br>");
    out.println("----------------------------------"+"<br>");

    out.println("最少换乘线路！！！"+"<br>");
    out.println("经过站点数:"+me.temp[stop2]+"<br>");
    out.println("最少换乘:"+me.anllrole[stop2]+"<br>");

%>

</body>
</html>
