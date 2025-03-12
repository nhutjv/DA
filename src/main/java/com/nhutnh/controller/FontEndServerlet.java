package com.nhutnh.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhutnh.Dao.UserDAO;
import com.nhutnh.Dao.VideoDAO;
import com.nhutnh.model.*;
import com.nhutnh.ulti.*;
//NGUYỄN HOÀNG NHỰT
//PC05876
//SD18304
@WebServlet({ "/home", "/logout", "/login", "/aduser","/advideo","/crtk" })
public class FontEndServerlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FontEndServerlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Video> videos = VideoDAO.findAllVideo();
		req.setAttribute("videos", videos);
		String urString = req.getRequestURI();
		if (urString.contains("logout")) {
			req.getSession().removeAttribute("fullName");
			req.setAttribute("view", "/view/frontend/main.jsp");

		}
//		else if (urString.contains("login")) {
//			req.setAttribute("view", "/view/frontend/login.jsp");
//		}
		else if (urString.contains("login")) {
			String userName = req.getParameter("userName");
			String passWord = req.getParameter("passWord");
			User user = UserDAO.findUserById(userName);
			System.out.println(userName);
			if (user != null && user.getPassWord().equals(passWord)) {
				req.getSession().setAttribute("fullName", user.getFullName());
				req.getSession().setAttribute("isAdmin", user.getAdmin());

			}
			req.setAttribute("view", "/view/frontend/main.jsp");
		} else if (urString.contains("crtk")) {
            // User registration
            String userName = req.getParameter("userName");
            String password = req.getParameter("password");
            String fullName = req.getParameter("fullName");
            String email = req.getParameter("email");

            User newUser = new User();
            newUser.setId(userName); // Assuming userName is unique and used as the user ID
            newUser.setPassWord(password);
            newUser.setFullName(fullName);
            newUser.setEmail(email);
            newUser.setAdmin(false); // Assuming the registered user is not an admin by default

            boolean success = UserDAO.createUser(newUser);

            if (success) {
                // Registration successful
                req.setAttribute("message", "Registration successful. Please login.");
//                req.getRequestDispatcher("/view/frontend/login.jsp").forward(req, resp);
                
            } else {
                // Registration failed
                req.setAttribute("error", "Registration failed. Please try again.");
//                req.getRequestDispatcher("/view/frontend/register.jsp").forward(req, resp);
            }
        } else {
            // Default handling: set view attributes for frontend
            req.setAttribute("view", "/view/frontend/main.jsp");

        }
        req.setAttribute("view", "/view/frontend/main.jsp");
        req.setAttribute("menu", "/view/frontend/menu.jsp");
        req.getRequestDispatcher("/view/index.jsp").forward(req, resp);
    }
}
