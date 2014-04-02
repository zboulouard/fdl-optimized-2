package com.fdl.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.HttpRequestHandler;

import com.fdl.dao.FdlDao;
import com.fdl.entity.Graph;
import com.google.gson.Gson;

@Component("getGraph")
public class GetGraph implements HttpRequestHandler {

	/**
	 * 
	 * Cette Servlet récupére les données depuis la BDD et les stocke sur le fichier JSON
	 * qui va être lu par le fichier "d3.js" qui va afficher le graphe
	 *  
	 * */
	
	@Autowired
	private FdlDao fdlDao;
	
	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("application/json;charset=UTF-8");
		Gson gson = new Gson();
		Graph graph = fdlDao.getGraph2();
		PrintWriter out = response.getWriter();
	    out.println(gson.toJson(graph));
	}


}
