<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>User Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow-sm">
                <div class="card-body">
                    <h2 class="card-title text-center mb-4">Register User</h2>

                    <form:form method="post" modelAttribute="registerDTO" action="${pageContext.request.contextPath}/users/register">

                        <div class="mb-3">
                            <form:label path="name" class="form-label">Name</form:label>
                            <form:input path="name" cssClass="form-control"/>
                            <form:errors path="name" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="age" class="form-label">Age</form:label>
                            <form:input path="age" cssClass="form-control"/>
                            <form:errors path="age" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="sex" class="form-label">Sex</form:label>
                            <form:input path="sex" cssClass="form-control"/>
                            <form:errors path="sex" cssClass="text-danger"/>
                        </div>

                        <div class="mb-3">
                            <form:label path="address" class="form-label">Address</form:label>
                            <form:input path="address" cssClass="form-control"/>
                            <form:errors path="address" cssClass="text-danger"/>
                        </div>

                        <div class="form-check mb-3">
                            <form:checkbox path="agree" cssClass="form-check-input"/>
                            <form:label path="agree" class="form-check-label">I agree to the terms</form:label>
                            <form:errors path="agree" cssClass="text-danger"/>
                        </div>

                        <button type="submit" class="btn btn-primary w-100">Register</button>
                    </form:form>

                    <div class="mt-3 text-center">
                        <a href="${pageContext.request.contextPath}/users/list" class="btn btn-link">View Users</a>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
