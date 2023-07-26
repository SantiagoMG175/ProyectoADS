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
	int cat=Integer.parseInt(request.getParameter("cmbCategoria"));
	Producto producto=new Producto();
	out.print(producto.buscarProductoCategoria(cat));
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
