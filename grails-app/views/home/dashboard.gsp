
<%--
  Created by IntelliJ IDEA.
  User: ongraphtechnoogy
  Date: 8/9/2017
  Time: 11:33 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form name="form" url="[controller:'home', action:'dashbord']">
    <g:textfield type="text" name="username">
    </g:textfield>
    <g:textfield type="text" name="email">
    </g:textfield>
    <g:textfield type="text" name="password">
    </g:textfield>
    <g:submitButton class="button" name="submitButton" value="submit" />

</g:form>
</body>
</html>