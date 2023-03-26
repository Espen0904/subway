<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/3/13
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="subway.using" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html >
<head>
    <title>站点查询</title>
</head>
<body >
<%

    String station=request.getParameter("station");

    useing me=new useing();
    int stop=me.findrolesatstation(station);

    if(stop!=-1) {
        out.println("站点:"+station+"<br>");
        for (int i=0;i<=stop;i++) {

            out.println("途径该站点的线路名称:"+me.onstationatroles[i]+"<br>");

        }
    }
    else{
%>
<script>
    alert("没有该站点");
    window.history.back(-1);
</script>
<%
    }
%>


</body>
</html>
