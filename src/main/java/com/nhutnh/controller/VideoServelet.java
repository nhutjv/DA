package com.nhutnh.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.nhutnh.Dao.UserDAO;
import com.nhutnh.Dao.VideoDAO;
import com.nhutnh.model.*;
//NGUYỄN HOÀNG NHỰT
//PC05876
//SD18304
@MultipartConfig()
@WebServlet({"/video", "/insert","/edit/*","/update","/delete"})
public class VideoServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VideoServelet() {
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
		req.setCharacterEncoding("utf-8");
		String urString = req.getRequestURI();
		if (urString.contains("insert")) {
			Video video =  new Video();
			try {
				BeanUtils.populate(video, req.getParameterMap());
				Part poster = req.getPart("poster");
				String fileName = poster.getSubmittedFileName();
				String path =  req.getServletContext().getRealPath("/upload/"+fileName);
				if(!Files.exists(Path.of(path))) {
					Files.createDirectories(Path.of(path));
				}
				poster.write(path);
				video.setPoster(fileName);
				video.setActive(true);
				int rs = VideoDAO.insert(video);
				if(rs==1) {
					req.setAttribute("message", "insert sucess");
				}
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} else if (urString.contains("edit")) {
			String id = req.getParameter("id");
			Video video = VideoDAO.findVideoById(id);
			req.setAttribute("video", video);
			
		}else if (urString.contains("update")) {
			Video video =  new Video();
			try {
				BeanUtils.populate(video, req.getParameterMap());
				Part poster = req.getPart("poster");
				System.out.println("poster name: " + poster.getSubmittedFileName());
				if(!poster.getSubmittedFileName().isEmpty()) {
					String fileName = poster.getSubmittedFileName();
					String path =  req.getServletContext().getRealPath("/upload/"+fileName);
	

					if(!Files.exists(Path.of(path))) {
						Files.createDirectories(Path.of(path));
					}
					poster.write(path);
					video.setPoster(fileName);
				}else {
					Video v = VideoDAO.findVideoById(video.getId());
					video.setPoster(v.getPoster());
				}
				video.setActive(true);
				int rs = VideoDAO.update(video);
				if(rs==1) {
					req.setAttribute("message", "update sucess");
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
		}else if (urString.contains("delete")) {
			String id = req.getParameter("id");
			Video video = VideoDAO.findVideoById(id);
			video.setActive(false);
			VideoDAO.update(video);
			
		}else if (urString.contains("video")) {
			req.setAttribute("menu", "/view/admin/menu.jsp");
			req.setAttribute("view", "/view/admin/videos/list.jsp");
		}
		List<Video> videos = VideoDAO.findAllVideo();
		req.setAttribute("videos", videos);
		req.setAttribute("menu", "/view/admin/menu.jsp");

		req.setAttribute("view", "/view/admin/videos/list.jsp");
		req.getRequestDispatcher("/view/index.jsp").forward(req, resp);
	}
}
