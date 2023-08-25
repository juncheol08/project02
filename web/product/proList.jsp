<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품리스트</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="../common.jsp"%>
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <!-- datatables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css">
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.js"></script>
</head>
<style>
    .tb1 {
        width:1000px;
        margin: 0 auto;
        text-align: center;
    }
    .tb1 tr{
        line-height: 250px;
    }
    .tb1 td {
        padding: 20px;
    }
    .tb1 img {
        width: 250px;
    }


</style>
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
                </ol>
            </div>
        </nav>
        <h2 class="title">상품 목록</h2>
        <div class="container">
            <div class="box_wrap">
<%--                <ul class="list row">--%>
<%--                    <c:forEach var="pro" items="${proList }" varStatus="status">--%>
<%--                        <li class="col-3">--%>
<%--                            <div class="card" style="width: 18rem;">--%>
<%--                                <img src="${path }/img/${pro.imgSrc1 }" class="card-img-top" alt="샘플이미지">--%>
<%--                                <div class="card-body">--%>
<%--                                    <h5 class="card-title">${pro.pname }</h5>--%>
<%--                                    <p class="card-text">${pro.pcomment }</p>--%>
<%--                                    <a href="${path }/Product.do?pno=${pro.pno }" class="btn btn-primary">상세 보기</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </li>--%>
<%--                    </c:forEach>--%>
<%--                </ul>--%>

                <table class="tb1" id="myTable">
                    <thead>
                    <tr>
                        <th class="item1" style="text-align: center">번호</th>
                        <th class="item2" style="text-align: center">이미지</th>
                        <th class="item3" style="text-align: center">상품명</th>
                        <th class="item4" style="text-align: center">가격</th>
                        <th class="item5" style="text-align: center">  </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="pro" items="${proList }" varStatus="status">
                    <tr>
                        <td class="item1">${status.count }</td>
                        <td class="item2">
                            <a href="${path }/Product.do?pno=${pro.pno }">
                                <img src="${path }/img/${pro.imgSrc1 }" alt="샘플이미지" id="image" >
                            </a>
                        </td>
                        <td class="item3">${pro.pname }</td>
                        <td class="item4">${pro.price }</td>
                        <td class="item5"><a href="${path }/AddCart.do?pno=${pro.pno } "><button type="button" class="btn btn-secondary">장바구니</button></a></td>
<%--                        <td class="item4"><input type="button" class="btn btn-primary" value="장바구니" onclick="addCart()"></td>--%>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <script>

                    const imageElement = document.getElementById('image');
                    imageElement.addEventListener('error', function () {
                        // 이미지 로딩 실패 시 실행되는 부분
                        imageElement.src = '${path }/img/noimg.png';
                    });
                </script>
<%--    <script>--%>

<%--        function addCart(){--%>

<%--            &lt;%&ndash;var params = { pno:${pro.pno } }&ndash;%&gt;--%>
<%--            $.ajax({--%>
<%--                url:"${path }/AddCart.do?pno=${pro.pno }",--%>
<%--                type:"post",--%>
<%--                dataType:"json",--%>
<%--                // data:params,--%>
<%--                success:function(result){--%>
<%--                    if(result=='0'){--%>
<%--                        alert("장바구니에 추가됨");--%>
<%--                    } else if(result=='1'){--%>
<%--                        alert("로그인이 필요함");--%>
<%--                    } else if(result=="2"){--%>
<%--                        alert("장바구니 추가하지 못함");--%>
<%--                    }--%>
<%--                }--%>
<%--            });--%>
<%--        }--%>
<%--    </script>--%>
            </div>
        </div>
    </div>
    <%@ include file="../footer.jsp" %>
</div>
</body>
</html>