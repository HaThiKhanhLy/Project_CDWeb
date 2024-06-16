import React, { useState, useEffect } from 'react';
import { Col, Row, Table, Button, message } from 'antd';
import Sidebar from "../../components/SideBar";
import './ListUser.css';
import AdminNavbar from '../../components/AdminNavbar';

const ListUser = () => {
    const [users, setUsers] = useState([]);

    useEffect(() => {
        fetchUsers();
    }, []);

    const fetchUsers = async () => {
        try {
            const response = await fetch('/api/users/all');
            const data = await response.json();
            setUsers(data);
        } catch (error) {
            console.error('Error fetching users:', error);
        }
    };

    const updateUserStatus = async (id, currentStatus) => {
        try {
            const newStatus = currentStatus === 2 ? 1 : 2; // Toggle status
            const response = await fetch(`/api/users/update-status/${id}`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ status: newStatus }), // Send new status
            });

            if (response.ok) {
                message.success('User status updated successfully');
                fetchUsers(); // Refresh user list
            } else {
                message.error('Failed to update user status');
            }
        } catch (error) {
            console.error('Error updating user status:', error);
        }
    };

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
            dataIndex: 'userName',
            key: 'userName',
        },
        {
            title: 'Số điện thoại',
            dataIndex: 'phoneNumber',
            key: 'phoneNumber',
        },
        {
            title: 'Trạng thái',
            dataIndex: 'status',
            key: 'status',
            render: (text, record) => (
                <Button type="link" onClick={() => updateUserStatus(record.id, record.status)}
                className={text === 2 ? 'status-locked' : 'status-active'}>
                    {text === 2 ? 'Tài khoản bị khóa' : 'Tài khoản hoạt động'}
                </Button>
            ),
        },
        {
            title: 'Quyền',
            dataIndex: 'typeID',
            key: 'typeID',
            render: (text) => (text === 1 ? 'Khách hàng' : text === 2 ? 'Quản trị viên' : 'Unknown'),

        },
        
    ];

    return (
        <div>
            <div>
                <Row>
                    <Col lg={4} style={{ marginRight: 25, backgroundColor: '#9BCF53', height: '100vh' }}>
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
                        <Table dataSource={users} columns={columns} />
                    </Col>
                </Row>
            </div>
        </div>
    );
}

export default ListUser;
