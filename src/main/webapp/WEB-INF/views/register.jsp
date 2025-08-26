<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>User Registration</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

<div class="bg-white p-8 rounded-lg shadow-md w-full max-w-md">
    <h2 class="text-2xl font-bold mb-6 text-center text-blue-600">Register User</h2>

    <form:form method="post" modelAttribute="registerDTO" action="${pageContext.request.contextPath}/users/register" class="space-y-4">

        <div class="flex flex-col">
            <form:label path="name" class="mb-1 font-semibold">Name</form:label>
            <form:input path="name" cssClass="border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            <form:errors path="name" cssClass="text-red-500 text-sm mt-1"/>
        </div>

        <div class="flex flex-col">
            <form:label path="age" class="mb-1 font-semibold">Age</form:label>
            <form:input path="age" cssClass="border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            <form:errors path="age" cssClass="text-red-500 text-sm mt-1"/>
        </div>

        <div class="flex flex-col">
            <form:label path="sex" class="mb-1 font-semibold">Sex</form:label>
            <form:input path="sex" cssClass="border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            <form:errors path="sex" cssClass="text-red-500 text-sm mt-1"/>
        </div>

        <div class="flex flex-col">
            <form:label path="address" class="mb-1 font-semibold">Address</form:label>
            <form:input path="address" cssClass="border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"/>
            <form:errors path="address" cssClass="text-red-500 text-sm mt-1"/>
        </div>

        <div class="flex items-center space-x-2">
            <form:checkbox path="agree" cssClass="h-4 w-4"/>
            <span class="text-sm">I agree to the terms</span>
        </div>
        <form:errors path="agree" cssClass="text-red-500 text-sm mt-1"/>

        <button type="submit" class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700 transition duration-200">Register</button>

    </form:form>

    <div class="mt-4 text-center">
        <a href="/users/list" class="text-blue-600 hover:underline">View Users</a>
    </div>
</div>

</body>
</html>
