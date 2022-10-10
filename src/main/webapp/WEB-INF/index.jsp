<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<table class="table">
    <thead>
    <tr>

        <th scope="col">Name</th>
        <th scope="col">Vendor</th>
        <th scope="col">Amount</th>
        <th scope="col">Description</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="expense" items="${expenses}">
    <tr>
        <th><c:out value="${expense.name}"></c:out></th>
        <td><c:out value="${expense.vendor}"></c:out></th></td>
        <td>$<c:out value="${expense.amount}"></c:out></th></td>
        <td><c:out value="${expense.description}"></c:out></th></td>


    </tr>
    </c:forEach>
    </tbody>
</table>

<h1>Safe Travel</h1>
<%--@elvariable id="expense" type=""--%>
<form:form action="/expenses" method="post" modelAttribute="expense">
    <p>
        <form:label path="name">Name</form:label>
        <form:errors path="name"/>
        <form:input path="name"/>
    </p>
    <p>
        <form:label path="vendor">Vendor</form:label>
        <form:errors path="vendor"/>
        <form:input path="vendor"/>
    </p>
    <p>
        <form:label path="amount">Amount</form:label>
        <form:errors path="amount"/>
        <form:textarea path="amount"/>
    </p>
    <p>
        <form:label path="description">Description</form:label>
        <form:textarea path="description"/>
    </p>
    <input type="submit" value="Submit"/>
</form:form>
</body>
</html>

