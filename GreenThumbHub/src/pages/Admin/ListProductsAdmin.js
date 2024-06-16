import React from 'react';

import { Container } from 'react-bootstrap';
import { Link, Outlet } from 'react-router-dom';
import Sidebar from "../../components/SideBar";
import { Col, Row, Table, Button } from 'antd';
import AdminNavbar from '../../components/AdminNavbar';

const ListProducts = () => {
    const dataSource = [
        {
            key: '1',
            id: '1',
            email: 'example1@example.com',
            fullName: 'John Doe',
            phoneNumber: '123456789',
        },
        {
            key: '2',
            id: '2',
            email: 'example2@example.com',
            fullName: 'Jane Doe',
            phoneNumber: '987654321',
        },
        // Add more data as needed
    ];

    const columns = [
        {
            title: 'Mã ID',
            dataIndex: 'id',
            key: 'id',
        },
        {
            title: 'Email',
            dataIndex: 'email',
            key: 'email',
        },
        {
            title: 'Họ Tên',
            dataIndex: 'fullName',
            key: 'fullName',
        },
        {
            title: 'Số điện thoại',
            dataIndex: 'phoneNumber',
            key: 'phoneNumber',
        },
        {
            title: 'Hành động',
            key: 'action',
            render: (text, record) => (
                <span>
                    <Link to={`/edit/${record.id}`}>Chỉnh sửa</Link>
                    <Button danger style={{ marginLeft: 8 }}>Xóa</Button>
                </span>
            ),
        },
    ];

    return (
        <div>
            <Row>
                <Col lg={4} style={{ marginRight: 25, background: '#9BCF53', height: '100vh' }}>
                    <Sidebar />
                </Col>
                <Col
                    xs={{ span: 24, order: 2 }}
                    sm={{ span: 24, order: 2 }}
                    md={{ span: 18, order: 1 }}
                    lg={{ span: 18, order: 1 }}
                    xl={{ span: 18, order: 1 }}
                    className='mt-4'
                >
                    <AdminNavbar />

                </Col>
            </Row>
        </div>
    );
}

export default ListProducts;
