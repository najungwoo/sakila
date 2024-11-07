<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <!-- 부트스트랩 및 jQuery 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    
    <meta charset="UTF-8">
    <title>Actor List</title>

    <!-- CSS 스타일 -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        h1 {
            font-size: 2rem;
            margin: 1.5rem 0;
            color: #343a40;
        }

        .table-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
        }

        .table-striped th, .table-striped td {
            padding: 1rem;
            text-align: left;
            vertical-align: middle;
        }

        .table-striped th {
            background-color: #007bff;
            color: #ffffff;
        }

        .table-striped tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .pagination {
            justify-content: center;
            margin-top: 1.5rem;
        }

        .pagination .page-link {
            color: #007bff;
        }

        .pagination .page-item.active .page-link {
            background-color: #007bff;
            border-color: #007bff;
            color: #ffffff;
        }

        #formSearch {
            display: flex;
            align-items: center;
            margin-top: 1.5rem;
        }

        #searchWord {
            flex: 1;
            border-radius: 4px;
            padding: 0.5rem;
            border: 1px solid #ced4da;
            margin-right: 0.5rem;
        }

        #btnSearch {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            cursor: pointer;
        }

        #btnSearch:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body class="container-fluid">
    <div class="row">
        <div class="col-sm-2 bg-light">
            <!-- leftMenu.jsp include -->
            <c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
        </div>
        
        <div class="col-sm-10">
            <!-- 메인 콘텐츠 -->
            <div class="table-container">
                <h1>ACTOR LIST</h1>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Actor ID</th>
                            <th>Name</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="a" items="${actorList}">
                            <tr>
                                <td>${a.actorId}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/on/actorOne?actorId=${a.actorId}">
                                        ${a.firstName} ${a.lastName}
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
                <!-- 페이징 -->
                <nav>
                    <ul class="pagination">
                        <c:forEach var="i" begin="1" end="${lastPage}">
                            <li class="page-item ${i == currentPage ? 'active' : ''}">
          						  <a class="page-link" href="${pageContext.request.contextPath}/on/actorList?currentPage=${i}&rowPerPage=${rowPerPage}&searchWord=${searchWord}">
                                    ${i}
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </nav>
                
                <!-- 검색 폼 -->
                <form id="formSearch" action="${pageContext.request.contextPath}/on/actorList" method="get">
                    <input type="text" name="searchWord" id="searchWord" value="${searchWord}" placeholder="Search by name">
               
                    <button id="btnSearch">Search</button>
                </form>
            </div>
        </div>
    </div>
</body>
<script>
    $('#btnSearch').click(function() {
        if ($('#searchWord').val() == '') {
            alert('Please enter a search term');
            return false;
        } 
        $('#formSearch').submit();
    });
</script>