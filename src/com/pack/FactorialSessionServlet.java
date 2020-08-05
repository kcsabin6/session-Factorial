package com.pack;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FactorialSessionServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String num=req.getParameter("num");
	int y=Integer.parseInt(num);
	int sum=1;
	for(int x=2;x<=y;x++){
		sum=sum*x;
	}
	req.setAttribute("pnum",sum+"");
	
	String store=req.getParameter("store");
	if("yes".equalsIgnoreCase(store)) {
		HttpSession session=req.getSession();
		Map<String,String> mapData=(Map<String,String>)session.getAttribute("mapData");
		if(mapData==null) {
			mapData= new LinkedHashMap<String,String>();
			session.setAttribute("mapData",mapData);
		}
		mapData.put(num, sum+"");
	}
	req.getRequestDispatcher("session1.jsp").forward(req, resp);
	}

}
