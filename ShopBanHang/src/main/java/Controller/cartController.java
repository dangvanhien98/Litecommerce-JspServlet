package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bo.CartBo;

/**
 * Servlet implementation class cartController
 */
@WebServlet("/cartController")
public class cartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cartController() {
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
		HttpSession seesion = request.getSession();
		String productID = request.getParameter("productID");
		String product_ID = request.getParameter("product_ID"); //id update
		String delete = request.getParameter("delete");
		String quantity = request.getParameter("quantity");
		String update = request.getParameter("update");
		
		
		CartBo cartBo = (CartBo) seesion.getAttribute("cart");

		if (delete != null) {
			cartBo.deleteProduct(productID);
			if (cartBo.listCart.size() == 0)
				seesion.removeAttribute("cart");
		}
		else if(update != null) {	
			cartBo.updateCart(product_ID, Integer.parseInt(quantity));
		}
		
		if (seesion.getAttribute("cart") != null || (cartBo != null && cartBo.listCart.size() != 0)) {
			RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("homeController");
			rd.forward(request, response);
		}
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
