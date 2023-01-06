package Bo;

import java.util.ArrayList;

import Bean.CartBean;

public class CartBo {
	public ArrayList<CartBean> listCart = new ArrayList<CartBean>();

	public void addProductsToCart(CartBean product) {
		int quantityNew = 0;
		for (int i = 0; i < listCart.size(); i++) {
			CartBean prd = listCart.get(i);
			if (prd.getProductID().equals(product.getProductID())) {
				quantityNew = prd.getQuantity() + product.getQuantity();
				prd.setQuantity(quantityNew);

				return;
			}
		}

		listCart.add(product);

	}
	
	public boolean deleteProduct(String productID) {	
		for(CartBean product : listCart) {
			if(product.getProductID().equals(productID)) {
				listCart.remove(product);
				return true;
			}			
		}
		return false;
	}
	
	public boolean updateCart(String productID, int quantity) {
		for(int i=0; i< listCart.size(); i++) {
			if(listCart.get(i).getProductID().equals(productID)) {
				listCart.get(i).setQuantity(quantity);
				return true;
			}
		}
		return false;
	}
}
