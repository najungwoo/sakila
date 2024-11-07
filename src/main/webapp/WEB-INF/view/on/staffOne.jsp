<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>Staff Information</title>
    <style>
        .container-fluid {
            background-color: #f8f9fa;
            min-height: 100vh;
        }
        .left-menu {
            padding-top: 20px;
            background-color: #e9ecef;
        }
        .info-card {
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
        .info-table td {
            vertical-align: middle;
        }
        .btn-group a {
            margin-right: 15px;
        }
    </style>
</head>
<body class="container-fluid">
    <div class="row">
        <div class="col-sm-2 left-menu">
            <!-- leftMenu.jsp include -->
            <c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
        </div>
       <div class="col-sm-10 text-center">
    <div class="container mt-5">
        <h1 class="mb-4 text-primary">Staff Details</h1>
    
                
                <!-- Staff Information Card -->
                <div class="card info-card">
                    <div class="card-header text-white bg-secondary">
                        Staff Information
                    </div>
                    <div class="card-body p-4">
                        <table class="table table-bordered info-table">
                            <tbody>
                                <tr>
                                    <td>Staff ID</td>
                                    <td>${staff.staffId}</td>
                                </tr>
                                <tr>
                                    <td>First Name</td>
                                    <td>${staff.firstName}</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>${staff.staffAddress}</td>
                                </tr>
                                <tr>
                                    <td>Address 2</td>
                                    <td>${staff.staffAddress2}</td>
                                </tr>
                                <tr>
                                    <td>District</td>
                                    <td>${staff.staffDistrict}</td>
                                </tr>
                                <tr>
                                    <td>Post Code</td>
                                    <td>${staff.staffPostCode}</td>
                                </tr>
                                <tr>
                                    <td>Phone</td>
                                    <td>${staff.staffPhone}</td>
                                </tr>
                                <tr>
                                    <td>City</td>
                                    <td>${staff.staffCity}</td>
                                </tr>
                                <tr>
                                    <td>Country</td>
                                    <td>${staff.staffCountry}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!-- Store Information Card -->
                <div class="card info-card">
                       <div class="card-header text-white bg-secondary">
                        Store Information
                    </div>
                    <div class="card-body p-4">
                        <table class="table table-bordered info-table">
                            <tbody>
                                <tr>
                                    <td>Store ID</td>
                                    <td>${staff.storeId}</td>
                                </tr>
                                <tr>
                                    <td>Manager Staff ID</td>
                                    <td>${staff.managerStaffId}</td>
                                </tr>
                                <tr>
                                    <td>Manager Name</td>
                                    <td>${staff.managerName}</td>
                                </tr>
                                <tr>
                                    <td>Store Address</td>
                                    <td>${staff.storeAddress}</td>
                                </tr>
                                <tr>
                                    <td>Store Address 2</td>
                                    <td>${staff.storeAddress2}</td>
                                </tr>
                                <tr>
                                    <td>Store District</td>
                                    <td>${staff.storeDistrict}</td>
                                </tr>
                                <tr>
                                    <td>Store Post Code</td>
                                    <td>${staff.storePostCode}</td>
                                </tr>
                                <tr>
                                    <td>Store Phone</td>
                                    <td>${staff.storePhone}</td>
                                </tr>
                                <tr>
                                    <td>Store City</td>
                                    <td>${staff.storeCity}</td>
                                </tr>
                                <tr>
                                    <td>Store Country</td>
                                    <td>${staff.storeCountry}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!-- Update Options -->
                <div class="btn-group mt-4">
                    <a href="" class="btn btn-outline-primary">비밀번호 수정</a>
                    <a href="" class="btn btn-outline-primary">이메일 수정</a>
                    <a href="" class="btn btn-outline-primary">주소 수정</a>
                    <a href="" class="btn btn-outline-primary">STORE 수정</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>