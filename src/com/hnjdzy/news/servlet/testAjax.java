package com.hnjdzy.news.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hnjdzy.news.entity.Person;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class testAjax
 */
@WebServlet("/testAjax")
public class testAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String obj = request.getParameter("obj");
		
		//JSON字符串转实体类对象
		JSONObject jo = JSONObject.fromObject(obj);
		Person p = (Person)JSONObject.toBean(jo,Person.class);
		System.out.println(p);
		
		//键值对转JSON对象
		JSONObject jo2 = new JSONObject();
		jo2.put("name", "李四");
		jo2.put("sex", "女");
		jo2.put("age", 19);
		
		response.getWriter().append(jo2.toString());
	}

}
