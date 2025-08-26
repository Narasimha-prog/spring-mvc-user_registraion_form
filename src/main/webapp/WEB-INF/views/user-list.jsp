<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Users List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <h2 class="card-title text-center mb-4 text-primary">Registered Users</h2>
       <!-- Flash message -->
            <c:if test="${not empty successMessage}">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    ${successMessage}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </c:if>
            <c:if test="${not empty users}">
                <table class="table table-bordered table-hover align-middle">
                    <thead class="table-light">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Age</th>
                            <th scope="col">Sex</th>
                            <th scope="col">Address</th>
                            <th scope="col" class="text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${users}" varStatus="status">
                            <tr>
                                <th >${status.index + 1}</th>
                                <td>${user.name}</td>
                                <td>${user.age}</td>
                                <td>${user.sex}</td>
                                <td>${user.address}</td>
                                <td class="text-center">
                                    <a href="${pageContext.request.contextPath}/users/edit/${user.id}" 
                                       class="btn btn-warning btn-sm me-2">
                                       Update
                                    </a>
                                    <a href="${pageContext.request.contextPath}/users/delete/${user.id}" 
                                       class="btn btn-danger btn-sm"
                                       onclick="return confirm('Are you sure you want to delete this user?');">
                                       Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${empty users}">
                <div class="alert alert-info text-center">
                    No users found. Click below to add a new user.
                </div>
            </c:if>

            <div class="text-center mt-4">
                <a href="${pageContext.request.contextPath}/users/register" 
                   class="btn btn-primary">Add New User</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
