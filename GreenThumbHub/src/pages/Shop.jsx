import { Col, Container, Row } from "react-bootstrap";
import FilterSelect from "../components/FilterSelect/FilterSelect";
import SearchBar from "../components/SeachBar/SearchBar";
import { Fragment, useState } from "react";
import { products } from "../utils/products";
import ShopList from "../components/ShopList";
import Banner from "../components/Banner/Banner";
import useWindowScrollToTop from "../hooks/useWindowScrollToTop";
import { useEffect } from "react";

const Shop = () => {
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

                  <FilterSelect setFilterList={setFilterList} />
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
                <FilterSelect setFilterList={setFilterList} />
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
