<%--
  Created by IntelliJ IDEA.
  User: ongraphtechnoogy
  Date: 8/2/2017
  Time: 3:50 PM
--%>

<%@ page import="com.domain.auth.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>


    <meta name="layout" content="main" />
</head>

<body>
<g:form class="simpleform" url="[controller:'login', action:'register']">
    <fieldset>
        <legend>Registration</legend>

        <p class="info">
            please register yourself. <br />
            Aldready have account?
            <g:link controller="login" action="login">Sign in!</g:link>
        </p>
        <p>
            <label for="firstName">First Name</label>
            <g:textField name="firstName" required="" value="${user?.firstName}"
                          />
        </p>
        <p>
            <label for="lastName">LastName</label>
            <g:textField name="lastName" required="" value="${user?.lastName}"
                        />
        </p>
        <p>
            <label for="username">Username</label>
            <g:textField name="username" required="" value="${user?.username}"
                       />
      <g:hasErrors bean="${user}" field="username">
        <g:eachError bean="${user}" field="username">
            <p style="color: red;"><g:message error="${it}"/></p>
        </g:eachError>
      </g:hasErrors>
        </p>
        <p>
            <label for="password">Password</label>
            <g:passwordField name="password"   required="" value="${user?.password}"
                             />
        </p>
        <p>
            <label for="confirmPassword">ConfirmPassword</label>
            <g:passwordField name="confirmPassword"   required="" value="${user?.confirmPassword}"
                           />
        </p>
        <p>
            <label for="email">Email</label>
            <g:textField name="email" required="" value="${user?.email}"
                       />
        </p>
        <p>
            <label for="photo">Photo</label>
            <input type='file' name="photo" value="${user?.photo}"
                   />
        </p>
        <p class="button">
            <label>&nbsp;</label>
            <g:submitButton class="button" name="submitButton" value="register" />
        </p>

    </fieldset>
</g:form>
</body>
</html>