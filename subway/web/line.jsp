<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/3/13
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="subway.using" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>线路查询</title>
</head>

<body >
<%

    String line=request.getParameter("roles");

    using me=new using();
    int stop=me.findstationsatrole(line);

    if(stop!=-1){
        out.println("线路:"+line+"<br>");
        for (int i=0;i<=(stop/2)+1;i++) {

            out.println("----------------------------" + "<br>");
            out.println("站点:"+me.onrolestation[i]+"<br>");

        }
    }
    else{

%>

<script>
    alert("没有该线路");
    window.history.back(-1);
</script>
<%
    }
%>



</body>
</html>