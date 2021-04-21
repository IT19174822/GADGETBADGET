
    <%@ page import="connection.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<% 
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st =con.createStatement();
		String q2="create table product(id int, name varchar(20), category varchar(20), price int, active varchar(20))" ;
		String q3="create table cart(email varchar(100),product_id int, quantity int, price int, total int,address varchar(100),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))" ;
		
		System.out.println(q2);
		System.out.println(q3);
		st.execute(q2);
		st.execute(q3);
		System.out.print("You have benn created a table");
				
				
	}catch(Exception e){
		System.out.print(e);

	}
%>