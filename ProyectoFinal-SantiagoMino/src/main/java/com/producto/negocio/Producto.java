package com.producto.negocio;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.producto.datos.Conexion;

public class Producto {

	private int id;
	private String nombre;
	private float precio;
	private int cantidad;
	private int categoria;
	
	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


	public int getCategoria() {
		return categoria;
	}


	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}

	private InputStream foto;


	public Producto() {
		setId(0);
		setNombre("");
		setPrecio(0);
		setCantidad(0);
	}
	public Producto (int cod, String nom, float pre, int can) {
		setId(cod);
		setNombre(nom);
		setPrecio(pre);
		setCantidad(can);
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

	public InputStream getFoto() {
		return foto;
	}

	public void setFoto(InputStream foto) {
		this.foto = foto;
	}

	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Precio</th><th>Cantidad</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getFloat(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}


	public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT descripcion_pr, precio_pr FROM tb_producto WHERE id_cat="+cat + " ORDER BY id_pr";
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	

	
	public String editarTodosProductoCategoria()
	{
		String sentencia="SELECT id_pr,id_cat,descripcion_pr, precio_pr ,cantidad_pr FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3><th>ID</th><th>CATEGORIA</th><th>DESCRIPCION</th><th>PRECIO</th><th>CANTIDAD</th>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getInt(1)+"</td>"
						+ "<td>"+rs.getInt(2)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getFloat(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "<td> <a href= modificar.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align:center\">Modificar</pre></a></td>"
						+ "<td> <a href= eliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"textalign: center\">Eliminar</pre></a></td>"
						+ "</tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	
	public String ComprarProductoCategoria()
	{
		String sentencia="SELECT id_pr,id_cat,descripcion_pr, precio_pr ,cantidad_pr FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3><th>ID</th><th>CATEGORIA</th><th>DESCRIPCION</th><th>PRECIO</th><th>CANTIDAD</th>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getInt(1)+"</td>"
						+ "<td>"+rs.getInt(2)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getFloat(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "<td> <a href= compra.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align:center\">Comprar</pre></a></td>"
						+ "</tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}

	public void ConsulEditarProductos(int cod) {
		Conexion obj = new Conexion();
		ResultSet rs = null;
		
		String sql = "SELECT id_pr,id_cat,descripcion_pr,precio_pr,cantidad_pr FROM tb_producto where id_pr = '" + cod + "'";
		
		try {
			rs = obj.Consulta(sql);
			while (rs.next()) {
				setId(rs.getInt(1));
				setCategoria(rs.getInt(2));
				setNombre(rs.getString(3));
				setPrecio(rs.getFloat(4));
				setCantidad(rs.getInt(5));	
			}
		} catch(Exception e) {
			
		}
	}

	
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto (id_pr,id_cat,"
				+ "descripcion_pr,precio_pr,cantidad_pr) "
				+ "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setDouble(4, precio);
			pr.setInt(5, cantidad);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	
	public String ingresarVenta(int id,String nombre,int idpr, double monto, int idtar)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_venta(id_vt,cedula_pr,"
				+ "id_pr,monto_pr,id_tar) "
				+ "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setString(2,nombre);
			pr.setInt(3, idpr);
			pr.setDouble(4, monto);
			pr.setInt(5, idtar);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public boolean ModificarProducto(Producto prod) {
		boolean agregado=false;
		Conexion obj= new Conexion();
		String sql = "UPDATE tb_producto SET descripcion_pr='"+prod.getNombre() + "',precio_pr = '" +prod.getPrecio()+"',"
		+"cantidad_pr = '" + prod.getCantidad() + "' WHERE \"id_pr\"='" + prod.getId() +"'";
		try {
		obj.Ejecutar(sql);
		agregado = true;
		} catch (Exception e) {
			agregado = false;
		}
		return agregado;
	}
	
	public boolean EliminarProducto(int cod) {
		boolean f = false;
		Conexion con = new Conexion();
		String sql = "delete from tb_producto where id_pr='" + cod + "'";
		try {
			con.Ejecutar(sql);
			f = true;
		} catch (Exception e) {
			f = false;
		}
		return f;
	}
	
}
