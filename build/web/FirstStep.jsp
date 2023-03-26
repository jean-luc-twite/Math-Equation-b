<%-- 
    Document   : FirstStep
    Created on : Mar 25, 2023, 3:03:52 AM
    Author     : Proline
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solution Page</title>
        <link rel="stylesheet" href="FirstStep.css"
    </head>
    <body>

          <%
             Integer num1=(Integer)request.getAttribute("numb1"),
             num2=(Integer)request.getAttribute("numb2"),
             num3=(Integer)request.getAttribute("numb3"),
             num4=(Integer)request.getAttribute("numb4"),
             num5=(Integer)request.getAttribute("numb5");
             Double x=(Double)request.getAttribute("solution");
             String unknown =(String)request.getAttribute("x");
              
          %>
          
              <h1>Solution</h1>
             <%="your equation is " +num1+"("+num2+unknown+"+"+num3+")" +"+"+num4+ "="+num5 + "-" +num2+unknown%> 
           
            <table>
                <tr>
                  <td>Distribute:</td>
                  <td><%=num1+"("+num2+unknown+"+"+num3+")" +"+"+num4+ "="+num5 + "-" +num2+unknown%></td>
                
                </tr>
              
                <tr>
                    <td></td>
                     <td><%=num1*num2+unknown +"+"+ (num1*num3)+"+"+num4 +"="+num5+"-"+num2+unknown%></td>
                </tr>
                
                  <tr>
                  <td>Add The numbers:</td>
                  <td><%=num1*num2+unknown +"+"+ (num1*num3)+"+"+num4 +"="+num5+"-"+num2+unknown%></td> 
                </tr>
                
                   <tr>
                       <td></td>
                   <td><%=num1*num2+unknown+"+"+(num1*num3+num4)+"="+num5+"-"+num2+unknown%></td>
                    </tr>
                    
                  
                  <tr>
                  <td>Rearrange Terms:</td>
                   <td><%=num1*num2+unknown+"+"+(num1*num3+num4)+"="+num5+"-"+num2+unknown%></td>
                </tr>
                
                   <tr>
                       <td></td>
                   <td><%=num1*num2+unknown+"+"+(num1*num3+num4)+"="+"-"+num2+unknown +"+"+num5%></td>
                    </tr>
                    
                    <tr>
                  <td>Solution:</td>
                   <td><%=unknown + "=" +x%></td>
                </tr>
            </table>
<!--                <h1> please click <a href="SecondStepEqServlet.do">here</a> to process to the second step</h1>-->
               
    </body>
</html>
