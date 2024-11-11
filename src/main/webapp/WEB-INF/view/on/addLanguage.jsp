<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Add Language</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body class="container-fluid">
    <div class="row">
        <div class="col-sm-2 bg-light">
            <!-- leftMenu.jsp include -->
            <c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
        </div>
        <div class="col-sm-10">
            <h2 class="mt-4">Add Language</h2>
            <form action="/on/addLanguage" method="post" class="mt-3">
                <!-- languageId는 자동 처리되므로 사용자 입력을 받지 않음 -->
                <div class="mb-3">
                    <label for="name" class="form-label">Language Name</label>
                    <input type="text" id="name" name="name" class="form-control" required>
                </div>
                <!-- lastUpdate는 서버에서 자동으로 처리되므로 입력받지 않음 -->
                <button type="submit" class="btn btn-primary">Add Language</button>
            </form>
        </div>
    </div>        
</body>
</html>