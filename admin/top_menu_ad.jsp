<%@ page contentType = "text/html;charset=utf-8" %>
<nav class ="navbar title navbar-expand navbar-white bg-white">
    <div>
        <a href="index.jsp"><img src="image\logo.png" class="logo img-fluid" alt="logo_image"></a>
    </div>
    <div class="dropdown">
        <button class="btn dropdown-toggle" style="background-color:white;" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            카테고리
        </button>
        <div class="dropdown-menu px-2" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">상의</a>   
            <a class="dropdown-item" href="#">하의</a> 
            <a class="dropdown-item" href="#">acc</a> 
        </div>
    </div>
    <div class="navbarheader">
        <a class="item1" href="./index.jsp">게시판</a>
    </div>
    <div class="navbarheader">
        <a class="item2" href="./index.jsp">회원 보기/추가/수정/삭제</a>
        <a class="item2" href="./index.jsp">상품 보기</a>
        <a class="item2" href="./index.jsp">등록</a>
        <a class="item2" href="./index.jsp">수정/삭제</a>
        <a class="item2" href="./index.jsp">회원가입</a>
        <a class="item2" href="../index_ad.jsp">일반모드</a>
    </div>
</nav>