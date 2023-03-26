<%--
  Created by IntelliJ IDEA.
  User: gao'yi'pin
  Date: 2023/3/13
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>地铁查询系统</title>
    <style>
      h1 {
        color: navy;
        text-align: center;
      }

      div {
        text-align: center;
        font-size: 25px;
      }

      button {
        width: 100px;
        height: 40px;
        font-size: 18px;
      }

      h2{
        text-align: center;
      }
    </style>
  </head>
  <body>
  <h1>地铁查询系统</h1>

  <hr/>

  <form action="route.jsp" method="get">

    <h2>起点-终点路径查询</h2>

    <div>
      <label>
        出发地：
        <input type="text" name="departure" placeholder="请输入起点名称" style="height: 30px">
      </label>
    </div>

    <div>
      <label>
        目的地：
        <input type="text" name="destination" placeholder="请输入终点名称" style="height: 30px">
      </label>
    </div>
    <br>

    <div>
      <a href="route.jsp">
        <button>
          查询
        </button>
      </a>
    </div>

  </form>

  <form action="line.jsp" method="get">

    <h2>线路查询</h2>

    <div>
      <label>
        <input type="text" name="line" placeholder="请输入线路号" style="height: 30px">
      </label>
    </div><br>

    <div>
      <a href="line.jsp">
        <button>
          查询
        </button>
      </a>
    </div>

  </form>

  <form action="station.jsp" method="get">

    <h2>站点查询</h2>

    <div>
      <label>
        <input type="text" name="station" placeholder="请输入站点名" style="height: 30px">
      </label>
    </div><br>

    <div>
      <a href="station.jsp">
        <button>
          查询
        </button>
      </a>
    </div>

  </form>

  </body>
</html>
