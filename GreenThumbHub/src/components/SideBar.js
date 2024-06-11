import React from 'react';
import { useNavigate } from 'react-router-dom';
import { Nav } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faBox, faUser, faShoppingCart,faSignOutAlt  } from '@fortawesome/free-solid-svg-icons';
import '../components/SideBar.css';

const Sidebar = () => {
  const navigate = useNavigate();

  const handleLogout = () => {
    localStorage.removeItem('userData'); // Xóa dữ liệu người dùng khỏi localStorage
    navigate('/login'); // Chuyển hướng người dùng về trang đăng nhập
  };

  return (
    <Nav className="d-md-block bg-custom sidebar" activeKey="/dashboard">
      <div className="sidebar-sticky"></div>
      <Nav.Item>
        <Nav.Link as={Link} to="/dashboard/orders" className="text-white">
          <FontAwesomeIcon icon={faShoppingCart} className="me-2" /> 
          <Link to="/listOrderAdmin" style={{ textDecoration: 'none', color:'white' }}>Đơn hàng</Link>
        </Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link as={Link} to="/dashboard/products" className="text-white">
          <FontAwesomeIcon icon={faBox} className="me-2" /> 
          <Link to="/listProductsAdmin" style={{ textDecoration: 'none', color:'white' }}>Sản phẩm</Link>
        </Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link as={Link} to="/listUserAdmin" className="text-white">
          <FontAwesomeIcon icon={faUser} className="me-2" /> 
          <Link to="/listUserAdmin" style={{ textDecoration: 'none', color:'white' }}>Người dùng</Link>
        </Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link as={Link} to="/dashboard/users" className="text-white">
          <FontAwesomeIcon icon={faUser} className="me-2" /> Thống kê
        </Nav.Link>
      </Nav.Item>
      <Nav.Item>
        <Nav.Link onClick={handleLogout} className="text-white">
          <FontAwesomeIcon icon={faSignOutAlt} className="me-2" /> Đăng xuất
        </Nav.Link>
      </Nav.Item>
    </Nav>
  );
};

export default Sidebar;
