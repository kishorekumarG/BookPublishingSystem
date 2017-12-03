package com.Kishore.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Kishore.model.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Integer> {

}
