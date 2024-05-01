package net.javaguides.CD_Web_backend.repository;

import net.javaguides.CD_Web_backend.entity.Products;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductsRepository extends JpaRepository<Products, Long> {
}
