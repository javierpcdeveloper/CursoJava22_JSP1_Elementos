<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo de JSP con Expression Language</title>
    </head>
    <body>
        <h1>Ejemplo de JSP con Expression Language</h1><br>
        <ul>
	<li>Nombre de la aplicación:${pageContext.request.contextPath}</li>
	<li>Info cliente: ${header.User-Agent}</li>
	<li>Id sesión: ${cookie.JSESSIONID.value}</li>
	<li>Web server:${pageContext.servletContext.serverInfo}</li>
	<li>Valor parametro:${param.usuario}</li>
	<li>Valor parametro:${param["usuario"]}</li>
	</ul>
	<a href="index.jsp">Volver</a>
    </body>
</html>