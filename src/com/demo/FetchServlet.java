package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

import javax.servlet.*; 
import javax.servlet.http.*; 

@SuppressWarnings("serial")
public class FetchServlet extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
{
response.setContentType("text/html");
DatastoreService ds = DatastoreServiceFactory.getDatastoreService();
Query q = new Query("Client");
PreparedQuery pq = ds.prepare(q);
for(Entity user : pq.asIterable()) {
String email = user.getProperty("Email").toString();
String name = user.getProperty("Name").toString();
String mobileno = user.getProperty("MobileNo").toString();
System.out.println("Email id:" +email);
System.out.println("Name:" +name);
System.out.println("Moblie number:" +mobileno);
}
}
}
