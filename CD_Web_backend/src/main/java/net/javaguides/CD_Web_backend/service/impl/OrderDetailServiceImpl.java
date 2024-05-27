package net.javaguides.CD_Web_backend.service.impl;

import lombok.AllArgsConstructor;
import net.javaguides.CD_Web_backend.dto.OrderDetailDto;
import net.javaguides.CD_Web_backend.dto.ProductsDto;
import net.javaguides.CD_Web_backend.entity.OrderDetail;
import net.javaguides.CD_Web_backend.entity.Orders;
import net.javaguides.CD_Web_backend.entity.Products;
import net.javaguides.CD_Web_backend.mapper.OrderDetailMapper;
import net.javaguides.CD_Web_backend.mapper.ProductsMapper;
import net.javaguides.CD_Web_backend.repository.OrderDetailRepository;
import net.javaguides.CD_Web_backend.repository.OrdersRepository;
import net.javaguides.CD_Web_backend.repository.ProductsRepository;
import net.javaguides.CD_Web_backend.service.OrderDetailService;
import org.springframework.stereotype.Service;


@Service
@AllArgsConstructor
public class OrderDetailServiceImpl implements OrderDetailService {
    private OrderDetailRepository orderDetailRepository;
    private OrdersRepository ordersRepository;
    private ProductsRepository productsRepository;
    @Override
    public OrderDetailDto createOrderDetail(OrderDetailDto orderDetailDto) {
        Long orderId = orderDetailDto.getOrderId().getId();
        Long productId = orderDetailDto.getProductId().getId();
        Orders orders = ordersRepository.findById(orderId).orElse(null);
        Products products = productsRepository.findById(productId).orElse(null);
        if (orders == null || products == null) {
            return null;
        }
        OrderDetail orderDetail = OrderDetailMapper.mapToOrderDetai(orderDetailDto);
        orderDetail.setOrderId(orders);
        orderDetail.setProductId(products);
        OrderDetail saveOrderDetail = orderDetailRepository.save(orderDetail);
        updateProductQuantity(productId, orderDetailDto.getQuantity());
        return OrderDetailMapper.mapToOrderDetailDto(saveOrderDetail);
    }

    public ProductsDto updateProductQuantity(Long productId, long quantity) {
        Products product = productsRepository.findById(productId).orElse(null);
        product.setQuantity(product.getQuantity()- quantity);
        Products updatedProduct = productsRepository.save(product);
        return ProductsMapper.maptoProductsDto(updatedProduct);

    }
}
