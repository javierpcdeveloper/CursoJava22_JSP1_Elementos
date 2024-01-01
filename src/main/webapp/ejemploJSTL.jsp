<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo de JSP Standard Tag Library (JSTL)</title>
    </head>
    <body>
	<h1>Ejemplo de JSP Standard Tag Library (JSTL)</h1><br>
	<c:set var="nombre" value="Ernesto"/><!--Definimos la variable -->
	Variable nombre: <c:out value="${nombre}"/><br><!--Mostramos el valor -->
	Salida: <c:out value="<h4>Hola mundo</h4>" escapeXml="false"/><br><!--Variable con código HTML -->
	<c:set var="bandera" value="true"/>
	<c:if test="${bandera}" >
		La bandera es verdadera
	</c:if>
	<c:if test="${param.opcion != null}">
		<c:choose>
			<c:when test="${param.opcion == 1}" >
				<br>Opcion 1 seleccionada
			</c:when>
			<c:when test="${param.opcion == 2}" >
				<br>Opcion 2 seleccionada
			</c:when>
		</c:choose>
	</c:if>
	<%
		String nombres[]={"Sara","Luis","Juan","Pepe","Rita"};
		request.setAttribute("nombres",nombres);
	%><br>
	Lista de nombres:<ul>
	<c:forEach var="persona" items="${nombres}">
		<li>Nombre:${persona}</li>
	</c:forEach>
	</ul>
	<a href="index.jsp">Volver</a>
    </body>
</html>
