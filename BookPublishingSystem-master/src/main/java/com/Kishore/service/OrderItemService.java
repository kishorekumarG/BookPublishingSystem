package com.Kishore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Kishore.model.OrderItem;
import com.Kishore.repository.OrderItemRepository;

@Service
public class OrderItemService {

	@Autowired
	private OrderItemRepository orderItemRepository;
	
	public void save(OrderItem orderItem) {
		orderItemRepository.save(orderItem);
	}
}
