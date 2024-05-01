import React, { useState, useEffect } from 'react';
import Select from 'react-select';
import { products } from '../../utils/products';
import "./filterSelect.css";
import { RiTreeFill } from "react-icons/ri";
import { IoFilterCircle } from "react-icons/io5";
import numeral from 'numeral';
import Slider from 'rc-slider';
import 'rc-slider/assets/index.css';
import { FaMoneyBillAlt } from "react-icons/fa";



const FilterSelect = ({ categorys }) => {

  const [showCategories, setShowCategories] = useState(true);
  const [priceRange, setLocalPriceRange] = useState([0, 5000000]);
  const handlePriceChange = (value) => {
    setLocalPriceRange(value);
    // setPriceRange(value); // Truyền giá trị mới của thanh trượt giá lên component cha
  };

  useEffect(() => {
    const handleResize = () => {
      if (window.innerWidth < 1000) {
        setShowCategories(false);
      } else {
        setShowCategories(true);
      }
    };

    handleResize();

    window.addEventListener('resize', handleResize);

    return () => window.removeEventListener('resize', handleResize);
  }, []);

  const toggleCategories = () => {
    setShowCategories(!showCategories);
  };

  


  const formatPrice = (price) => {
    return numeral(price).format('0,0');
  };


  return (

    <div className="mb-3 mt-4">
      {showCategories ? (
        <>
          <h4 className="mb-4"><IoFilterCircle style={{ marginRight: '10px', cursor: 'pointer' }} onClick={toggleCategories} />Danh mục sản phẩm</h4>
          <ul className="list-unstyled fruite-categorie">
            {categorys && categorys.map((category) => (
              <li key={category.id}>
                <div className="d-flex justify-content-between fruite-name">
                  <a className="style-name mt-2 mp-2">
                    <RiTreeFill style={{ marginRight: '10px' }} />{category.name}
                  </a>
                </div>
              </li>
            ))}


          </ul>

          <div>
            <div className="mt-4">
              <h4><FaMoneyBillAlt style={{ marginRight: '10px', cursor: 'pointer' }} />Giá</h4>
            </div>
            <div style={{ padding: '15px' }}>
              <p>Giá: {formatPrice(priceRange[0])} - {formatPrice(priceRange[1])} đ</p>
              <div style={{ display: 'flex', alignItems: 'center' }}>
                {/* <FaMoneyBillWave size={20} style={{ marginRight: '10px' }} /> */}
                <Slider
                  min={0}
                  max={5000000}
                  value={priceRange}
                  onChange={handlePriceChange}
                  range
                  trackStyle={{ backgroundColor: '#9BCF53' }}
                  handleStyle={[{ borderColor: '#9BCF53', backgroundColor: '#416D19' }, { borderColor: '#9BCF53', backgroundColor: '#416D19' }]}
                />
              </div>
            </div>
          </div>
        </>
      ) : (
        <IoFilterCircle
          style={{ fontSize: '2rem', marginBottom: '1rem', cursor: 'pointer' }}
          onClick={toggleCategories}
        />
      )}


    </div>
  );
};

export default FilterSelect;
