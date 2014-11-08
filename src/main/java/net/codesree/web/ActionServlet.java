package net.codesree.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionServlet extends HttpServlet {

  public ActionServlet() {}

  public void init() {
    //TODO auto-generated method
  }
  
  public void doGet(HttpServletRequest req,HttpServletResponse res) throws
    IOException,ServletException {
    String name=null;
    name=req.getParameter("user");
    if(name.toString().equals("")||name.toString()==null) {
        name=" User";
    }
    res.setContentType("text/plain");
    res.setCharacterEncoding("UTF-8");
    name="Hello "+name+" from ActionServlet";
    res.getWriter().write(name);
  }
  
  public void doPost(HttpServletRequest req,HttpServletResponse res) throws
    IOException,ServletException {
    //TODO Auto-generated method
  }
  
  public void destroy() {
    //TODO auto-generated method
  }

}