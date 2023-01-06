package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import Bean.CartBean;
import Bo.CartBo;
import Bo.GroupProductBo;
import Bo.ProductBo;

/**
 * Servlet implementation class homeController
 */
@WebServlet("/homeController")
public class homeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public homeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductBo productBo = new ProductBo();
		GroupProductBo grb = new GroupProductBo();

		String grp = request.getParameter("grp"); // get group product ID
		String add = request.getParameter("add"); // get product id for add
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");

		if (grp == null || grp.equals("0"))
			request.setAttribute("listArrivalProducts", productBo.getArrivalProducts()); // list all product
		else
			request.setAttribute("listArrivalProducts", productBo.getArrivalsByGroupID(grp));

		CartBo cart = null;
		HttpSession seesion = request.getSession();
		if (add != null) {

			if (seesion.getAttribute("cart") == null) {
				cart = new CartBo();
				seesion.setAttribute("cart", cart);
			}
			cart = (CartBo) seesion.getAttribute("cart");

			cart.addProductsToCart(new CartBean(id, name, Float.valueOf(price), 1));

		}

		request.setAttribute("lstAllGroupProduct", grb.getAllGP()); // lst all group product

		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
