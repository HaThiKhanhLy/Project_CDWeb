import React from 'react'

import { Container } from 'react-bootstrap';
import Sidebar from "../../components/SideBar";

import { Col, Row, Table, Button } from 'antd';


const ListOrder = () => {
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
                    <Button type="link" href={`/edit/${record.id}`}>Chỉnh sửa</Button>
                    <Button type="link" danger style={{ marginLeft: 8 }}>Xóa</Button>
                </span>
            ),
        },
    ];
	return (
		<div>
			<Row>
        <Col xs={12} md={3} lg={2} xl={2} className="mb-4" >
          <Sidebar />
        </Col>
        <Col
                        xs={{ span: 24, order: 2 }}
                        sm={{ span: 24, order: 2 }}
                        md={{ span: 18, order: 1 }}
                        lg={{ span: 18, order: 1 }}
                        xl={{ span: 18, order: 1 }}
                        style={{ backgroundColor: '#80808012' }}
                        className='mt-4'
                    >
                        <Table dataSource={dataSource} columns={columns} />
                    </Col>
      </Row>
		</div>
	)
}

export default ListOrder