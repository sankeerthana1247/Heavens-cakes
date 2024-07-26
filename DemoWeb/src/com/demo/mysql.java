package com.demo;
import java.sql.*;
import java.util.*;

import web.User;  
public class mysql {
	public  List<User> getStudent(){ 
		List<User>listUser=new ArrayList<User>();
		try{   
			System.out.println("Started..");  
			Class.forName("com.mysql.cj.jdbc.Driver");// installing driver
			System.out.println("installed driver...");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample2","root","1234");  
			System.out.println("Connection established...");
			//here sonoo is database name, root is username and password  
			Statement stmt=con.createStatement();  
//			stmt.execute("Insert into Student values(13,2135, 'Paul', 'Ward', 15, 'Alaska');"); 
//			stmt.execute("Insert into Student values(12,4321, 'Peter', 'Bennett', 14, 'California')"); 
//			stmt.execute("Insert into Student values(11,4213,'Carlos', 'Patterson', 17, 'New York')"); 
//			stmt.execute("Insert into Student values(10,5112, 'Rose', 'Huges', 16, 'Florida')"); 
//			System.out.println("Records inserted");
			ResultSet rs=stmt.executeQuery("select * from Student");  //  where address ='qqq' and dept = 'FInance' 
			while(rs.next()) {
				User usr=new User();
				//System.out.println(rs.getString(2));
				usr.setName(rs.getString(6));
				//System.out.println(usr.getName());
				listUser.add(usr);
			
			//System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+ "  "+ rs.getString(4)+"  "+rs.getString(5)+"  "+rs.getInt(6)+"  ");  
			//con.close();
			}
			
			
			
		}
		catch(Exception e)
		{ 
			System.out.println("Exception"+ e.getLocalizedMessage());
		}  
		return listUser;
	}  
}