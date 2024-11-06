<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* 전체 메뉴 스타일 */
        .list-group {
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.1);
            max-width: 200px;
            margin: 0 auto;
            font-size: 0.9rem;
        }

        /* 리스트 항목 스타일 */
        .list-group-item {
            padding: 0.8rem 1rem;
            border: none;
            font-weight: 500;
            color: #343a40;
        }

        /* 리스트 제목 스타일 */
        .list-group-item-title {
            background-color: #e9ecef;
            font-weight: bold;
            color: #007bff;
            cursor: default;
        }

        /* 링크 스타일 */
        .list-group-item a {
            color: #343a40;
            text-decoration: none;
        }
        .list-group-item a:hover {
            color: #007bff;
            text-decoration: underline;
        }

        /* 로그인 사용자 이름 스타일 */
        .list-group-item-user {
            color: #007bff;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <ul class="list-group text-center bg-light">
        <!-- 홈 링크 -->
        <li class="list-group-item">
            <a href="${pageContext.request.contextPath}/on/main">홈으로</a>
        </li>

        <!-- 로그인 사용자 정보 -->
        <li class="list-group-item list-group-item-user">
            <a href="${pageContext.request.contextPath}/on/staffOne">${loginStaff.username}님</a>
        </li>
        <li class="list-group-item">
            <a href="${pageContext.request.contextPath}/on/logout">로그아웃</a>
        </li>

        <!-- 지점 관리 -->
        <li class="list-group-item list-group-item-title">::: 지점 관리 :::</li>
        <li class="list-group-item">
            <a href="">지점 리스트</a>
        </li>
        <li class="list-group-item">
            <a href="">지점 추가</a>
        </li>

        <!-- STAFF 관리 -->
        <li class="list-group-item list-group-item-title">::: STAFF 관리 :::</li>
        <li class="list-group-item">
            <a href="${pageContext.request.contextPath}/on/staffList">스탭 리스트</a>
        </li>
        <li class="list-group-item">
            <a href="${pageContext.request.contextPath}/on/addStaff">스탭 추가</a>
        </li>

        <!-- 고객 관리 -->
        <li class="list-group-item list-group-item-title">::: 고객 관리 :::</li>
        <li class="list-group-item">
            <a href="">고객 리스트</a>
        </li>
        <li class="list-group-item">
            <a href="">고객 추가</a>
        </li>

        <!-- 배우 관리 -->
        <li class="list-group-item list-group-item-title">::: 배우 관리 :::</li>
        <li class="list-group-item">
            <a href="${pageContext.request.contextPath}/on/actorList">배우 리스트</a>
        </li>
        <li class="list-group-item">
            <a href="${pageContext.request.contextPath}/on/addActor">배우 추가</a>
        </li>
    </ul>
</body>
</html>