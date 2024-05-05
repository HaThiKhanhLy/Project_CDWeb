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

  const [productImages, setProductImages] = useState([]);
  const [selectedImage, setSelectedImage] = useState('');

  useEffect(() => {
    const fetchProductImage = async () => {
      try {
        if (selectedProduct) {
          const imageResponse = await axios.get(`/api/imgProducts/${selectedProduct.id}`);
          console.log(imageResponse.data);
          setProductImages(imageResponse.data);
          setSelectedImage(imageResponse.data[0].imgPath);
        }
      } catch (error) {
        console.error("Error fetching product image:", error);
      }
    };
    
    fetchProductImage();
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
            >
              {productImages?.map((productImage) => (
                 <div key={productImage.id}>
                <img
                  style={{ height: "110px", objectFit: "cover", padding: "5px" }}
                  loading="lazy"
                  src={productImage?.imgPath}
                  alt=""
                  onClick={(index, item) =>
                    handleImageClick(productImage?.imgPath)
                  }
                />
              </div> 
              ))} 
            
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
              <span>{selectedProduct?.avgRating} ratings</span>
            </div>
            <div className="info">
              <span className="price">${selectedProduct?.price}</span>

              <span>Danh mục: {selectedProduct?.category.name}</span>

            </div>
            <p>{selectedProduct.detail}</p>
            <input
              className="qty-input"
              type="number"
              placeholder="Qty"
              value={quantity}
             
            />
            <button
              aria-label="Add"
              type="submit"
              className="add"
            
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
