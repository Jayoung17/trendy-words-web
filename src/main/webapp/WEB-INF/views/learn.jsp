<%--
  Created by IntelliJ IDEA.
  User: young
  Date: 20. 3. 14.
  Time: 오전 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<html>
<head>
    <title>Trendy Words !</title>
    <style>
        #subMenu {
            list-style: none;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        #subMenu ul li {
            list-style: none;
        }
        #subMenu .menuLink {
            display: inline-block;
            padding: 10px;
            text-decoration: none;
            color: black;
        }
        #subMenu .menuLink:hover {
            text-decoration: underline;
        }
        #header{
            text-align: center;
        }
        #content {
            text-align: center;
            display: grid;
            grid-template-columns: 0.2fr 1fr;
            grid-template-rows: 1fr;
            grid-column-gap: 0px;
            grid-row-gap: 0px;
        }
        .subMenu-box{
            grid-area: 1 / 1 / 2 / 2;
        }
        .learn-box {
            border: 2px solid black;
            margin-right: 20px;
            grid-area: 1 / 2 / 2 / 3;

            display: grid;
            grid-template-columns: 0.1fr 1fr 0.1fr;
            grid-template-rows: 1fr;
            grid-column-gap: 0px;
            grid-row-gap: 0px;
        }
        .backWord{
            grid-area: 1 / 1 / 2 / 2;
        }
        .word{
            grid-area: 1 / 2 / 2 / 3;
        }
        .nextWord{
            grid-area: 1 / 3 / 2 / 4;
        }
    </style>
</head>
<body>
    <div id="header">
        <h1>학습하기</h1>
        <form action="/trendy-words" method="get">
            <button type="submit" name="your_name" value="your_value">돌아가기</button>
        </form>
    </div>
    <div id="content">
        <div class="subMenu-box">
            <nav id="subMenu">
                <ul style="text-align: center;">
                    <li><a class="menuLink" href="">ALL</a></li>
                    <li><a class="menuLink" href="">World</a></li>
                    <li><a class="menuLink" href="">Politics</a></li>
                    <li><a class="menuLink" href="">Business</a></li>
                    <li><a class="menuLink" href="">Health</a></li>
                    <li><a class="menuLink" href="">Entertainment</a></li>
                    <li><a class="menuLink" href="">Tech</a></li>
                    <li><a class="menuLink" href="">Sports</a></li>
                </ul>
            </nav>
        </div>
        <div class="learn-box">
            <div class="backWord">
                <form action="/trendy-words" method="get">
                    <button type="submit" name="your_name" value="your_value">back</button>
                </form>
            </div>
            <div class="word">
                <h1>사진</h1>
                <p>단어</p>
                <p>뜻</p>
                <p>예문</p>
                <p>뜻</p>
                <p>발음듣기</p>
                <p>녹음하기</p>
                <p>결과</p>
            </div>
            <div class="nextWord">
                <form action="/trendy-words" method="post">
                    <button type="submit" name="your_name" value="your_value">next</button>
                </form>
            </div>
        </div>
    </div>

</body>
</html>
