import React, { useState } from 'react';
import { Container, Row, Col } from 'react-bootstrap';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import axios from 'axios';
import "./style.css";

const ForgotPass = () => {
    const [email, setEmail] = useState('');
    const [error, setError] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            // Gửi yêu cầu đổi mật khẩu
            const response = await axios.put('http://localhost:8080/api/users/reset-password', {
                email: email
            });

            console.log(response.data);
            window.alert('Đã gửi yêu cầu đổi mật khẩu thành công');
            // Điều hướng hoặc hiển thị thông báo khác tùy thuộc vào yêu cầu
        } catch (error) {
            console.error('Error requesting password reset:', error);
            if (error.response && error.response.data) {
                setError(error.response.data);
            } else {
                setError('Có lỗi xảy ra khi gửi yêu cầu đổi mật khẩu');
            }
        }
    };

    return (
        <div>
            <Row>
                <Col>
                    <Container className="d-flex justify-content-center align-items-center" style={{ minHeight: "100vh", maxWidth: "500px" }}>
                        <Form style={{ width: "80%" }} onSubmit={handleSubmit}>
                            <h3 className='mb-4'>Quên mật khẩu</h3>
                            <p>Nhập email của bạn để đặt lại mật khẩu</p>

                            <Form.Group className="mb-3">
                                <Form.Control 
                                    type="email" 
                                    placeholder="Nhập email của bạn" 
                                    className='border' 
                                    value={email} 
                                    onChange={(e) => setEmail(e.target.value)} 
                                    required 
                                />
                            </Form.Group>

                            {/* Hiển thị thông báo lỗi */}
                            {error && <p style={{ color: 'red' }}>{error}</p>}

                            <Button 
                                variant="primary" 
                                type="submit" 
                                style={{ backgroundImage: 'linear-gradient(310deg, rgb(155, 207, 83), rgb(65, 109, 25))', border: 'none', fontWeight: 'bold', width: "100%" }}
                            >
                                Gửi Yêu Cầu
                            </Button>
                        </Form>
                    </Container>
                </Col>
                <Col>
                    <img 
                        style={{ width: '100%', height: '100%', padding: '20px', borderRadius: '30px', objectFit: 'cover' }} 
                        src='https://i.pinimg.com/564x/b3/75/de/b375deac66f5962350d4a30b4d0c0134.jpg' 
                        alt='' 
                    />
                </Col>
            </Row>
        </div>
    );
}

export default ForgotPass;
