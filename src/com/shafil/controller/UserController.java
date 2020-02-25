package com.shafil.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.shafil.data.UserDAOImpl;
import com.shafil.model.User;

@WebServlet("/UserController")
@MultipartConfig 
(
	fileSizeThreshold = 1024*10,       //10kb
			maxFileSize = 1024*300,      //300kb
			maxRequestSize = 1024*1024   // 1mb
)
public class UserController extends HttpServlet {
	private static final long serialVersionUID=1L;	
	
	UserDAOImpl userutil;


	
	
	@Override
	public void init() throws ServletException {
		userutil = new UserDAOImpl();
		super.init();
	}

	
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException
	{
		
		
	try {
		
		String command=request.getParameter("command");
		switch(command)
		{
		case "ADD":
			addUser(request,response);
			break;
			
		case "USER":
			  getUser(request,response);
			  break;
	
		case "LOGOUT":
			logOut(request,response);
			break;
		}
		
		
	}
	catch(Exception e)
	{
		throw new ServletException(e);
	}
	}
	
private void logOut(HttpServletRequest request, HttpServletResponse response) throws Exception
{
		
	HttpSession session = request.getSession();
	session.invalidate();
	String message = "Logout Successfully ";
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	request.setAttribute("msg", message);
	rd.forward(request,response);
	
	}


private void getUser(HttpServletRequest request, HttpServletResponse response)throws Exception {
	String userId=request.getParameter("userId");
	String password=request.getParameter("password");

	String message=null;
	String resource="login.jsp";
	

try {
	User user= userutil.getUser(userId);
	if(user.getPassword().equals(password))  {
		resource="ItemController";
		HttpSession session =  request.getSession();
		session.setAttribute("user", user);
	}
	else  {
		message="Wrong PAssword:Please try again";
	}
}

   catch(Exception e)  {
	    message=e.getMessage();
   }
request.setAttribute("msg",message);
RequestDispatcher rd=request.getRequestDispatcher(resource);
rd.forward(request, response);
}
private void addUser(HttpServletRequest request,HttpServletResponse response) throws Exception
{
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String firstName = request.getParameter("firstname");
	String lastName = request.getParameter("lastname");
	String address = request.getParameter("address");
	String city = request.getParameter("city");

	  
	Part filePart = request.getPart("photo");
	InputStream inputStream=null;
	
	if(filePart!=null) {
		inputStream= filePart.getInputStream();
	}
	
	String message=null;
	String resource="Signup.jsp";
	
	
	User user=new User(userId, password, firstName, lastName, address, city, inputStream);
  
	 try {
		 userutil.addUser(user);
		 message="Record entered Successfully: Please login";
		 resource="login.jsp";
		 
	 }
	 catch(Exception e) {

		  message=e.getMessage();	 
	 }
        request.setAttribute("msg",message);
	   RequestDispatcher rd=request.getRequestDispatcher(resource);
	   rd.forward(request, response);
	 
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 

{
	doGet(request,response);
}
}