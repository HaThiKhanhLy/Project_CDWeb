import { Col } from "react-bootstrap";
import "./product-card.css";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { useDispatch } from "react-redux";
import { addToCart } from "../../app/features/cart/cartSlice";

const ProductCard = ({ title, productItem }) => {
  const dispatch = useDispatch();
  const router = useNavigate();
  const handelClick = () => {
    router(`/shop/${productItem.id}`);
  };
  const handelAdd = (productItem) => {
    dispatch(addToCart({ product: productItem, num: 1 }));
    toast.success("Product has been added to cart!");
  };

  const handleMouseEnter = (event) => {
    event.target.classList.add('hovered');
};

const handleMouseLeave = (event) => {
    event.target.classList.remove('hovered');
};
  return (
    <Col md={3} sm={5} xs={10} className="product mtop">
      {title === "Sản phẩm giảm giá" ? (
        <span className="discount">{productItem.discount}% Off</span>
      ) : null}
      <img
        loading="lazy"
        onClick={() => handelClick()}
        src={productItem.imgUrl}
        alt=""
      />
      <div className="product-like">
        <ion-icon name="heart-outline"></ion-icon>
      </div>
      <div className="product-details">
        <h3 onClick={() => handelClick()}>{productItem.productName}</h3>
        <div className="rate">
          <i className="fa fa-star"></i>
          <i className="fa fa-star"></i>
          <i className="fa fa-star"></i>
          <i className="fa fa-star"></i>
          <i className="fa fa-star"></i>
        </div>
        <div className="price">
          <h4>${productItem.price}</h4>
          <button
            aria-label="Add"
            type="submit"
            className="add"
            onClick={() => handelAdd(productItem)}
          >
            <ion-icon name="add"></ion-icon>
            
          </button>
        </div>

        {/* <div className="d-flex justify-content-between flex-lg-wrap">
          <p className=" text-dark fs-5 fw-bold mb-0">${productItem.price}</p>
          <a href="#" className="add btn border border-secondary rounded-pill px-3" 
           onClick={() => handelAdd(productItem)}
           onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave} style={{color: '#416D19'}}><i className="fa fa-shopping-bag me-2" style={{color: '#416D19'}}></i> Add to cart</a>
        </div> */}
      </div>

    </Col>

  );
};

export default ProductCard;
