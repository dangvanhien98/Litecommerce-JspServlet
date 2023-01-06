package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.CartBean;
import Bo.CartBo;
import Bo.GroupProductBo;
import Bo.ProductBo;

/**
 * Servlet implementation class categoriesController
 */
@WebServlet("/categoriesController")
public class categoriesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public categoriesController() {
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
		String groupID = request.getParameter("groupID");
		String add = request.getParameter("add");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		
		ProductBo prd = new ProductBo();
		GroupProductBo grb = new GroupProductBo();

		request.setAttribute("lstAllGroupProduct", grb.getAllGP());
		
		CartBo cart = null;
		HttpSession session = request.getSession();
		if(add != null) {
			if(session.getAttribute("cart") == null) {
				cart = new CartBo();
				session.setAttribute("cart", cart);
			}
			cart = (CartBo)session.getAttribute("cart");
			cart.addProductsToCart(new CartBean(id, name, Float.valueOf(price), 1));
		}
		
		if (request.getParameter("grpName").equals("all")) {
			request.setAttribute("listAllProductByGroupID", prd.getAllProducts()); // get all product
		} else
			request.setAttribute("listAllProductByGroupID", prd.getProductsByGroupID(groupID));
		// request.setAttribute(grpName, grpName);
		
		RequestDispatcher rd = request.getRequestDispatcher("categories.jsp");
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
