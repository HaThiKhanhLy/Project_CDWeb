import React from 'react';
import { Col, Row, Table, Button } from 'antd';
import { Container } from 'react-bootstrap';
import { Link, Outlet } from 'react-router-dom';

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
            <Container className='mt-4 mb-4'>
                <Row>
                    <Col
                        xs={{ span: 24, order: 2 }}
                        sm={{ span: 24, order: 2 }}
                        md={{ span: 18, order: 1 }}
                        lg={{ span: 18, order: 1, push: 6 }}
                        style={{ backgroundColor: '#80808012' }}
                    >
                        <Table dataSource={dataSource} columns={columns} />
                    </Col>
                    <Col
                        xs={{ span: 24, order: 1 }}
                        sm={{ span: 24, order: 1 }}
                        md={{ span: 6, order: 2 }}
                        lg={{ span: 6, order: 2, pull: 18 }}
                    >
                        <span>sản phẩm</span>
                    </Col>
                </Row>
            </Container>
        </div>
    );
}

export default ListProducts;
