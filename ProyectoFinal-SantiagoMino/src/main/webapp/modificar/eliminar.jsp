<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Categorias SS</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<h1>Categorias</h1>
		</header>
		<nav>
			<a class="active" href="index.jsp">Inicio</a> <a href="productos.jsp">Ver
				Productos</a> <a href="categorias.jsp">Buscar Por Categoria</a> <a
				href="registro.jsp">Registrar Productos</a>

		</nav>
		<div class="agrupar">


			<section>

		<%
		
		int cod = Integer.parseInt(request.getParameter("editarcod"));
		String nom = request.getParameter("editardesc");
		float pre = Float.parseFloat(request.getParameter("editarprec"));
		int can = Integer.parseInt(request.getParameter("editarcant"));
		Producto mp = new Producto(cod, nom, pre, can);
		boolean actualizado = mp.ModificarProducto(mp);
		if (actualizado == true){
			response.sendRedirect("registro.jsp?");
		} else {
			out.println("algo salio mal");
		}
		%>


	

			</section>
		</div>

		<footer>
			<ul>

				<li><a href="https://www.facebook.com/dilan.maigua">Nuestro
						Facebook</a></li>

				<li><a href="https://www.instagram.com/maiguadilan/">Nuestro
						Instagram</a></li>

				<li><a href="https://twitter.com/twitter">Nuestro Twitter</a></li>



			</ul>
		</footer>
	</main>
</body>
</html>