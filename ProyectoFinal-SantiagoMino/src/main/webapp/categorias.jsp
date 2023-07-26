<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Categoria de productos</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<h1>Categorias</h1>
		</header>
		<nav>
				<a class="active" href="index.jsp">Inicio</a> <a
					href="productos.jsp">Ver Productos</a> <a href="categorias.jsp">Buscar
					Por Categoria</a> <a href="registro.jsp">Registrar Productos</a>

			</nav>
		<div class="agrupar">
			
	



		<section>

			<form action="resultado.jsp" method="post">
			Escoje la categoria
	<%	
	Categoria categoria=new Categoria();
	String combo=categoria.mostrarCategoria();
	out.print(combo);
	%>
	<input type="submit">
		</form>
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