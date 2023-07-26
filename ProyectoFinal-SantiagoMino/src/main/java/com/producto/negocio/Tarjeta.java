package com.producto.negocio;

import java.sql.PreparedStatement;

import com.producto.datos.Conexion;

public class Tarjeta {
	
	
	private int Id;
	private String num;
	private String titu;
	private String venc;
	private String cvv;
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getTitu() {
		return titu;
	}
	public void setTitu(String titu) {
		this.titu = titu;
	}
	public String getVenc() {
		return venc;
	}
	public void setVenc(String venc) {
		this.venc = venc;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	
	public String ingresarTarjeta(int id, String num,String titulo,String fecha, String cvv)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_tarjeta (id_tar,numero_tar,"
				+ "titulo_tar,fecha_tar,cvv_tar) "
				+ "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setString(2,num);
			pr.setString(3, titulo);
			pr.setString(4, fecha);
			pr.setString(5, cvv);
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
	
		
}
