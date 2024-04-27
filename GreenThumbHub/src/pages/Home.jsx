import { Fragment } from "react";
import Wrapper from "../components/wrapper/Wrapper";
import Section from "../components/Section";
import { products, discoutProducts } from "../utils/products";
import SliderHome from "../components/Slider";
import useWindowScrollToTop from "../hooks/useWindowScrollToTop";
import Featurs from "../components/Featurs/Featurs";
import Project from "../components/Project/Project";

const Home = () => {
  const newArrivalData = products.filter(
    (item) => item.category === "mobile" || item.category === "wireless"
  );
  const bestSales = products.filter((item) => item.category === "sofa");
  useWindowScrollToTop();
  return (
    <Fragment>
      <SliderHome />
      <Wrapper />
      <Section
        title="Sản phẩm giảm giá"
        bgColor="#f6f9fc"
        productItems={discoutProducts}
      />
      <Featurs />
      <Section
        title="Sản phẩm mới"
        bgColor="white"
        productItems={discoutProducts}
      />
      {/* <Section title="Best Sales" bgColor="#f6f9fc" productItems={bestSales} /> */} 
      <Project/>
    </Fragment>
  );
};

export default Home;
