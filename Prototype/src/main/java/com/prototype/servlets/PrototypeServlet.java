package com.prototype.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.prototype.*;

/**
 * Servlet implementation class PrototypeServlet
 */
public class PrototypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve parameters from the request
        String color = request.getParameter("color");
        int x = Integer.parseInt(request.getParameter("x"));
        int y = Integer.parseInt(request.getParameter("y"));

        // Create a new PrototypeRegistry
        PrototypeRegistry registry = new PrototypeRegistry();

        // Create a Button prototype based on user input
        Button userButtonPrototype = new Button(x, y, color);

        // Add the user-defined Button prototype to the registry
        registry.addItem("UserDefinedButton", userButtonPrototype);

        // Retrieve a clone of the user-defined Button prototype from the registry
        Button clonedButton = (Button) registry.getById("UserDefinedButton");

        // Set attributes in request scope for JSP rendering
        request.setAttribute("clonedButton", clonedButton);

        // Forward the request to the JSP page
        request.getRequestDispatcher("/prototype.jsp").forward(request, response);
    }

}
