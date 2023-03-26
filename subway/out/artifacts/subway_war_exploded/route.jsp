<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/3/13
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="subway.useing" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>路线查询</title>
</head>
<%

    String form=request.getParameter("form");
    String after=request.getParameter("after");

    useing me=new useing();
    String temp=me.findbys_s(line);
    if(){
        out.println("----------------------------" + "<br>");
        out.println("起点:"++"<br>");
        out.println("终点:"++"<br>");
        out.println("----------------------------" + "<br>");
        out.println("经过站点数:"++"<br>");
        out.println("经过线路:"++"<br>");

        for(){
            out.println();
        }

    }

    else{
        out.println("----------------------------" + "<br>");
        out.println("起点:"++"<br>");
        out.println("终点:"++"<br>");
        out.println("----------------------------" + "<br>");
        out.println("经过站点数:"++"<br>");
        out.println("经过线路:"++"<br>");

        for(){
            out.println();
        }

        out.println("换乘"++"号线""<br>");
    }
%>

</html>
