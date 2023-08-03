<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
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
  <div class="doc-container" style="max-width: 60em;">
    <div class="tacenter headline">
      <h1>GeekNews 이용법</h1>
    </div>
    <h2>이용자와 글</h2>
    <h3>이 사이트의 주 이용자는 누구인가요 ?</h3>
    <p>GeekNews(긱뉴스) 는 이름과 같이 Geek들을 위한 뉴스 서비스 입니다. </p>
    <p>Geek은 '전자 공학이나 지성(intellectuality) 등의 한 분야 혹은 여러 분야를 탁월하게 이해하고 있는 특이한 사람'을 지칭하는 단어라고 합니다만, 여기서는
      <br><br>
      &nbsp;&nbsp;&nbsp;<strong>Geek = IT를 기반으로 하는 다양한 것들에 지적인 호기심을 가지고 있는 사람</strong> <br><br>을 의미합니다.
    </p>
    <br>
    <h3>사이트에 가입해야 사용할 수 있나요?</h3>
    <p>뉴스를 보는데에는 가입이 필요없지만, 글을 등록하기 위해서는 <a href="/signup" class="u bold">회원 가입</a>이 필요합니다.</p>
    <p>회원으로 가입하시면 뉴스 링크를 올리고, 댓글을 달고, 좋은 뉴스에 투표하는 것이 가능합니다.</p>
    <p>또한, 나중에 보고 싶은 기사에 favorite 하는 것도 가능합니다. </p>
    <p>스팸방지를 위해서, 가입후 일주일이 지나야 뉴스 링크 등록이 가능합니다.</p>
    <br><br>
    <h3>어떤 글과 링크를 올려야 하나요?</h3>
    <p>Geek 들이 지적으로 관심을 가질만한 모든 것들 입니다. 기술이나 스타트업에 관련된 것들을 주로 포함합니다. </p>
    <br><br>
    <h3>어떤 것을 올리지 말아야 하나요?</h3>
    <p>정치, 종교, 사건사고, 스포츠 등에 관련한 많은 것들은 다루지 않습니다.</p>
    <p>포털 뉴스란에 나올 법한 것들은 대부분 여기랑 맞지 않습니다. </p>
    <p>채용 공고는 별도의 뉴스로는 등록 하지 않습니다. 차후에 "이달의 구인공고" 글에서 댓글로 등록가능하게 할 예정입니다.</p>
    <br><br>
    <h3>Karma는 무엇인가요 ?</h3>
    <p>긱뉴스 내에서 사용자의 점수 입니다. 이 점수를 기반으로 특정 기능(Downvote, Flag, 소셜 공유 등)에 대한 접근 레벨이 결정 됩니다.</p>
    <p>Karma 는 올리신 좋을 글/댓글에 대해 다른 사용자들이 Upvote를 하면 획득할 수 있습니다.</p>
    <br><br>
    <h2>글 올리기</h2>
    <h3>뭘 올리면 되나요 ?</h3>
    <p>Geek들이 관심을 가지고 읽어볼만한 URL을 올려주세요.</p>
    <p>새 글이 등록되면 긱뉴스 최신 글에 등록됩니다. 글은 투표를 통해서 순서가 조정됩니다.</p>
    <p>또한 Karma 시스템에 의해서 해당 글이 특정 기준이 만족되면 <a href="https://twitter.com/GeekNewsBot" class="u bold">트위터
      @GeekNewsBot 계정</a>, <a href="https://facebook.com/GeekNewsBot" class="u bold">페이스북 GeekNewsBot
      페이지</a>, <a href="https://news.hada.io/slackbot" class="u bold">긱뉴스 Slackbot</a> 으로도 전송됩니다.</p>
    <br>
    <h3>제목과 내용에는 뭘 적나요?</h3>
    <p>가능하면 펌글이 아닌 원본 URL을 찾아서 등록해주세요.</p>
    <p>기본적으로 글의 원 제목을 붙이거나, 제목을 한글로 번역해서 올려주세요.</p>
    <p>원래 URL의 글 제목보다 글의 내용을 더 잘 요약 설명할 수 있다면 제목을 변경해서 적어주세요. </p>
    <p>내용에는 원글의 내용을 요약하거나, 혹시 원글이 영문이라면 한글 번역요약문을 직접 적어주시면 좋아요.</p>
    <p>비디오나 PDF 링크라면 [video] 나 [pdf] 같은것을 제목 뒤에 달아주세요.</p>
    <p>번역글이라면 [번역글] 을 뒤에 붙여주세요.</p>
    <p>글 제목에서 사이트 이름은 빼주셔도 좋습니다. URL 은 제목 뒤에 따로 표시됩니다.</p>
    <p>저희 사이트에 대한 질문은 여기 올리지 말고 news@hada.io 로 보내주세요.</p>
    <p>너무 많은 사이트를 한번에 올리지 말아주세요</p>
    <p>제목이나 내용이 클릭을 유도하는 경우 모더레이터에 의해 편집될수 있습니다.</p>
    <br><br>
    <h2>댓글 달기</h2>
    <p>친절하고 점잖게 얘기해주세요.</p>
    <p>글쓴이를 저격하지 말아주세요.</p>
    <p>반론이 있다면 그 내용만을 적어주세요.</p>
    <p>주제와 상관없는 댓글은 달지 말아주세요.</p>
    <p>정치/종교/이념 등의 싸움을 위해 사용하지 말아주세요.</p>
    <p>글이 스팸이거나, 사이트에 맞지 않는 것이라고 판단된다면 댓글을 달지말고 신고(flag) 를 눌러주세요.</p>
    <p>남에게 upvote/downvote 를 요청하지 말아주세요.</p>
    <p>댓글 내용에 포함된 URL 은 클릭 가능하게 자동으로 처리됩니다.</p>
    <p>여러분의 지성넘치는 댓글이 토픽을 더욱 읽기 좋게 만들어줍니다.</p>
    <br><br>
    <h2>Markdown 지원</h2>
    <p>본문과 댓글에서 모두 지원됩니다.</p>
    <p>기본적으로 CommonMark 규약을 따릅니다.</p>
    <p>이미지는 지원되지 않습니다.</p>
    <br><br>
    <br>
    <h2>질문 올리기</h2>
    <p>글을 올릴때 타입을 Ask로 선택하고 올리면 됩니다.</p>
    <p>상단 메뉴의 <a href="/ask" class="u">Ask</a>를 통해서 질문 글들은 따로 모아 볼수 있습니다. </p>
    <p>정답보다는 지식/지혜/경험을 공유해줄 수 있는 질문을 올려주세요.</p>
    <p>네이버 지식인에 어울릴 법한 것들은 물어보지 말아주세요.</p>
    <p>이 사이트의 이용자는 대부분 기술에 친숙한 사람들 입니다. 그들에게 물어보면 답을 얻을수 있을만한 것들을 물어봐주세요.</p>



  </div>
</main>
<footer>
  <div>
    <a href="/guidelines" class="u">사이트 이용법</a>
  </div>
</footer>
</body>

</html>