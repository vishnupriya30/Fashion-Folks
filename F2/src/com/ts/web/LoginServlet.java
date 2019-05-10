package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.dao.CustomerDao;
import com.dto.Customer;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hi Lahari");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		Customer customer= new Customer();
		customer = CustomerDao.getCustomer(user);
		System.out.println("Lahari"+customer);
		out.print("<html>");
		if(customer == null){
			RequestDispatcher rd = request.getRequestDispatcher("SignUpPage.html");
			rd.include(request, response);	
			
		}
		if(customer!=null && (customer.getPassword().equals(pass))){
			HttpSession session = request.getSession(true);
			session.setAttribute("user", user);
			session.setAttribute("pass", pass);
			session.setAttribute("custId", String.valueOf(customer.getCustId()));
			session.setAttribute("customer", customer);
			RequestDispatcher rd = request.getRequestDispatcher("AfterLoginHomePage.jsp");
			rd.include(request, response);	
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("WrongPswd.jsp");
				rd.forward(request, response);
			}
			
		out.println("</html>");		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
