<%--Comentario de JSP--%>
<!--Comentario de HTML-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!--directiva TAGLIB-->
<%@page contentType="text/html" pageEncoding="UTF-8"%><!--directiva PAGE-->
<!DOCTYPE html>
<html>
    <head>
        <title>Elementos de JSP</title>
    </head>
    <body>
	<h1>Elementos de JSP</h1><br>
	<h2>Declaraciones</h2><ul>
            <li>No muestran nada</li>
	    <%!
	    //declaramos variables y métodos
	    String usuario="Pepe";
	    public String getUsuario(){
	        return this.usuario;
	    }
	    //declaramos un contador
	    int contador=1;
	    %>
        </ul><h2>Scriptlets</h2><ul>
	    <!--
		Podemos utilizar los objetos implícitos:
		out (JspWriter)
		request (HttpServletRequest)
		response (HttpServletResponse)
		config (ServletConfig)
		application (ServletContext)
		session (HttpSession)
		pageContext (PageContext)
		page (Object)
	    -->
	    <!--Scriptlet para establecer la variable color-->
	    <%
		//en un scriptlet, variables y métodos no son accesibles en toda la clase
		//por eso conviene utilizar una declaración para ello
		String color=request.getParameter("color");
		if(color==null || color.trim().equals("")){
        	    color="red";
		}
	    %>
	    <!--Scriptlet para obtener variables implícitas-->
	    <%
		String nombreAplicacion=request.getContextPath();
	    %>
	    <!--Scriptlets para mostrar información-->
	    <%
        	out.print("<li>Nombre la la aplicacion: "+nombreAplicacion+"</li>");
	    %>
	    <%-- Scriptlet con código condicionado--%>
            <% 	if(session!=null && session.isNew()){ %>
	    <li>La sesión es nueva</li>
	    <% }else if(session!=null){ %>
	    <li>La sesión no es nueva</li>
	    <% } %>
	</ul><h2>Expresiones</h2><ul>
            <li><%= "Hola visitante nº "+this.contador++ %></li>
	    <li>Expresión matemática: 2*3+1=<%= 2*3+1 %></li>
	    <li>Otro ejemplo:<%= request.getRequestURI() %></li>
            <li>SesionId:<%= session.getId() %></li>
	    <li><font color="<%= color %>">Ejemplo</font></li>
	</ul><h2>JSTL</h2><ul>
            <li> <c:out value="Hola Mundo con JSTL" /> </li>
            <li><a href="ejemploJSTL.jsp?opcion=1">JSTL</a></li>
	</ul><h2>Expression Language</h2><ul>
	    <li> ${"Hola Mundo con Expression Language"}</li>
            <li><a href="ejemploEL.jsp?usuario=Juan">Expression Language</a></li>
        </ul><h2>Archivo JSPX de ejemplo</h2><ul>
            <li><form action = "archivo.jspx" method = "POST"><input type = "text" name = "prueba"/><input type = "submit" value = "Enviar"/></form></li>
            <li><a href="archivo.jspx?prueba=ejemplo">JSPX</a></li>
        </ul>
    </body>
</html>