package net.javaguides.CD_Web_backend.repository;

import net.javaguides.CD_Web_backend.entity.OrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {
}
