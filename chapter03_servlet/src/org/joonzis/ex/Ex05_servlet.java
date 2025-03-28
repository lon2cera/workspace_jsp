package org.joonzis.ex;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex05_servlet")
public class Ex05_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	public Ex05_servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
	

		String name=request.getParameter("name");
		int kor=Integer.parseInt(request.getParameter("kor"));
		int eng=Integer.parseInt(request.getParameter("eng"));
		int mat=Integer.parseInt(request.getParameter("mat"));
		
		double avg;
		char grade;
		
		avg=(double)(kor+eng+mat)/3;
		if(avg>=90) {grade='A';}
		else if(avg>=80) {grade='B';}
		else if(avg>=70) {grade='C';}
		else if(avg>=60) {grade='D';}
		else {grade='F';}
		
		System.out.println("name : "+name);
		System.out.println("avg : "+avg);
		System.out.println("grade : "+grade);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
