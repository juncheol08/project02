<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>메인 페이지</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="/common.jsp"%>
  </head>
  <body>
  <div class="container-fluid">
      <%@ include file="/header.jsp"%>
      <div class="contents">
          <div id="carouselExample" class="carousel slide">
              <div class="carousel-inner">
                  <div class="carousel-item active">
                      <img src="${path }/images/sub_vs01.jpg" class="d-block w-100" alt="천재교과서">
                  </div>
                  <div class="carousel-item">
                      <img src="${path }/images/sub_vs02.jpg" class="d-block w-100" alt="천재문제집">
                  </div>
                  <div class="carousel-item">
                      <img src="${path }/images/sub_vs03.jpg" class="d-block w-100" alt="천재참고서">
                  </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
              </button>
          </div>

      </div>

      <div class="content">

<%--              <ul class="list row">--%>
<%--                  <c:forEach var="pro" items="${proList }" varStatus="status">--%>
<%--                      <li class="col-3">--%>
<%--                          <div class="card" style="width: 18rem;">--%>
<%--                              <img src="${path }/img/${pro.imgSrc1 }" class="card-img-top" alt="샘플이미지">--%>
<%--                              <div class="card-body">--%>
<%--                                  <h5 class="card-title">${pro.pname }</h5>--%>
<%--                                  <p class="card-text">${pro.pcomment }</p>--%>
<%--                                  <a href="${path }/Product.do?pno=${pro.pno }" class="btn btn-primary">상세 보기</a>--%>
<%--                              </div>--%>
<%--                          </div>--%>
<%--                      </li>--%>
<%--                  </c:forEach>--%>
<%--              </ul>--%>



      </div>
      <%@ include file="/footer.jsp" %>
  </div>
  </body>
</html>
