<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 글쓰기</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="../../common.jsp"%>
    <style>
    #tb1 { width:960px; margin:40px auto; }
    #tb1 th { background-color: #111; color:#fff; }
    .item1 { width:10%; }
    .item2 { width:70%; }
    .item3 { width:10%; }
    .item4 { width:10%; }
    #page-nation1 { width: 960px; margin:20px auto; }
    </style>
</head>
<body>
<div class="container-fluid">
    <%@ include file="../../header.jsp"%>
    <div class="contents" style="min-height:100vh">

        <h2 class="title">상품 등록</h2>
        <div class="container">
            <div class="box_wrap">
                <form action="${path }/AddProductPro.do" method="post">
                    <table class="table table-secondary" id="tb1">
                        <tbody>
                        <tr>
                            <th>상품명</th>
                            <td><input type="text" name="name" id="name" class="form-control"></td>
                        </tr>
                        <tr>
                            <th>카테고리</th>
                            <td><textarea name="cate" id="cate" class="form-control"></textarea></td>
                        </tr>
                        <tr>
                            <th>상품 가격</th>
                            <td><textarea name="price" id="price" class="form-control"></textarea></td>
                        </tr>
                        <tr>
                            <th>저자</th>
                            <td><textarea name="author" id="author" class="form-control"></textarea></td>
                        </tr>
                        <tr>
                            <th>상품설명</th>
                            <td><textarea name="comment" id="coment" class="form-control"></textarea></td>
                        </tr>
                        <tr>
                            <th>목차</th>
                            <td><textarea name="list" id="list" class="form-control"></textarea></td>
                        </tr>
                        <tr>
                            <th><label for="filename1">첨부 파일1</label></th>
                            <td><input type="file" name="filename1" id="filename1" class="form-control"></td>
                        </tr>
                        <tr>
                            <th><label for="filename2">첨부 파일2</label></th>
                            <td><input type="file" name="filename2" id="filename2" class="form-control"></td>
                        </tr>
                        <tr>
                            <th><label for="filename3">첨부 파일3</label></th>
                            <td><input type="file" name="filename3" id="filename3" class="form-control"></td>
                        </tr>

                        </tbody>
                    </table>
                    <div class="group container">
                        <input type="submit" value="상품 등록" class="btn btn-primary"/>
                        <a href="${path }/AdminPage.do" class="btn btn-primary">관리자페이지로</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="../../footer.jsp" %>
</div>
</body>
</html>
