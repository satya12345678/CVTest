<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
 
<html>
<head>
    <title>Add Employee Form</title> 
    <style>
    .error
    {
        color: #ff0000;
        font-weight: bold;
        
    }
    
    </style>
</head>
 
<body>
    <h2><spring:message code="lbl.page" /></h2>
    <br/>
    <form:form method="POST" action="addEmployee" modelAttribute="employee">
    
       <form:errors path="*" cssClass="error" /> 
     
        <table>
            <tr>
                <td><spring:message code="lbl.fname" /></td>
                <td><form:input path="fname" /></td>
                <td><form:errors path="fname" cssClass="error" /></td>
            </tr>
            <tr>
                <td><spring:message code="lbl.lname" text="Last Name" /></td>
                <td><form:input path="lname" /></td>
                <td><form:errors path="lname" cssClass="error" /></td>
            </tr>
            <tr>
                <td><spring:message code="lbl.email" text="Email Id" /></td>
                <td><form:input path="email" /></td>
                <td><form:errors path="email" cssClass="error" /></td>
            </tr>
            <tr>
                <td colspan="3"><input type="submit" value="Add Employee"/></td>
            </tr>
        </table>
    </form:form>
</body>
</html>