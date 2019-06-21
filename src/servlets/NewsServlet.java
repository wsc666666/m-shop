package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.NewsDao;
import dao.impl.GoodsDaoimpl;
import dao.impl.NewsDaoImpl;
import entity.Goods;
import entity.News;

public class NewsServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String opr=request.getParameter("opr");
		 if(opr.equals("list")){
			 NewsDao news=new NewsDaoImpl();
				List<News> listnews=news.getAll();
				request.getSession().setAttribute("listnews", listnews);
				response.sendRedirect("news.jsp");
				
			}
		 else if(opr.equals("list2")){
			 NewsDao news=new NewsDaoImpl();
				List<News> listnews=news.getAll();
				request.getSession().setAttribute("listnews", listnews);
				response.sendRedirect("controlnews.jsp");
				
			}
		 else if(opr.equals("fuzzy")){
			    request.setCharacterEncoding("utf-8");
			   NewsDao gdi=new NewsDaoImpl();
				String title=request.getParameter("title");
				List<News> listnews=gdi.getNewsByTitle(title);
				request.getSession().setAttribute("listnews", listnews);
				String from=request.getParameter("from");
				if(from.equals("admin")){
					response.sendRedirect("controlnews.jsp");
				}else{
					response.sendRedirect("search.jsp");
				}}
		 else if(opr.equals("insert")){
			    request.setCharacterEncoding("utf-8");
				News news=new News();
				NewsDao gdi=new NewsDaoImpl();
				String temp=request.getParameter("gid");
				news.setGid(temp);
				news.setId(request.getParameter("id"));
				news.setTitle(request.getParameter("title"));
				news.setTime(request.getParameter("time"));
				news.setBody(request.getParameter("body"));
				 System.out.println(news.toString());
				 System.out.println(news.getId());
				 System.out.println(news.getBody());
				 System.out.println( "no temp"+temp);
			
				int result=gdi.insert(news);
				if(result!=0){
					out.print("<script>alert('添加成功');location.href='NewsServlet?opr=list2';</script>");
					
				}else{
					out.print("<script>alert('添加失败');location.href='NewsServlet?opr=list2';</script>");
				}
				
		 }
		 else if(opr.equals("update")){
			    request.setCharacterEncoding("utf-8");
				News news=new News();
				NewsDao gdi=new NewsDaoImpl();
				news.setGid(request.getParameter("gid"));
				news.setId(request.getParameter("id"));
				news.setTitle(request.getParameter("title"));
				news.setTime(request.getParameter("time"));
				news.setBody(request.getParameter("body"));
				
			
				int result=gdi.update(news);
				if(result!=0){
					out.print("<script>alert('修改成功');location.href='NewsServlet?opr=list2';</script>");
					
				}else{
					out.print("<script>alert('修改失败');location.href='NewsServlet?opr=list2';</script>");
				}
				
		 }
		 else if(opr.equals("del")){
			    request.setCharacterEncoding("utf-8");
			    News news=new News();
			    news.setGid(request.getParameter("gid"));
			    NewsDao gdi=new NewsDaoImpl();
				int result=gdi.delete(news);
				if(result!=0){
					out.print("<script>alert('删除成功');location.href='NewsServlet?opr=list2';</script>");
					
				}else{
					out.print("<script>alert('删除失败');location.href='NewsServlet?opr=list2';</script>");
				}
				
		 }
			
			
		 }

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
