package net.javaguides.CD_Web_backend.repository;

import net.javaguides.CD_Web_backend.entity.Discount;
import net.javaguides.CD_Web_backend.entity.Orders;
import net.javaguides.CD_Web_backend.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrdersRepository extends JpaRepository<Orders, Long> {
    Orders findByUserIdAndDiscountId(Users userId, Discount discountId);
}
