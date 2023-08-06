<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.example.comment.CommentDAO, com.example.comment.CommentVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        function get_imf(url) {
            var result = "";
            const API_KEY = '9c775b828e8e4576452963fb8ddec4a6';
            $.ajax({
                type: "GET",
                url: 'https://api.linkpreview.net?key=' + API_KEY + '&q=' + url,
                success: function (result) {
                    console.log(result);
                    $('#imageContainer').html('<img class="card-img-top" src="' + result.image + '" alt="Card image cap">');
                    $('.url').text(result.url);
                    $('.title').text(result.title);
                    $('.description').text(result.description);
                },
                error: function (error) {
                    // something went wrong
                    console.log(error.status)
                }
            });
        }
    </script>
    <script>
        function delete_ok(seq) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'comment/delete/' + seq;
        }
    </script>
    <link href="../css/main.css" type="text/css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>

<body>
<header>
    <nav>
        <div class="ltd">
                        <span class="geeknews">
                            <a href="/p3_21900613_3/">GeekNews</a>
                        </span>
            <a href="../write">글등록</a>
            <a href="../best">인기글</a>
        </div>
    </nav>
</header>
<main>
    <article>
        <div class="row">
            <div class="col">
                <div class="topic-table">
                    <div id="msg"></div>
                    <div class="topic">
                        <div class="topictitle link"><a
                                href="${b.getUrl()}" class="bold ud">
                            <h1>${b.getTitle()}</h1>
                        </a> <span class="topicurl">${b.getUrl()}</span></div>
                        <div class="topicinfo"><span>글쓴이</span><a href="user/${b.getId()}">${b.getId()}</a>
                            ${b.getRegdate()}<span> 조회수: ${b.getView_count()}</span></div>
                        <br>
                        <div class="topic_contents">
                            <div><span id="topic_contents">
                                ${b.getContent()}
                            </span></div>
                        </div>
                        <br>
                    </div>
                </div>
                <div class="comment_thread descendant">
                </div>
            </div>
            <div class="col">
                <script>
                    get_imf('${b.getUrl()}')
                </script>
                <div class="card" style="width: 18rem;">
                    <span id="imageContainer"></span>
                    <div class="card-body">
                        <div class="content is-clipped">
                            <div class="mb-2"><strong><span class='title'></span></strong></div>
                            <div class="mb-2"><span class='description'></span>
                            </div>
                            <div class="is-flex is-vcentered">
                                <small class="has-text-grey"><span class='url'></span></small>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="comment_thread descendant">
            <!-- comments -->
            <c:forEach items='${list}' var="c">
                <div class="comment_row" id="cid17852" style="--depth:0;width:80%">
                    <div class="commentinfo">unknown ${c.getRegdate()} <span id="unvotec17852"></span>&nbsp</div>
                    <div class="commentTD"><span class="comment_contents"><p>${c.getContent()}</p>
</span><a href="javascript:delete_ok(${c.getComment_seq()})">삭제</a></div>
                </div>
            </c:forEach>
            <!-- comments -->
            <div class="comment_form">
                <form class="write_comment" action="comment/writeok/${b.getBoard_seq()}" method="POST"
                      onsubmit="return replace2spaces('contents')">
                    <div class="group">
                                    <textarea id="content" rows="5" style="width:80%" name="content"
                                              class="comment_textarea" required="" placeholder="댓글 적기"></textarea>
                    </div>
                    <div class="group comment_button_box watch_box">
                        <input type="submit" class="comment_button" value="댓글 달기">
                    </div>
                    <input type="hidden" name="tid" value="9926">
                    <input type="hidden" id="userid" value="kevin000606">
                </form>
            </div>
        </div>
    </article>
</main>
<footer>
    <div>
        <a href="/p3_21900613_3/guidelines" class="u">사이트 이용법</a>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>

</html>