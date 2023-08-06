<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link href="../css/main.css" type="text/css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
<header>
    <nav>
        <div class="ltd">
                <span class="geeknews">
                    <a href="/p3_21900613_3/">GeekNews</a>
                </span>
            <a href="write">글등록</a>
            <a href="best">인기글</a>
        </div>
    </nav>
</header>
<main>
    <article>
        <div class="write-container">
            <form:form modelAttribute="b" method="POST" action="../editok">
                <form:hidden path="board_seq" />
                <div class="wirte-grid" style="max-width: 580px;">
                    <div>
                        <label for="title" class="label">타입</label>
                    </div>
                    <div>
                        <input type="radio" id="category_news" name="category" class="topictype" value="뉴스" checked>
                        <label class="custom-control-label" for="category_news">뉴스</label>
                        <input type="radio" id="category_ask" name="category" class="topictype" value="ask">
                        <label class="custom-control-label" for="category_ask">Ask</label>
                        <input type="radio" id="category_show" name="category" class="topictype" value="show">
                        <label class="custom-control-label" for="category_show">Show</label>
                    </div>
                    <div>
                        <label for="title" class="label">제목</label>
                    </div>
                    <div>
                        <form:input path="title" class="input" style="width: 100%" pattern="^[^\u{1F300}-\u{1F5FF}\u{1F600}-\u{1F64F}\u{1F680}-\u{1F6FF}]+$"/>
                    </div>
                    <div class="urlrow">
                        <label for="url" class="label">URL</label>
                    </div>
                    <div class="urlrow">
                        <form:input path="url" class="input" maxlength="500" style="width: 100%" onblur="checkHttp(this)" />
                    </div>
                    <div>
                        <label for="content" class="label">내용</label>
                    </div>
                    <div>
                        <form:textarea class="input" rows="15" style="width: 100%" path="content"/>
                        <div id="preview"></div>
                    </div>
                </div>
                <div style="grid-column-start: 1; grid-column-end: 3;">
                    <input type="submit" class="button" value="수정하기">
                    <input type="button" value="취소하기" onclick="history.back()" />
                </div>
            </form:form>
        </div>
    </article>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>