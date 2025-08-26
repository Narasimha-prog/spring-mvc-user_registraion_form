<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Update User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card shadow">
        <div class="card-body">
            <h3 class="card-title mb-4 text-center">Update User</h3>

            <form:form method="post" modelAttribute="userDTO" action="${pageContext.request.contextPath}/users/update">
                
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
                    <label class="form-check-label">I agree to terms</label>
                    <form:errors path="agree" cssClass="text-danger"/>
                </div>

                <button type="submit" class="btn btn-primary w-100">Update</button>
                <a href="${pageContext.request.contextPath}/users/list" class="btn btn-secondary w-100 mt-2">Back to List</a>

            </form:form>
        </div>
    </div>
</div>
</body>
</html>
