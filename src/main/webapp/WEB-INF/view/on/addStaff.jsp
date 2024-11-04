<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>Staff Registration</title>
    <style>
        body { background-color: #f8f9fa; }
        .form-title { font-weight: bold; margin-top: 20px; }
        .container-custom { padding: 20px; background-color: white; border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        .table td { vertical-align: middle; }
        .btn-custom { width: 100%; margin-top: 10px; }
    </style>
</head>
<body class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-sm-2 bg-light pt-4">
            <c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
        </div>

        <!-- Main Content -->
        <div class="col-sm-10">
            <div class="container-custom">
                <h1 class="text-primary">스텝 추가</h1>
                <hr>

                <!-- Address Search Section -->
                <h2 class="form-title">주소 검색</h2>
                <form id="formAddress" action="${pageContext.request.contextPath}/on/addStaff" method="get" class="mb-3">
                    <div class="input-group">
                        <input type="text" class="form-control" name="searchAddress" id="searchAddress" placeholder="Enter address to search">
                        <button type="button" class="btn btn-outline-primary" id="btnAddress">Search</button>
                    </div>
                </form>

                <!-- Address Selection Section -->
                <div class="mb-3">
                    <h2 class="form-title">주소 선택</h2>
                    <select id="resultAddress" class="form-select mb-2" size="10">
                        <c:forEach var="a" items="${addressList}">
                            <option value="${a.addressId}">(ID: ${a.addressId}) ${a.address}</option>
                        </c:forEach>
                    </select>
                    <button type="button" class="btn btn-primary btn-custom" id="btnAddrSel">Select Address</button>
                </div>

                <hr>

                <!-- Staff Form Section -->
                <h2 class="form-title">입력</h2>
                <form id="addForm" action="${pageContext.request.contextPath}/on/addStaff" method="post">
                    <table class="table">
                        <tr>
                            <td><label for="storeId">Store ID</label></td>
                            <td>
                                <select name="storeId" id="storeId" class="form-select">
                                    <option value="">:::Select:::</option>
                                    <c:forEach var="s" items="${storeList}">
                                        <option value="${s.storeId}">${s.storeId}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="addressId">Address ID</label></td>
                            <td>
                                <input type="text" name="addressId" id="addressId" class="form-control" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="firstName">First Name</label></td>
                            <td>
                                <input type="text" name="firstName" id="firstName" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td><label for="lastName">Last Name</label></td>
                            <td>
                                <input type="text" name="lastName" id="lastName" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td><label for="email">Email</label></td>
                            <td>
                                <input type="email" name="email" id="email" class="form-control">
                            </td>
                        </tr>
                        <tr>
                            <td><label for="userName">Username</label></td>
                            <td>
                                <input type="text" name="userName" id="userName" class="form-control">
                            </td>
                        </tr>
                    </table>
                    <button id="btnAddStaff" type="button" class="btn btn-success btn-custom">Add Staff</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Submit Form Button
        $('#btnAddStaff').click(function() {
            if ($('#storeId').val() == '') {
                alert('Please select a store ID.');
            } else if ($('#addressId').val() == '') {
                alert('Please select an address.');
            } else if ($('#firstName').val() == '') {
                alert('Please enter the first name.');
            } else if ($('#lastName').val() == '') {
                alert('Please enter the last name.');
            } else if ($('#email').val() == '') {
                alert('Please enter the email.');
            } else if ($('#userName').val() == '') {
                alert('Please enter the username.');
            } else {
                console.log('Submitting form...');
                // $('#addForm').submit(); // Uncomment to enable form submission
            }
        });

        // Address Select Button
        $('#btnAddrSel').click(function() {
            if ($('#resultAddress').val() == '') {
                alert('Please select an address.');
            } else {
                $('#addressId').val($('#resultAddress').val());
            }
        });

        // Address Search Button
        $('#btnAddress').click(function(){
            if ($('#searchAddress').val() == "") {
                alert('Please enter an address to search.');
            } else {
                $('#formAddress').submit();
            }
        });
    </script>
</body>
</html>