<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<header class="header container-fluid" id="hd">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="${path1 }/">CHUNJAE</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${path1 }/ProList.do" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                초등
                            </a>
                            <ul class="dropdown-menu ">
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=ABCD">전체</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=A">교과서</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=B">참고서</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=C">문제집</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=D">기타</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${path1 }/ProList.do" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                중등
                            </a>
                            <ul class="dropdown-menu ">
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=EFGH">전체</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=E">교과서</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=F">참고서</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=G">문제집</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=H">기타</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${path1 }/ProList.do" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                고등
                            </a>
                            <ul class="dropdown-menu ">
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=IJKL">전체</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=I">교과서</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=J">참고서</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=K">문제집</a></li>
                                <li><a class="dropdown-item" href="${path1 }/CateProList.do?cate=L">기타</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                고객센터
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="${path1 }/NoticeList.do">공지사항</a></li>
                                <li><a class="dropdown-item" href="#">FAQ</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">학습후기</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">ETC</a>
                        </li>

                    </ul>
                    <ul class="nav justify-content-end">
                        <c:if test="${sid eq 'admin'}">
                            <li class="nav-item">
                                <a class="nav-link disabled" aria-disabled="true">${sid }님</a>
                            </li>
                            <li class="nav-item"><a href="${path1 }/AdminPage.do" class="nav-link">관리자 페이지</a></li>
                            <li class="nav-item"><a href="${path1 }/Logout.do" class="nav-link">Logout</a></li>
                        </c:if>
                        <c:if test="${not empty sid && sid ne 'admin'}">
                            <li class="nav-item">
                                <a class="nav-link disabled" aria-disabled="true">${sid }님</a>
                            </li>
                            <li class="nav-item"><a href="${path1 }/Mypage.do?sid=${sid }" class="nav-link">Mypage</a></li>
                            <li class="nav-item"><a href="${path1 }/Cart.do?sid=${sid }" class="nav-link">Cart</a></li>
                            <li class="nav-item"><a href="${path1 }/Logout.do" class="nav-link">Logout</a></li>
                        </c:if>
                        <c:if test="${empty sid}">
                            <li class="nav-item"><a href="${path1 }/Login.do" class="nav-link">Login</a></li>
                            <li class="nav-item"><a href="${path1 }/Join.do" class="nav-link">Join</a></li>

                        </c:if>

                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
