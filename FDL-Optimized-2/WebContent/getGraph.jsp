<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.google.gson.*"%>
<%@page import="com.fdl.entity.*"%>
<%@page import="com.fdl.dao.*"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.springframework.context.support.FileSystemXmlApplicationContext" %>
<%@page import="org.springframework.context.ApplicationContext" %>

<%


	response.setContentType("application/json;charset=UTF-8");
	Gson gson = new Gson();

	String applicationContextPath = "/"+application.getRealPath("/")+"applicationContext.xml";

	//out.print(applicationContextPath);
  	ApplicationContext context = new FileSystemXmlApplicationContext(applicationContextPath);
	FdlDao fdlDao=(FdlDao) context.getBean("fdlDao");
	Graph graph = fdlDao.getGraph2();
	out.print(gson.toJson(graph));
  %>
