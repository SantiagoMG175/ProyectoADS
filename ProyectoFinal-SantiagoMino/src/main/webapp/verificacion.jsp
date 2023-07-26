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

		<h1 style="color:blue">Compra realizada con exito</h1>
		
		<%
	int id=Integer.parseInt(request.getParameter("textIdT"));
	String num=request.getParameter("textNum");
	String titulo=request.getParameter("textTitulo");
	String fecha=request.getParameter("textfe");
	String cvv=request.getParameter("textcvv");
	Tarjeta tar = new Tarjeta();
	tar.ingresarTarjeta(id, num, titulo, fecha, cvv);
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
