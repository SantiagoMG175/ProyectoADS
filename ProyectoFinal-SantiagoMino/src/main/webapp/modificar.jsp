<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Modificar</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<h1>Modificar Producto</h1>
		</header>
		<nav>
			<a class="active" href="index.jsp">Inicio</a> <a href="productos.jsp">Ver
				Productos</a> <a href="categorias.jsp">Buscar Por Categoria</a> <a
				href="registro.jsp">Registrar Productos</a>

		</nav>
		<div class="agrupar">


			<section>

				<%	
	int cod=Integer.parseInt(request.getParameter("cod"));
	Producto producto = new Producto();
	producto.ConsulEditarProductos(cod);
	%>

			<form action="EditarProductos.jsp" method="post">
				<table>
					<tr>
						<td>Codigo Producto:</td>
						<td><input type = "text" name="editarcod" value="<%=cod%>"/></td>
					</tr>
					
					<tr>
						<td>Categoria:</td>
						<td><output ><%=producto.getCategoria()%></output></td>
					</tr>
					
					<tr>
						<td>Descripcion:</td>
						<td><input type = "text" name="editardesc" value="<%=producto.getNombre()%>"/></td>
					</tr>
					
					<tr>
						<td>Precio:</td>
						<td><input type = "text" name="editarprec" value="<%=producto.getPrecio()%>"/></td>
					</tr>
					
					<tr>
						<td>Cantidad:</td>
						<td><input type = "text" name="editarcant" value="<%=producto.getCantidad()%>"/></td>
					</tr>
				
				</table>
				<br />
				<br /><input type="submit" name="Actualizar"/>
				
				
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