import { useState } from "react";
import { Container } from "react-bootstrap";
import "./product-review.css";

const ProductReviews = ({ selectedProduct }) => {
  const [listSelected, setListSelected] = useState("desc");
  return (
    <section className="product-reviews">
      <Container>
        <ul>
          <li
            style={{ color: listSelected === "desc" ? "black" : "#9c9b9b" }}
            onClick={() => setListSelected("detail")}
          >
            Chi tiết sản phẩm
          </li>
          <li
            style={{ color: listSelected === "rev" ? "black" : "#9c9b9b" }}
            onClick={() => setListSelected("rev")}
          >
            Đánh giá(2)
          </li>
        </ul>
        {listSelected === "detail" ? (
          <p>{selectedProduct.detail}</p>
        ) : (
          <div className="rates">
            
              <div className="rate-comment" >
                <span>Jhon Doe</span>
                <span>5 (rating)</span>
                <p>cây đẹp lắm nha mn</p>
              </div>
            
          </div>
        )}
      </Container>
    </section>
  );
};

export default ProductReviews;
