/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servelts;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bo
 */
public class ShoppingListServle extends HttpServlet {

   
    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession session = request.getSession();
       String username = (String)session.getAttribute("username");
        if( username != null){
             getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
            return;
        }
        else{
       getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
       return;}
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(request.getParameter("register")!=null){
            String username =request.getParameter("username");
            session.setAttribute("username", username);
            ArrayList<String> items = null;
            session.setAttribute("items", items);
            response.sendRedirect("ShoppingList");
        }
        else if(request.getParameter("add")!=null){
            String item =request.getParameter("item");
             ArrayList<String> items = (ArrayList<String>)session.getAttribute("items");
             items.add(item);
             session.setAttribute("items", items);
        }
        
        }
    }

    
    
