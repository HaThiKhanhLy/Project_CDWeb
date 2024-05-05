import React, { useState, useEffect, Fragment } from "react";
import { Col, Container, Row } from "react-bootstrap";
import axios from 'axios';
import Banner from "../components/Banner/Banner";
import FilterSelect from "../components/FilterSelect/FilterSelect";
import ShopList from "../components/ShopList";
import useWindowScrollToTop from "../hooks/useWindowScrollToTop";
import SearchBar from "../components/SeachBar/SearchBar";

const Shop = () => {
  const [products, setProducts] = useState([]);
  const [category, setCategory] = useState([]);
  const [filteredProducts, setFilteredProducts] = useState([]); // Thay đổi ở đây
  const [isSmallScreen, setIsSmallScreen] = useState(window.innerWidth <= 1000);
  const [filterList, setFilterList] = useState([]);
  useWindowScrollToTop();

  useEffect(() => {
    const handleWindowResize = () => {
      setIsSmallScreen(window.innerWidth <= 1000);
    };

    window.addEventListener('resize', handleWindowResize);

    return () => {
      window.removeEventListener('resize', handleWindowResize);
    };
  }, []);

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        const response = await axios.get('/api/products');
        const productsWithImages = await Promise.all(response.data.map(async (product) => {
          const imageResponse = await axios.get(`/api/imgProducts/${product.id}`);
          return { ...product, imageUrl : imageResponse.data[0].imgPath }; 
        }));
        setProducts(productsWithImages);
      } catch (error) {
        console.error(error);
      }
    };
    
    fetchProducts();

    const fetchCategory = async () => {
      try {
        const response = await axios.get('http://localhost:8080/api/category');
        setCategory(response.data);
      } catch (error) {
        console.error(error);
      }
    };

    fetchCategory();
  }, []);

  const handleFilterList = (filteredProducts) => {
    setFilteredProducts(filteredProducts);
  };

  return (
    <Fragment>
      <Banner title="Sản phẩm" />
      
      <section className="filter-bar">
        <Container>
          <Row className="justify-content-center my-4">
            <Col>
              <SearchBar setFilterList={handleFilterList} />
            </Col>
          </Row>
          {isSmallScreen ? (
            <>
              <Row className="justify-content-center">
                <Col>
                  <div>
                    <FilterSelect categorys={category} />
                  </div>
                </Col>
              </Row>
              <Row className="justify-content-center">
                <Col>
                  <div>
                    <ShopList productItems={filteredProducts.length > 0 ? filteredProducts : products} />
                  </div>
                </Col>
              </Row>
            </>
          ) : (
            <Row className="justify-content-center">
              <Col md={3}>
                <div>
                  <FilterSelect categorys={category} />
                </div>
              </Col>
              <Col md={9}>
                <div>
                  <ShopList productItems={filteredProducts.length > 0 ? filteredProducts : products} /> {/* Sử dụng filteredProducts thay vì products */}
                </div>
              </Col>
            </Row>
          )}
        </Container>
      </section>
    </Fragment>
  );
};

export default Shop;
