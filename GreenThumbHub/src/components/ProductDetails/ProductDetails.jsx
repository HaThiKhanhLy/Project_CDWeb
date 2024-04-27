import React, { useState } from "react";
import { Col, Container, Row } from "react-bootstrap";
import { useDispatch } from "react-redux";
import { toast } from "react-toastify";
import { addToCart } from "../../app/features/cart/cartSlice";
import "./product-details.css";
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import { FaFacebook, FaFacebookMessenger  } from "react-icons/fa";

const ProductDetails = ({ selectedProduct }) => {
  const dispatch = useDispatch();
  const [selectedImage, setSelectedImage] = useState(selectedProduct?.imgUrl);
  console.log(selectedImage);
  const [quantity, setQuantity] = useState(1);

  const handleQuantityChange = (e) => {
    setQuantity(e.target.value);
  };

  const handelAdd = (selectedProduct, quantity) => {
    dispatch(addToCart({ product: selectedProduct, num: quantity }));
    toast.success("Product has been added to cart!");
  };

  const responsive = {
    superLargeDesktop: {
      breakpoint: { max: 4000, min: 3000 },
      items: 5
    },
    desktop: {
      breakpoint: { max: 3000, min: 1024 },
      items: 3
    },
    tablet: {
      breakpoint: { max: 1024, min: 464 },
      items: 2
    },
    mobile: {
      breakpoint: { max: 464, min: 0 },
      items: 1
    }
  };

  const handleImageClick = (imageUrl) => {
    setSelectedImage(imageUrl);
  };

  return (
    <section className="product-page">
      <Container>
        <Row className="justify-content-center">
          <Col md={6}>
            <img loading="lazy" src={selectedImage} alt="" />
            <Carousel
              responsive={responsive}
              // onClickItem={(index, item) =>
              //   handleImageClick(item.props.children.props.src)
              // }
            >
              <div>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src="https://i.pinimg.com/564x/35/80/4a/35804a948f16bdfd9479b24127ac2523.jpg"
                  alt=""
                  onClick={(index, item) =>
                    handleImageClick("https://i.pinimg.com/564x/35/80/4a/35804a948f16bdfd9479b24127ac2523.jpg")
                  }
                />
              </div>
              <div>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src="https://i.pinimg.com/564x/31/dd/df/31dddf77f596e5e0236076c2daa2d4e4.jpg"
                  alt=""
                  onClick={(index, item) =>
                    handleImageClick("https://i.pinimg.com/564x/31/dd/df/31dddf77f596e5e0236076c2daa2d4e4.jpg")
                  }
                />
              </div>
              <div>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src="https://i.pinimg.com/564x/f6/6b/83/f66b836b41320d8941b59666b656c488.jpg"
                  alt=""
                  onClick={(index, item) =>
                    handleImageClick("https://i.pinimg.com/564x/f6/6b/83/f66b836b41320d8941b59666b656c488.jpg")
                  }
                />
              </div>
              <div>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src="https://i.pinimg.com/564x/f6/6b/83/f66b836b41320d8941b59666b656c488.jpg"
                  alt=""
                  onClick={(index, item) =>
                    handleImageClick("https://i.pinimg.com/564x/f6/6b/83/f66b836b41320d8941b59666b656c488.jpg")
                  }
                />
              </div>
            </Carousel>
          </Col>
          <Col md={6}>
            <h2>{selectedProduct?.productName}</h2>
            <div className="rate">
              <div className="stars">
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
              </div>
              <span>{selectedProduct?.avgRating} ratings</span>
            </div>
            <div className="info">
              <span className="price">${selectedProduct?.price}</span>
              <span>category: {selectedProduct?.category}</span>
            </div>
            <p>{selectedProduct?.shortDesc}</p>
            <input
              className="qty-input"
              type="number"
              placeholder="Qty"
              value={quantity}
              onChange={handleQuantityChange}
            />
            <button
              aria-label="Add"
              type="submit"
              className="add"
              onClick={() => handelAdd(selectedProduct, quantity)}
            >
              Thêm vào giỏ hàng
            </button>
            <hr className="hr" />
            <div className="info">
              <span >Chia sẻ : </span>
              <span style={{fontSize: '25px'}}><FaFacebook/> <FaFacebookMessenger /></span>
            </div>
            
          </Col>
        </Row>
      </Container>
    </section>
  );
};

export default ProductDetails;
