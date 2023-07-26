<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Productos</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<main>
	<header>
		<h1>Productos Disponibles</h1>
	</header>
	<nav>
		<a class="active" href="index.jsp">Inicio</a> <a href="productos.jsp">Ver
			Productos</a> <a href="categorias.jsp">Buscar Por Categoria</a> <a
			href="registro.jsp">Registrar Productos</a>

	</nav>
</main>
<style>
* {
	box-sizing: border-box;
}

img {
	width: 100%;
}
</style>
</head>
	
<body>
<div class="agrupar">
		<%
	Producto producto=new Producto();
	out.print(producto.ComprarProductoCategoria());
	%>
	
		</div>
	<div class="flex">
		<div class="caja">
			<img src="imagenes/colegial negro.jpg">
			<p>
				Colegial Negro/Negro <br>$10 + IVA.
			</p>
		</div>


		<div class="caja1">
			<img src="imagenes/deportivo-cordon.jpg">
			<p>
				Deportivo Cordon Blanco/Gris<br>$25 + IVA.
			</p>
		</div>


		<div class="caja">
			<img src="imagenes/deportivo-velcro.jpg">
			<p>
				Deportivo Velcro Blanco/Gris <br>$25 + IVA.
			</p>
		</div>
	</div>


	<div class="flex">
		<div class="caja">
			<img src="imagenes/zapato-mujer.jpg">
			<p>
				Zapato Escolar Mujer  <br>$24 + IVA.
			</p>
		</div>


		<div class="caja">
			<img src="imagenes/zapato-hombre.jpg">
			<p>
				Zapato Escolar Hombre Mocasín <br>$30 + IVA.
			</p>
		</div>


		<div class="caja">
			<img src="imagenes/zapato-hombre1.jpg">
			<p>
				Zapato Escolar Hombre Casual <br>$35 + IVA.
			</p>
		</div>


	</div>
</body>

</html>