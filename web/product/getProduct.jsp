<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 상세</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="../common.jsp"%>
</head>
<body>
<div class="container-fluid">
    <%@ include file="../header.jsp"%>
    <div class="contents" style="min-height:100vh">
        <nav aria-label="breadcrumb container-fluid" style="padding-top:28px; border-bottom:2px solid #666;">
            <div class="container">
                <ol class="breadcrumb justify-content-end">
                    <li class="breadcrumb-item"><a href="${path }">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Product</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List</li>
                    <li class="breadcrumb-item active" aria-current="page">상세</li>
                </ol>
            </div>
        </nav>
        <h2 class="title">상품 상세</h2>
        <div class="container">
            <div class="container">
                <div class="box_wrap text-center">
                    <table class="mx-auto">
                        <tr>
                            <td colspan="2"><img src="${path}/img/${pro.imgSrc1}" class="card-img-top" alt="샘플이미지"></td>
                        </tr>
                        <tr>
                            <td>상품명</td>
                            <td>${pro.pname}</td>
                        </tr>
                        <tr>
                            <td>상품 가격</td>
                            <td>${pro.price}</td>
                        </tr>
                        <tr>
                            <td>상품설명</td>
                            <td>${pro.pcomment}</td>
                        </tr>
                        <tr>
                            <td>목차</td>
                            <td>${pro.plist}</td>
                        </tr>
                        <tr>
                            <td><a href="${path }/CartCtrl.do"><button type="button" class="btn btn-secondary">장바구니</button></a></td>

                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="../footer.jsp" %>
</div>
</body>
</html>