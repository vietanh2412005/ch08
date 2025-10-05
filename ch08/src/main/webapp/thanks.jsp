<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/thanks.css" type="text/css"/>    
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${sessionScope.user.email}</span><br>

    <label>First Name:</label>
    <span>${sessionScope.user.firstName}</span><br>

    <label>Last Name:</label>
    <span>${sessionScope.user.lastName}</span><br>

    <p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>

    <hr>
    <!-- Phần mới thêm -->
    <h2>Thông tin bổ sung</h2>

    <p>Ngày hiện tại: ${requestScope.currentDate}</p>

    <p>2 user đầu tiên trong danh sách:</p>
    <ul>
        <li>${sessionScope.users[0].firstName} ${sessionScope.users[0].lastName} - ${sessionScope.users[0].email}</li>
        <li>${sessionScope.users[1].firstName} ${sessionScope.users[1].lastName} - ${sessionScope.users[1].email}</li>
    </ul>

    <p>Liên hệ bộ phận CSKH: ${initParam.custServEmail}</p>
</body>
</html>
