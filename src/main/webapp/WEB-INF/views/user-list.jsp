<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Users List</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col items-center py-8">

<div class="bg-white shadow-md rounded-lg w-full max-w-5xl p-6">
    <h2 class="text-2xl font-bold text-center text-blue-600 mb-6">Registered Users</h2>

    <table class="min-w-full border border-gray-200 rounded-lg overflow-hidden">
        <thead class="bg-blue-100">
            <tr>
                <th class="py-2 px-4 text-left">#</th>
                <th class="py-2 px-4 text-left">Name</th>
                <th class="py-2 px-4 text-left">Age</th>
                <th class="py-2 px-4 text-left">Sex</th>
                <th class="py-2 px-4 text-left">Address</th>
                <th class="py-2 px-4 text-center">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user"  items="${users}" varStatus="status">
                <tr class="border-t hover:bg-gray-50">
                    <td class="py-2 px-4">${status.index + 1}</td>
                    <td class="py-2 px-4">${user.name}</td>
                    <td class="py-2 px-4">${user.age}</td>
                    <td class="py-2 px-4">${user.sex}</td>
                    <td class="py-2 px-4">${user.address}</td>
                    <td class="py-2 px-4 flex justify-center space-x-2">
                        <a href="/users/edit/${user.id}" 
                           class="bg-yellow-400 text-white px-3 py-1 rounded hover:bg-yellow-500 transition duration-200">
                           Update
                        </a>
                        <a href="/users/delete/${user.id}" 
                           class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600 transition duration-200"
                           onclick="return confirm('Are you sure you want to delete this user?');">
                           Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="mt-6 text-center">
        <a href="/users/register" class="text-white bg-blue-600 py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
            Register New User
        </a>
    </div>
</div>

</body>
</html>
