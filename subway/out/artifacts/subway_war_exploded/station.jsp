<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/3/13
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.subway" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>站点查询</title>
</head>

<%

    String station=request.getParameter("station");

    subway me=new subway();
    String temp=me.findbyname(station);

    if(!temp.equals("###") ) {
        out.println("站点:"+station+"<br>");
        for (int i=0;!me.findbyname[i].equals("#");i++) {

            out.println("----------------------------" + "<br>");
            out.println("途径该站点的线路名称:"+me.findbyname[i]+"<br>");

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

<tr>
    <td>
        <div>
            <a href="index.jsp">
                <button>返回主界面</button>
            </a>
        </div>
    </td>
</tr>


</html>