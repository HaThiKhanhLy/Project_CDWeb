import { Col, Container, Row } from "react-bootstrap";
import FilterSelect from "../components/FilterSelect/FilterSelect";
import SearchBar from "../components/SeachBar/SearchBar";
import { Fragment} from "react";
import { products } from "../utils/products";
import ShopList from "../components/ShopList";
import Banner from "../components/Banner/Banner";
import useWindowScrollToTop from "../hooks/useWindowScrollToTop";
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import ProductCatalog from '../components/FilterSelect/ProductCatalog';

const Shop = () => {
  const [products, setProducts] = useState([]);
  const [category, setCategory] = useState([]);
  const [filterList, setFilterList] = useState(
    products.filter((item) => item.category === "sofa")
  );
  useWindowScrollToTop();
  const [isSmallScreen, setIsSmallScreen] = useState(window.innerWidth <= 1000);
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
        const response = await axios.get('http://localhost:8080/api/products');
        const productsWithImages = await Promise.all(response.data.map(async (product) => {
          const imageResponse = await axios.get(`http://localhost:8080/api/imgProducts/${product.id}`);
          // console.log(imageResponse.data); 
          // console.log(imageResponse.data[0].imgPath); 
          return { ...product, imageUrl : imageResponse.data[0].imgPath }; 
        }));
        setProducts(productsWithImages);
        // console.log(productsWithImages);
      } catch (error) {
        console.error(error);
      }
    };
    
    fetchProducts();

    const fetchCategory = async () => {
      try {
        const response = await axios.get('http://localhost:8080/api/category');
        setCategory(response.data);
        console.log(response.data);
      } catch (error) {
        // console.error(error);
      }
    };

    fetchCategory();

  }, []);
 
 
  
  return (
    <Fragment>
      <Banner title="Sản phẩm" />
      
      <section className="filter-bar">
        {/* <Container className="filter-bar-contianer"> */}
        <Container>
         
            {isSmallScreen ? (
            <>
              <Row className="justify-content-center">
                <Col>
                  <div >

                  <FilterSelect categorys={category} />
                
                  </div>
                </Col>
              </Row>
              <Row className="justify-content-center">
                <Col >
                  <div>

                  <ShopList productItems={products} />
                  </div>
                </Col>
              </Row>
            </>
          ) : (
            <Row className="justify-content-center">
              <Col md={3}>
                <div >
                <FilterSelect categorys={category} />
               
                </div>
              </Col>
              <Col md={9}>
                <div >
                <ShopList productItems={products} />
               
                </div>
              </Col>
            </Row>
          )}
        </Container>
        {/* <Container>
          <ShopList productItems={filterList} />
        </Container> */}
         
      </section>
    </Fragment>
  );
};

export default Shop;
