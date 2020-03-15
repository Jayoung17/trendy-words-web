<%--
  Created by IntelliJ IDEA.
  User: young
  Date: 20. 3. 13.
  Time: 오후 7:58
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
            text-decoration: none;
            color: black;
        }
        #topMenu .menuLink:hover {
            color: red;
            font-weight: bold;
        }
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
        .words-box{
            padding: 5px;
            grid-area: 1 / 2 / 2 / 3;
        }
        .word{
            border:1px solid black;
            display: grid;
            grid-template-columns: repeat(2, 1fr) 0.5fr;
            grid-template-rows: 1fr;
            grid-column-gap: 5px;
            margin: 5px;
        }
        .word-eng{
            /*border:1px solid black;*/
            grid-area: 1 / 1 / 2 / 2;
        }
        .word-mean{
            /*border:1px solid black;*/
            grid-area: 1 / 2 / 2 / 3;
        }
        .word-icon{
            /*border:1px solid black;*/
            grid-area: 1 / 3 / 2 / 4;
        }
        #add{
            margin: 5px;
            border: 8px solid #FDE4A2;
        }
        #add a{
            text-decoration: none;
            color: #FDE4A2;
        }
        #add a:hover{
            text-decoration: underline;
            color: black;
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
    <div id="header">
        <h1>Trendy Words</h1>
        <h3>시사 단어</h3>

        <form action="/trendy-words" method="post">
            <button type="submit" name="your_name" value="your_value">학습하기</button>
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
        <% String greetings = "hi"; %>
        <div class="words-box">
<%--    일별로 단어 정렬 가능하게하기 --%>
<%--    분야 메뉴 만들기 --%>
<%--    순위 숫자 매기기 --%>
            <script>
                for (let i = 1; i <= 10; i++) {
                    document.write("<div class='word' id='word-" + i + "'> <div class='word-eng'> <h3><%= greetings %></h3> <p>hello</p> </div> <div class='word-mean'> <p>안녕</p> <p>안녕하세요</p> </div> <div class='word-icon'> <img id='icon-1' alt='icon-1' src='/static/images/speaker.png' style='margin: 5px' width='30px' height='30px'> <img id='icon-2' alt='icon-2' src='/static/images/art.png' style='margin: 5px' width='30px' height='30px'> </div></div>");
                }

                for (let i = 1; i <= 10; i++)
                    (function (i){
                        let word = document.getElementById('word-' + i);
                        word.onmouseover = function(){
                            word.style.backgroundColor = "#ECFFB8";
                        }
                        word.onmouseout = function(){
                            word.style.backgroundColor = "";
                        }
                        word.onclick = function (){
                            window.location = "/trendy-words/<%= greetings %>>"
                        }
                    })(i);

                // function mouseover(){
                //     document.getElementById("add").style.backgroundColor="#FDE4A2";
                // }
                // function mouseout(){
                //     document.getElementById("add").style.backgroundColor="";
                // }
                function addWords() { // 단어 더보기

                }

            </script>
            <div id="add" onclick="addWords()">
                <h2><a href="">View More</a></h2>
            </div>
        </div>
    </div>
</body>
</html>
