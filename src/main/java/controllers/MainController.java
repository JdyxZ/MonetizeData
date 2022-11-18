package controllers;

import models.Census_section;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import managers.ManageSeccion;

/**
 * Servlet implementation class FormController
 */
@WebServlet("/RegisterController")
public class MainController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String path = getServletContext().getRealPath("/");
        String pathJson = path + "censal.json";

        ManageSeccion manager = new ManageSeccion();

        String view = "viewPrincipal.jsp";

        List<Census_section> consumDay = new ArrayList<Census_section>();

        try {

            consumDay = manager.getConsumDay("6/17/2021", "6/25/2021", pathJson);
           //Update json
            manager.updateColorJson(consumDay, pathJson);

        } catch (Exception e) {
        }

        request.setAttribute("seccion", consumDay);

        RequestDispatcher dispatcher = request.getRequestDispatcher(view);
        dispatcher.forward(request, response);

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
