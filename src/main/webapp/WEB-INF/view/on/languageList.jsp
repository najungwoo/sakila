<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Language List</title>
</head>
<body class="container-fluid">
	<div class="row">
		<div class="col-sm-2 bg-light">
			<!-- leftMenu.jsp include -->
			<c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
		</div>
		<div class="col-sm-10">
			<h2 class="mt-4">Language List</h2>
			<table class="table table-striped mt-3">
				<thead>
					<tr>
						<th scope="col">Language ID</th>
						<th scope="col">Name</th>
						<th scope="col">Last Update</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="language" items="${languageList}">
						<tr>
							<td>${language.languageId}</td>
							<td>${language.name}</td>
							<td>${language.lastUpdate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>		
</body>
</html>