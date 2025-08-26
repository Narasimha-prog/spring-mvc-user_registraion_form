<%@ page isErrorPage="true"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Error Occurred</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
<div class="bg-white p-8 rounded-lg shadow-md w-full max-w-md text-center">
    <h2 class="text-2xl font-bold text-red-600 mb-4">Oops! Something went wrong.</h2>
    <p class="mb-4">${exception.message}</p>
    <a href="/" class="text-white bg-blue-600 py-2 px-4 rounded hover:bg-blue-700 transition duration-200">Go Home</a>
</div>
</body>
</html>
