package org.joonzis.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Calendar;

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
		// 인코딩
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));
		
		double avg = (kor + eng + mat) / 3.0;
		char grade;
		if(avg >= 90) {grade = 'A';}
		else if(avg >= 80) {grade = 'B';}
		else if(avg >= 70) {grade = 'C';}
		else if(avg >= 60) {grade = 'D';}
		else {grade = 'F';}
		
		System.out.println("이름 : " + name);
		System.out.println("평균 : " + avg);
		System.out.println("학점 : " + grade);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
