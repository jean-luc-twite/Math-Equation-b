/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.za.tut.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Proline
 */
public class FirstStepServlet extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //declare variable  and inialise
      
         Integer num1=2,
             num2=4,
             num3=3,
             num4=6,
             num5=24;
         String unknown="x";
         //call and ivoke method 
        double x = solveEquation(num1, num2, num3, num4, num5);
         //set the request Attribute
         request.setAttribute("numb1", num1);
         request.setAttribute("numb2", num2);
         request.setAttribute("numb3", num3);
         request.setAttribute("numb4", num4);
         request.setAttribute("numb5", num5);
         request.setAttribute("x", unknown);
         request.setAttribute("solution", x);
         //JSP FIRST STEP
         RequestDispatcher dp =request.getRequestDispatcher("FirstStep.jsp");
         dp.forward(request, response);
    }
 public static double solveEquation(double a, double b, double c, double d, double e) {
    double x = (e - d - 6) / (2 * b + 4);
    return x;
  }

//    /**
//     * Handles the HTTP <code>POST</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }


}
