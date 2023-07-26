<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Compra Productos</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<main>
	<header>
		<h1>Compra de Productos</h1>
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
	int cod=Integer.parseInt(request.getParameter("cod"));
	Producto producto = new Producto();
	producto.ConsulEditarProductos(cod);
	%>

			<form action="comprarProductos.jsp" method="post">
				<table>
					<tr>
						<td>Id Venta:</td>
						<td><input type = "text" name="textIdVenta" required/></td>
					</tr>
					<tr>
						<td>Usuario:</td>
						<td> <%
						Usuario usu = new Usuario();
						String combo = usu.mostrarUsuarios();
						out.print(combo);
						%></td>
					</tr>
					
					<tr>
						<td>Id Producto:</td>
						<td><input type = "text" name="textIdProducto" value="<%=cod%>" required/></td>
					</tr>
					
					<tr>
						<td>Cantidad:</td>
						<td><input type = "text" name="textcant" required/></td>
					</tr>
				
					
			
					<tr>
						<td>Id Tarjeta:</td>
						<td><input type = "text" name="textIdTarjeta" required/></td>
					</tr>

					
					<tr>
						<td><input type="submit" /> <input type="reset" /></td>
					</tr>
				</table>
			</form>
</body>

</html>