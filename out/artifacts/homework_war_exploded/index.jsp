<%@ page import="com.web.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Liang
  Date: 2019/9/24
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    * {
      margin: 0;
      padding: 0;
    }

    body {
      color: #333;
    }

    header {
      height: 60px;
      background-color: rgb(101, 0, 255);
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding-left: 10px;
      padding-right: 10px;
    }

    .nav {
      flex: 0 0 50%;
      list-style: none;
      display: flex;
    }

    .nav li {
      margin-left: 10px;
      margin-right: 10px;
      width: 50px;
    }

    .user-info {
      padding-left: 20px;
      color: #eeeeee;
    }

    /* 超链接样式 */
    .nav li a {
      text-decoration: none;
      color: #eee;
    }

    .nav li a:hover {
      color: #fff;
    }

    .search-wrap {
      height: 60px;
      background-color: #eeeeee;
      display: flex;
      align-items: center;
      padding-left: 10%;
      margin-bottom: 10px;
    }

    .input-box {
      width: 350px;
      height: 35px;
      border: 1px solid #eee;
      border-radius: 5px;
      margin-left: 10px;
    }

    .container {
      width: 80%;
      margin: 0 auto;

      background-color: #eee;
      display: flex;
      padding: 5px 5px 5px 5px;
    }

    .left {
      flex: 0 0 66%;
      height: 90%;
      background-color: #fff;
      padding: 10px 10px 10px 10px;
    }

    .right {
      flex: 0 0 32%;
      margin-left: 10px;
      height: 100%;
      /*background-color: #aaa;*/
    }

    .row {
      display: flex;
      /* 自动换行 */
      flex-wrap: wrap;
      padding: 5px 5px 5px 5px;
    }

    .column {
      flex: 0 0 18%;
      height: 150px;
      background-color: #AAAAAA;
      border: 1px solid #333;
      border-radius: 10px;
      margin: 5px 5px 5px 5px;
    }

    footer {
      height: 100px;
      background-color: #AAAAAA;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .box{
      flex:0 0 18%;
      height: 280px;
      margin: 5px 5px 5px 5px ;
      background-color: #fff;
    }
    .box img{
      width: 90%;
      height: 70%;
    }
    .column1{
      width:95%;
      height:100px;
      background-color: #FFFFFF;
      margin:5px 5px 5px 5px;
    }
    .right a{
      text-decoration: none;
      color:#000;
    }
    .right a:hover{
      color:#aaa;
    }

  </style>
</head>
<body>
<header>
  <div>
    <!-- 导航 -->
    <ul class="nav">
      <li>
        <a href="#">首页</a>

      <li>
        <a href="#">分类</a>

      <li>
        <a href="#">书库</a>

      <li>
        <a href="#">书架</a>

      <li>
        <a href="#">最爱</a>

    </ul>
  </div>
  <div class="user-info">
    <h3>网络图书馆</h3>
  </div>

</header>
<!-- 搜索区 -->
<div class="search-wrap">
  <h2>图书挑选</h2>
  <input type="text" placeholder="输入你想要的图书" class="input-box">
</div>
<div class="container">
  <div class="left">
    <h2>好书精选</h2>
    <hr>
    <%
      List<Book> bookList = (List<Book>) request.getAttribute("bookList");
      pageContext.setAttribute("size",bookList.size());
    %>
    <div class="row">
      <%
        for(Book book:bookList){
          pageContext.setAttribute("book",book);

      %>
      <div class="box">
        <img src="images/${book.cover}" alt="">
        <p>${book.name}</p>
        <p>${book.author}</p>
      </div>
      <%
        }
      %>

    </div>
  </div>

  <div class="right">
    <div class="row-1">
      <div class="column1">
        <a href="#"><h2>每日一读</h2></a>
        <br>
      </div>
      <div class="column1">
        <a href="#"><h3>网络文化</h3></a>
        <br>
        <p> <a href="#">网络文学</a> <a href="#">中国计算机文化</a>  <a href="#">基础编程</a> <a href="#">初级编程</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>语言类</h3></a>
        <br>
        <p><a href="#">基础语言</a> <a href="#">初级语言</a> <a href="#">高级语言</a> <a href="#">语言学习</a> <a href="#">语言基础练习</a> <a href="#">语言试题</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>少儿</h3></a>
        <br>
        <p><a href="#">中国儿童文学</a> <a href="#">外国儿童文学</a> <a href="#">科普读物</a> <a href="#">绘本</a> <a href="#">动漫/卡通</a> <a href="#">幼儿启蒙</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>艺术</h3></a>
        <br>
        <p><a href="#">绘画</a> <a href="#">书法镌刻</a> <a href="#">艺术理论</a> <a href="#">摄影</a> <a href="#">音乐</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>生活</h3></a>
        <br>
        <p><a href="#">美食</a> <a href="#">保健/心理健康</a> <a href="#">旅游</a> <a href="#">家庭教育</a> <a href="#">家居休闲</a></p>
      </div>
      <div class="column1">
        <a href="#"><h3>文教</h3></a>
        <br>
        <p><a href="#">中小学教辅</a> <a href="#">外语</a> <a href="#">教材</a> <a href="#">医学</a> <a href="#">计算机</a></p>
      </div>
    </div>
  </div>
</div>
<!-- 脚注区 -->
<footer>
  <p>南京工业职业技术学院</p>
</footer>

</body>
</body>
</html>
