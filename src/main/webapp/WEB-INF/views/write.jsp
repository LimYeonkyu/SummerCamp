<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <link href="css/main.css" type="text/css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
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
        <div class="write-container">
            <form class="sign-up-htm" action="/writeok" method="POST" accept-charset="UTF-8">
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
                        <input id="title" name="title" type="text" class="input" style="width: 100%" pattern="^[^\u{1F300}-\u{1F5FF}\u{1F600}-\u{1F64F}\u{1F680}-\u{1F6FF}]+$" placeholder="뉴스의 주제가 잘 드러나는 제목을 적어주세요" required autofocus value>
                    </div>
                    <div class="urlrow">
                        <label for="url" class="label">URL</label>
                    </div>
                    <div class="urlrow">
                        <input id="url" name="url" type="url" maxlength="500" class="input" style="width: 100%" placeholder="url 주소를 적어주세요" onblur="checkHttp(this)" required= value>
                    </div>
                    <div>
                        <label for="content" class="label">내용</label>
                    </div>
                    <div>
                        <textarea id="content" name="content" class="input" rows="15" style="width: 100%" placeholder="링크의 간단한 요약이나 번역을 적어주세요."></textarea>
                        <div id="preview"></div>
                    </div>
                </div>
                <div style="grid-column-start: 1; grid-column-end: 3;">
                    <input type="submit" class="button" value="등록">
                </div>
            </form>
        </div>
    </article>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>