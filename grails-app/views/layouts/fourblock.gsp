<%--
  Created by IntelliJ IDEA.
  User: ongraphtechnoogy
  Date: 8/8/2017
  Time: 5:55 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
 <meta name="layout" content="page"/>
    <title></title>
    <style>

    #left{
          float: left;
          margin: 0;
          padding: 1em;
      }
      #right{

        margin-left: 50%;
        border-left: 1px solid gray;
        padding: 1em;
        overflow: hidden;
      }
        #message{
            color:red;
        }
    </style>
</head>

<body>

<div id="left">
    <g:pageProperty name="page.left1"/>
    <g:pageProperty name="page.left2"/>

</div>

<div id="right">
    <g:pageProperty name="page.right1"/>
    <g:pageProperty name="page.right2"/>
</div>

</body>
</html>