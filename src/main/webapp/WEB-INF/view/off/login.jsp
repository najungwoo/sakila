<!DOCTYPE html>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Staff Login</title>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background-color: #343a40; /* 회색 배경 */
    }
    .login-container {
        background-color: #ffffff; /* 폼의 흰색 배경 */
        border: 1px solid #343a40;
        border-radius: 8px;
        padding: 2rem;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
    }
    h1 {
        font-size: 1.75rem;
        margin-bottom: 1.5rem;
        text-align: center;
        color: #495057;
    }
    .form-label {
        font-weight: bold;
    }
    .form-control {
        border-radius: 5px;
        height: 45px;
    }
    #btn {
        width: 100%;
        padding: 0.75rem;
        font-size: 1rem;
        border-radius: 5px;
    }
    .error-message {
        color: #dc3545; /* 부트스트랩의 빨간색 경고 색상 */
        margin-bottom: 1rem;
    }
</style>
</head>
<body>
    <div class="login-container">
        <!-- 실패 메시지를 표시하는 중앙 정렬 경고 메시지 -->
        <c:if test="${not empty msg}">
            <div class="error-message">
                ${msg}
            </div>
        </c:if>

        <h1>Staff Login</h1>
        <form id="form" action="${pageContext.request.contextPath}/off/login" method="post">
            <div class="mb-3">
                <label for="staffId" class="form-label">Staff ID:</label>
                <input id="staffId" name="staffId" type="text" class="form-control">
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input id="password" name="password" type="password" class="form-control">
            </div>
            <button id="btn" type="button" class="btn btn-primary">로그인</button>
        </form>
    </div>
</body>
<script>
    // btn버튼 클릭 시 폼 유효성 검사
    $('#btn').click(function() {
        console.log('click');
        if ($.isNumeric($('#staffId').val()) == false) {
            alert('staffId는 숫자만 입력 가능합니다.');
        } else if ($('#password').val().length < 4) {
            alert('password는 4자 이상 입력 가능합니다.');
        } else {
            $('#form').submit();
        }
    });
</script>
</html>