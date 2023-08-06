<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        function delete_ok(seq) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'delete/' + seq;
        }
    </script>
    <link href="css/main.css" type="text/css" rel="stylesheet"/>
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
            <a href="best" class="selected">인기글</a>
        </div>
    </nav>
</header>
<main>
    <article>
        <div class="topics">
            <c:forEach items='${list}' var="b">
                <div class="topic_row">
                    <div class="votenum">-</div>
                    <div class="vote">
                        <span id="vote9818">&nbsp;</span>
                    </div>
                    <div class="topictitle">
                        <a href=${b.getUrl()} rel="nofollow">
                            <h1>${b.getTitle()}</h1>
                        </a>
                        <span class="topicurl">${b.getUrl()}</span>
                    </div>
                    <div class="topicdesc">
                        <a href="topic/${b.getBoard_seq()}" class="c99 breakall">
                                ${b.getContent()}
                        </a>
                    </div>
                    <div class="topicinfo">
                        <span ></span>
                        "글쓴이"
                        <a href="/user?id=xguru">${b.getId()}</a>
                        " ${b.getRegdate()} "
                        <span ></span>
                        "조회수: ${b.getView_count()}"
                        <span ></span>
                        <a href="javascript:delete_ok(${b.getBoard_seq()})">삭제</a>
                        <span ></span>
                        <a href="edit/${b.getBoard_seq()}">수정</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </article>
</main>
<footer>
    <div>
        <a href="guidelines" class="u">사이트 이용법</a>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>