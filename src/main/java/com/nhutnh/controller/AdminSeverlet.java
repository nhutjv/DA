package com.nhutnh.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//NGUYỄN HOÀNG NHỰT
//PC05876
//SD18304
@WebServlet("/admin")
public class AdminSeverlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSeverlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(req.getSession().getAttribute("isAdmin")== null) {
//			req.setAttribute("view", "/views/frontend/login.jsp");
		}else {
			Boolean isAdmin = (Boolean) req.getSession().getAttribute("isAdmin");
			if(isAdmin) {
				req.setAttribute("view", "/view/admin/main.jsp");
				req.setAttribute("menu", "/view/admin/menu.jsp");
			}else {
				req.setAttribute("view", "/view/404.jsp");
			}
		}
		req.getRequestDispatcher("/view/index.jsp").forward(req, resp);
	}
}
