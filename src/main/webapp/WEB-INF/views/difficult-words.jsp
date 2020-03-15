<%--
  Created by IntelliJ IDEA.
    User: young
    Date: 20. 3. 13.
    Time: 오후 7:59
    To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<html>
<head>
    <title>Trendy Words !</title>
    <style>
        #topMenu {
            list-style: none;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        #topMenu ul li {
            display: inline;
        }
        #topMenu .menuLink {
            display: inline-block;
            padding: 10px;
            text-decoration:none;
            color: black;
        }
        #topMenu .menuLink:hover {
            color: red;
            font-weight: bold;
        }
        #content{
            text-align: center;
        }
    </style>
</head>
<body>
    <nav id="topMenu">
        <ul style="text-align: center;">
            <li><a class="menuLink" href="/">Home</a></li>
            <li><a class="menuLink" href="/about">About</a></li>
            <li><a class="menuLink" href="/trendy-words">Trendy Words</a></li>
            <li><a class="menuLink" href="/difficult-words">Difficult Words</a></li>
        </ul>
    </nav>
    <div id="content">
        <h1>Difficult Words</h1>
        <h3>어려운 단어</h3>
        <form action="/" method="post">
            <button type="submit" name="your_name" value="your_value">Go post</button>
        </form>
    </div>
</body>
</html>
