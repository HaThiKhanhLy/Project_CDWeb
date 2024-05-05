import { Fragment, useEffect, useState } from "react";
import Banner from "../components/Banner/Banner";
import { Container } from "react-bootstrap";
import ShopList from "../components/ShopList";
import { products } from "../utils/products";
import { useParams } from "react-router-dom";
import ProductDetails from "../components/ProductDetails/ProductDetails";
import ProductReviews from "../components/ProductReviews/ProductReviews";
import useWindowScrollToTop from "../hooks/useWindowScrollToTop";
import axios from 'axios';


const Product = () => {
  const { id } = useParams();
  const [selectedProduct, setSelectedProduct] = useState(
    products.filter((item) => parseInt(item.id) === parseInt(id))[0]
  );
  // lấy products theo id
  const [currentProduct, setCurrentProduct] = useState(
    products.filter((item) => parseInt(item.id) === parseInt(id))[0]
  );
  
  
  const [relatedProducts, setRelatedProducts] = useState([]);
  useEffect(() => {
    window.scrollTo(0, 0);
    setSelectedProduct(
      products.filter((item) => parseInt(item.id) === parseInt(id))[0]
    );
    setRelatedProducts(
      products.filter(
        (item) =>
          item.category === selectedProduct?.category &&
          item.id !== selectedProduct?.id
      )
    );
  }, [selectedProduct, id]);

  useWindowScrollToTop();
  useEffect(() => {
    const fetchProduct = async () => {
      try {
        const response = await axios.get(`/api/products/${id}`);
        if (!response.data) {
          throw new Error("Failed to fetch product.");
        }
        setCurrentProduct(response.data);
      console.log(response.data);
      } catch (error) {
        console.error("Error fetching product:", error);
      }
    };

    fetchProduct();
  }, [id]);
  return (
    <Fragment>
      <Banner title={selectedProduct?.productName} />
      <ProductDetails selectedProduct={currentProduct}/>
      <ProductReviews selectedProduct={currentProduct} />
      <section className="related-products">
        <Container>
          <h3>You might also like</h3>
        </Container>
        <ShopList productItems={relatedProducts} />
      </section>
    </Fragment>
  );
};

export default Product;
