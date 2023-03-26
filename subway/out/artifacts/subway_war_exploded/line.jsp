<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/3/13
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.subway" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>线路查询</title>
</head>
<%

    String line=request.getParameter("line");

    subway me=new subway();
    String temp=me.findbylin(line);

    if(!temp.equals("###")){
        out.println("线路:"+line+"<br>");
        for (int i=0;!me.findbylin[i].equals("#");i++) {

            out.println("----------------------------" + "<br>");
            out.println("站点:"+me.findbylin[i]+"<br>");

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