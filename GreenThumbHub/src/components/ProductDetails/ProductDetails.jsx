import React, { useState,useEffect  } from "react";
import { Col, Container, Row } from "react-bootstrap";
import { useDispatch } from "react-redux";
import { toast } from "react-toastify";
import { addToCart } from "../../app/features/cart/cartSlice";
import "./product-details.css";
import Carousel from "react-multi-carousel";
import "react-multi-carousel/lib/styles.css";
import { FaFacebook, FaFacebookMessenger  } from "react-icons/fa";
import { useParams } from "react-router-dom";
import axios from 'axios';

const ProductDetails = ({ selectedProduct }) => {
  
  const dispatch = useDispatch();


 
  const [quantity, setQuantity] = useState(1);
  const [imgproduct, setImgProducts] = useState(null);
  const [productImages, setProductImages] = useState([]);

  const handleQuantityChange = (e) => {
    setQuantity(e.target.value);
  };

  const handelAdd = (selectedProduct, quantity) => {
    dispatch(addToCart({ product: selectedProduct, num: quantity }));
    toast.success("Product has been added to cart!");
  };
  useEffect(() => {
    const fetchProductImage = async () => {
      try {
        if (selectedProduct) {
          const imageResponse = await axios.get(`/api/imgProducts/${selectedProduct.id}`);
          // Kiểm tra xem có hình ảnh được trả về không
          if (imageResponse.data.length > 0) {
            const productWithImage = { ...selectedProduct, imageUrl: imageResponse.data[0].imgPath };
            setImgProducts(productWithImage);
          } else {
            // Nếu không có hình ảnh, bạn có thể xử lý tùy ý ở đây, ví dụ hiển thị một hình ảnh mặc định.
            console.log("No image found for the selected product.");
          }
        }
      } catch (error) {
        console.error("Error fetching product image:", error);
      }
    };
    
    fetchProductImage();
  }, [selectedProduct]);
  useEffect(() => {
  const fetchProductImages = async () => {
    try {
      if (selectedProduct) {
        const imageResponse = await axios.get(`/api/imgProducts/${selectedProduct.id}`);
        setProductImages(imageResponse.data);
      }
    } catch (error) {
      console.error("Error fetching product images:", error);
    }
  };
  
  fetchProductImages();
}, [selectedProduct]);

 

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



  return (
    <section className="product-page">
      <Container>
        <Row className="justify-content-center">
          <Col md={6}>
            <img loading="lazy" src={imgproduct?.imageUrl} alt="" />
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
                  src={imgproduct?.imageUrl}
                  alt=""
                 
                />
              </div>
              <div>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src={imgproduct?.imageUrl}
                  alt=""
                
                />
              </div>
              <div>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src={imgproduct?.imageUrl}
                  alt=""
                 
                />
              </div>
              <div>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src={imgproduct?.imageUrl}
                  alt=""
                  
                />
              </div>
            </Carousel>
          </Col>
          <Col md={6}>
            <h2>{selectedProduct.productName}</h2>
            <div className="rate">
              <div className="stars">
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
                <i className="fa fa-star"></i>
              </div>
              <span>Đánh giá: {selectedProduct?.avgRating} </span>
            </div>
            <div className="info">
              <span className="price">${selectedProduct?.price}</span>
              <span>Loại: {selectedProduct?.category.name}</span>
            </div>
            <p>{selectedProduct.detail}</p>
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
