<%-- File: grails-app/views/layout/page.gsp --%>
<!DOCTYPE html>
<html>
<head>
    <title><g:layoutTitle default="linkshare"/></title>

    <style>
    .search {
        position: absolute;
        right: 0px;
        border: none
    }

    #header {
        padding: 3em;
        border: 1px solid
    }

    </style>
    <g:layoutHead/>
</head>

<body>
<div id="header" class="clearfix">
    <div id="logo">
        <g:link uri="/"><g:message code="link.title.website"/></g:link>
    </div>

    <div id="searchform">
        <g:form controller="search">
            <fieldset class="search">
                <input type="search" class="search-input" value="${message(code: 'search.box.search')}" name="search"
                       id="search-phrase" maxlength="100"/>
            </fieldset>
        </g:form>

     </div>

</div>
<g:layoutBody/>

<div id="footer">

</div>

</body>
</html>