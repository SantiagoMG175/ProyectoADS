<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<h1></h1>
		</header>

		
			<nav>
				<a class="active" href="index.jsp">Inicio</a> <a
					href="productos.jsp">Ver Productos</a> <a href="categorias.jsp">Buscar
					Por Categoria</a> <a href="registro.jsp">Registrar Productos</a>

			</nav>
	

<div class="agrupar">

		<section>

		<%
	String nombre=request.getParameter("txtNombre");
	String cedula=request.getParameter("txtCedula");
	String contra=request.getParameter("txtContra");
	String estadoCivil=request.getParameter("cmbCivil");
	String residencia=request.getParameter("rdResidencia");
	String foto=request.getParameter("fileFoto");
	String fechas=request.getParameter("fecha");
	String color=request.getParameter("colorFavorito");
	
	
	Usuario usuario=new Usuario();
	out.print(usuario.ingresarUsuario(nombre,cedula,estadoCivil,46,color,contra,residencia));
	
	
%>
	<br><font color=<%=request.getParameter("colorFavorito")%>> Este es tu color favorito </font>
	
	<%
	out.print(usuario.consultarUsuarios());
	%>
		</section>
		
			</div>

		<footer>
			<ul>

					<li><a href="https://www.facebook.com/distribuidorabasantes">Nuestro
						Facebook</a></li>

				<li><a href="https://www.instagram.com/distribuidorabasantesjr/?theme=dark">Nuestro
						Instagram</a></li>

			</ul>
		</footer>
	</main>
</body>
</html>
