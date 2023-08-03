<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*" %>
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
                },
                error: function (error) {
                    // something went wrong
                    console.log(error.status)
                }
            });
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
                            <a href="/" class="selected">GeekNews</a>
                        </span>
            <a href="/write">글등록</a>
            <span class="curnavitem"></span>
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
                        <div class="topicinfo"><span>글쓴이</span><a href="/user/${b.getId()}">${b.getId()}</a>
                            ${b.getRegdate()}</div>
                        <br>
                        <div class="topic_contents">
                            <div><span id="topic_contents">
                                ${b.getContent()}
                            </span></div>
                        </div>
                        <br>
                    </div>
                    <div class="comment_form">
                        <form class="write_comment" action="/comments" method="POST"
                              onsubmit="return replace2spaces('contents')">
                            <div class="group">
                                    <textarea id="contents" rows="5" style="width:100%" name="contents"
                                              class="comment_textarea" required="" placeholder="댓글 적기"></textarea>
                            </div>
                            <div class="group comment_button_box watch_box">
                                <input type="hidden" value="kevin000606">
                                <input type="hidden" id="verified" value="">
                                <div>
                                    <input id="watch_comment" name="watch" type="checkbox" class="check">
                                    <label class="watch">
                                        <span id="watchmsg">댓글 알림 받기</span>
                                    </label>
                                    <input type="email" id="email" name="email" value="" style="width:180px"
                                           placeholder="댓글 알림받을 이메일 주소" hidden="">
                                    <input id="verify_email_btn" type="button" value="이메일 인증" hidden="">
                                </div>
                                <input type="submit" class="comment_button" value="댓글 달기">
                                <div id="authmsg" class="inline watch" style="display: none; grid-column: 1 / 2;">인증
                                    이메일 클릭후 다시
                                    체크박스를 눌러주세요
                                </div>
                            </div>
                            <input type="hidden" name="tid" value="9926">
                            <input type="hidden" id="userid" value="kevin000606">
                        </form>
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
                    <img src="${a}" class="card-img-top" alt="preview">
                    <div class="card-body">
                        <div class="content is-clipped">
                            <div class="mb-2"><strong>Driver.js</strong></div>
                            <div class="mb-2">A light-weight, no-dependency, vanilla JavaScript library to drive user's
                                focus across the page.
                            </div>
                            <div class="is-flex is-vcentered">
                                <small style="white-space:nowrap" class="has-text-grey">https://driverjs.com</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="comment_thread descendant">
            <!-- comments -->
            <input type="hidden" id="userid" value="kevin000606"><input type="hidden" id="verified" value="?>">
            <div class="comment_row" id="cid17852" style="--depth:0">
                <div class="commentinfo"><a href="/user?id=regentag">regentag</a> <a
                        href="comment?id=17852">11시간전</a><span id="unvotec17852"></span>&nbsp;&nbsp;<a
                        href="javascript:child_toggle(17852, 1);"><span class="commentfold">[-]</span></a></div>
                <div class="commentTD"><span id="contents17852"
                                             class="comment_contents"><p>ZIP으로 묶고 암호 거는것보다 더 편할까요..?</p>
</span></div>
            </div>
            <!-- comments -->
        </div>
    </article>
</main>
<footer>
    <div>
        <a href="/guidelines" class="u">사이트 이용법</a>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>

</html>