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
  <title>地铁查询</title>
  <style>
    body{
      width: 100%;
      height: 100%;
      background-color: #f7f7f7;
    }

    .nav{
      background-color: #00345b;  /*颜色*/
      height:50px;/*高度140像素*/
      width: 100%;/*宽度为<body>的100%*/
      position: absolute;/*绝对定位*/
      top: 190px;/*距离顶部*/
      left: 150px;/*距离左侧边界*/
    }

    .nav li{
      float:left;
      width:200px;
      text-align:center;
    }

    .ul_top{
      list-style: none;/*去除列表格式，消除小黑点*/
      position: absolute;
      left: 10px;/*距离左侧*/
    }

    .nav a{
      display:block;/*块状显示*/
      color:white;/*内容颜色*/
      text-decoration: none;/*去掉下划线*/
      width: 180px;/*每个宽度80px*/
      line-height: 30px;/*行高30px*/
      font-size: 23px;
    }

    .nav a:hover{
      color: #888888;
    }

    h1{
      margin-top: 13px;
      margin-left: 150px;
      color: #00345b;
    }

    #t1{
      background-color: #ffffff;
      width: 1000px;
      height: 600px;
      margin-left: 143px;
      margin-top: 70px;
      border-collapse: collapse;
    }

    #t2{
      background-color: #ffffff;
      width: 1000px;
      height: 600px;
      margin-left: 143px;
      margin-top: 70px;
      border-collapse: collapse;
    }

    #t3{
      background-color: #ffffff;
      width: 1000px;
      height: 600px;
      margin-left: 143px;
      margin-top: 70px;
      border-collapse: collapse;
    }

    table td {
      font-size: 25px;
      background-color: #ffffff;
      color: #262626;
      font-weight: bold;
      border: 0 solid #888888;
    }

    #ph1{
      width: 100%;
      height: 110px;
    }

    #ph2{
      position: absolute;
      right: 10px;
      top: 240px;
      width: 420px;
      height: 600px;
    }

    #p1{
      position: absolute;
      left: 200px;
      top: 300px;
    }

    #inp1{
      position: absolute;
      left: 200px;
      top: 375px;
      height: 30px;
    }

    #p2{
      position: absolute;
      left: 200px;
      top: 300px;
    }

    #inp2{
      position: absolute;
      left: 200px;
      top: 375px;
      height: 30px;
    }

    #p3{
      position: absolute;
      left: 180px;
      top: 300px;
    }

    #inp3{
      position: absolute;
      left: 275px;
      top: 330px;
      height: 30px;
    }

    #p4{
      position: absolute;
      left: 180px;
      top: 380px;
    }

    #inp4{
      position: absolute;
      left: 275px;
      top: 410px;
      height: 30px;
    }

    button{
      position: absolute;
      left: 260px;
      top: 480px;
      width: 80px;
      height: 50px;
      font-size: 25px;
      background-color: #00345b;
      color: white;
      border: white;
      border-radius: 8px;
    }

    button:hover{
      transition-duration: 0.4s;
      background-color: #345f81;
    }

    iframe{
      width: 600px;
      height: 500px;
    }

  </style>
</head>
<body>

<img src="2.jpg" id="ph2">

<div>
  <img src="1.jpg" id="ph1"><br>
  <h1>地铁查询</h1>
</div>

<div class="nav" >

  <ul class="ul_top">

    <li><a id="line" onclick="show1()">线路查询</a></li>
    <li><a id="station" onclick="show2()">站点查询</a></li>
    <li><a id="route" onclick="show3()">起点-终点查询</a></li>

  </ul>
</div>

<div id="div1">
  <form action="line.jsp" method="get" target="ifm1">
    <table id="t1">
      <tr>
        <td colspan="2" width="30%" height="50px">
          <p id="p1">线路号:</p><br>
          <label>
            <input id="inp1" type="text" name="studentNumber" placeholder="请输入线路号">
          </label><br>
          <a>
            <button>
              查询
            </button>
          </a>
        </td>
        <td>
          <div>
            <iframe name="ifm1"></iframe>
          </div>
        </td>
      </tr>
    </table>
  </form>
</div>

<div id="div2" hidden="hidden">
  <form action="station.jsp" method="get" target="ifm2">
    <table id="t2">
      <tr>
        <td colspan="2" width="30%" height="50px">
          <p id="p2">站点名称:</p><br>
          <label>
            <input id="inp2" type="text" name="station" placeholder="请输入站点名称">
          </label>
          <button>
            查询
          </button>
        </td>
        <td>
          <div>
            <iframe name="ifm2"></iframe>
          </div>
        </td>
      </tr>
    </table>
  </form>
</div>

<div id="div3" hidden="hidden">
  <form action="route.jsp" method="get" target="ifm3">
    <table id="t3">
      <tr>
        <td colspan="2" width="30%" height="50px">
          <p id="p3">出发地:</p>
          <label>
            <input id="inp3" type="text" name="form" placeholder="请输入起点名称">
          </label>
          <p id="p4">目的地:</p>
          <label>
            <input id="inp4" type="text" name="after" placeholder="请输入终点名称">
          </label>
          <button>
            查询
          </button>
        </td>
        <td>
          <div>
            <iframe name="ifm3"></iframe>
          </div>
        </td>
      </tr>
    </table>
  </form>
</div>

<script>
  function show1(){
    document.getElementById("div1").style.display="block";
    document.getElementById("div2").style.display="none";
    document.getElementById("div3").style.display="none";
  }
  function show2()
  {
    document.getElementById("div1").style.display="none";
    document.getElementById("div2").style.display="block";
    document.getElementById("div3").style.display="none";
  }

  function show3()
  {
    document.getElementById("div1").style.display="none";
    document.getElementById("div2").style.display="none";
    document.getElementById("div3").style.display="block";
  }


</script>

</body>
</html>