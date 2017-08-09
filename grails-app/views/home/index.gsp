<g:applyLayout name="fourblock">
    <head>
        <title><g:message code="link.title.website"/></title>
    </head>

    <content tag="left1">
        <div id="recentshare">
            <span><g:message code="linkshare.recentshare.heading" default="recent share"/></span>
        </div>
    </content>

    <content tag="left2">
        <div id="toppost">
            <span><g:message code="linkshare.topposts.heading" default="tops posts"/></span>
        </div>
    </content>
    <content tag="right1">
        <div id="loginform">
        %{--<g:if test="${session?.user}">--}%
        %{--</g:if>--}%
        %{--<g:else>--}%
            <g:form name="form" url="[controller: 'login', action: 'login']" class="clearfix">
                <fieldset>
                    <legend>Login</legend>
                    <div id="message">
                        <g:if test="${flash.message}">
                            <div class="message">${flash.message}</div>
                        </g:if>
                    </div>
                    <p class="info">
                        Please login with your username and password. <br/>
                        Don't have an account?register yourself first
                    </p>

                    <p>
                        <label for="username">Username</label>
                        <g:textField name="username" required="" value="${params.username}" />
                    </p>

                    <p>
                        <label for="password">Password</label>
                        <g:passwordField name="password" required="" />
                    </p>

                    <p class="button">
                        <label>&nbsp;</label>
                        <g:submitButton class="button" name="submitButton" value="Login"/>
                    </p>
                </fieldset>
            </g:form>
        %{--</g:else>--}%
        </div>
    </content>

    <content tag="right2">
        <div id="registerform">
        <p><g:form class="simpleform" url="[controller: 'login', action: 'register']" class="clearfix">
            <fieldset>
                <legend>Registration</legend>
                <g:hasErrors bean="${user}">
                    <div class="errors">
                        println("hhhkkkkkkkkkkkkku")
                        <g:renderErrors bean="${user}"/>
                    </div>
                </g:hasErrors>

            <p class="info">
                please register yourself. <br/>
                Aldready have account? login to the linkshare

            </p>

            <p>
                <label for="firstName">First Name</label>
                <g:textField name="firstName" required="" value="${params.firstName}"
                             class="${hasErrors(bean: user, field: 'firstName', 'errors')}"/>
            </p>

            <p>
                <label for="lastName">LastName</label>
                <g:textField name="lastName" required="" value="${params.lastName}"
                             class="${hasErrors(bean: user, field: 'lastName', 'errors')}"/>
            </p>

            <p>
                <div id="message">
                   <g:if test="${flash.usermessage}">
                        <div class="message">${flash.usermessage}</div>
                     </g:if>
                </div>
                <label for="username">Username</label>
                <g:textField name="username" required="" value="${params.username}"
                             class="${hasErrors(bean: user, field: 'UserName', 'errors')}"/>


             </p>

            <p>
            <div id="message">
                <g:if test="${flash.passwordmessage}">
                    <div class="message">${flash.passwordmessage}</div>
                </g:if>
            </div>
                <label for="password">Password</label>
                <g:passwordField name="password" required=""  value="${params.username}"
                                 class="${hasErrors(bean: user, field: 'password', 'errors')}"/>
            </p>

            <p>
            <div id="message">
                <g:if test="${flash.confirmpasswordmessage}">
                    <div class="message">${flash.confirmpasswordmessage}</div>
                </g:if>
            </div>
                <label for="confirmPassword">ConfirmPassword</label>
                <g:passwordField name="confirmPassword" required=""
                                 class="${hasErrors(bean: user, field: 'confirmPassword', 'errors')}"/>
            </p>

            <p>
             <div id="message">
                <div id="message">
                    <g:if test="${ flash.emailinvalid}">
                        <div class="message">${ flash.emailinvalid}</div>
                    </g:if>
                </div>
                <g:if test="${flash.emailmessage}">
                    <div class="message">${flash.emailmessage}</div>
                </g:if>
            </div>
                <label for="email">Email</label>
                <g:textField name="email" required="" value="${params.email}"
                             class="${hasErrors(bean: user, field: 'Email', 'errors')}"/>
            </p>

            <p>
                <label for="photo">Photo</label>
                <input type='file' name="photo" value="${params.photo}"
                       class="${hasErrors(bean: user, field: 'photo', 'errors')}"/>
            </p>

            <p class="button">
                <label>&nbsp;</label>
                <g:submitButton class="button" name="submitButton" value="register"/>
            </p>
            </fieldset>
        </g:form>
        </p>
        </div>
    </content>
</g:applyLayout>