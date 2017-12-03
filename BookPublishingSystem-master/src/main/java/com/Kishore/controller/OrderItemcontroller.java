package com.Kishore.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Kishore.model.Book;
import com.Kishore.model.Order;
import com.Kishore.model.OrderItem;
import com.Kishore.model.User;
import com.Kishore.service.BookService;

@Controller
@RequestMapping("orderitems")
public class OrderItemcontroller {

	@Autowired
	private BookService bookService;

	@PostMapping("/addtocart")
	public String addToCart(@RequestParam("book_isbn") long isbn, @RequestParam("quantity") Integer quantity,
			HttpSession session) {
		
		User user = (User) session.getAttribute("USER_LOGGED");

		Order order = (Order) session.getAttribute("MY_CART_ITEMS");

		// create order
		if (order == null) {
			order = new Order();
			order.setUser(user);
			order.setTotalAmount(0);
			order.setStatus("ORDERED");
		}

		// store orderItems
		List<OrderItem> orderItems = order.getOrderItems();

		// If already the item is added to cart, then add the quantity

		boolean isItemExists = false;
		for (OrderItem item : orderItems) {

			if (item.getBook().getIsbn() ==(isbn)) {
				int totalQuantity = item.getQuantity() + quantity;
				item.setQuantity(totalQuantity);
				isItemExists = true;
			}
		}

		//If item not exists, create new Item
		if ( ! isItemExists) {

			OrderItem orderItem = new OrderItem();
			orderItem.setOrder(order);

			Book book = bookService.findOne(isbn);
			orderItem.setBook(book);
			orderItem.setQuantity(quantity);
			orderItems.add(orderItem);
		}

		order.setOrderItems(orderItems);

		session.setAttribute("MY_CART_ITEMS", order);

		return "redirect:../orders/cart";
	}

	@GetMapping("/remove")
	public String removeItemFromCart(@RequestParam("id") Integer id, HttpSession session) {

		System.out.println("Remove Item from Card:" + id);
		Order order = (Order) session.getAttribute("MY_CART_ITEMS");

		if (order != null && order.getOrderItems().size() > 0) {
			List<OrderItem> orderItems = order.getOrderItems();
			OrderItem itemSelected = orderItems.get(id);
			orderItems.remove(itemSelected);
			order.setOrderItems(orderItems);
			session.setAttribute("MY_CART_ITEMS", order);
		}

		return "redirect:../orders/cart";

	}
 
	@GetMapping("/emptycart")
	public String emptyCartid(HttpSession session) {

		session.removeAttribute("MY_CART_ITEMS");
		return "redirect:../orders/cart";

	}

}
