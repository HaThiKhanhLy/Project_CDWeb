import React, {useState} from 'react'
// import Signup from '../components/Login/Signup';
// import Login from '../components/Login/Login';
import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import 'react-tabs/style/react-tabs.css';
import { Container, Row, Col } from 'react-bootstrap';
import "./style.css"
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import axios from 'axios';


const Login = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const handleLogin = async () => {
        try {
            const response = await axios.post('http://localhost:8080/api/users/login', {
                email: email,
                password: password
            });
            console.log(response.data); 

            const userDataToSave = {
                ...response.data,
                password: undefined 
            };
            // Lưu thông tin người dùng vào Local Storage
            localStorage.setItem('userData', JSON.stringify(userDataToSave));        
            window.location.href = '/';
        } catch (error) {
            console.error('Error logging in:', error);
            window.alert('Email hoặc mật khẩu không chính xác');
        }
    };


    return (
        <div >

            <Row>
                <Col>
                    <Container className="d-flex justify-content-center align-items-center" style={{ minHeight: "100vh", maxWidth: "500px" }}>
                        <Form style={{ width: "80%" }} onSubmit={handleLogin}  >
                            <h3 className='mb-4'>Đăng nhập</h3>
                            <p>Nhập email và mật khẩu để đăng nhập</p>

                          
                            <Form.Group className="mb-3 " >

                                <Form.Control type="email" placeholder="Nhập email" className='border' value={email} onChange={(e) => setEmail(e.target.value)}  />
                            </Form.Group>
                          
                            <Form.Group className="mb-3 " controlId="formBasicPassword">

                                <Form.Control type="password" placeholder="Nhập mật khẩu" className='border' value={password} onChange={(e) => setPassword(e.target.value)} />
                            </Form.Group>
                            
                            <Form.Group className="mb-3 mt-3 text-center" controlId="formBasicRegister">
                                <p style={{ fontSize: '12px' }} className="text-default">
                                    Quên mật khẩu? 
                                </p>

                            </Form.Group>
                          
                           
                            <Button variant="primary" type="submit" style={{ backgroundImage: 'linear-gradient(310deg, rgb(155, 207, 83), rgb(65, 109, 25))', border: 'none', fontWeight: 'bold', width: "100%" }} >
                                Đăng Nhập
                            </Button>

                            <Form.Group className="mb-3 mt-3 text-center" controlId="formBasicRegister">
                                <p style={{ fontSize: '12px' }} className="text-default">
                                    Bạn chưa có tài khoản? <span className="text-hover" style={{color: '#416D19'}}>Đăng ký?</span>
                                </p>

                            </Form.Group>

                        </Form>
                    </Container>

                </Col>
                <Col>
                    <img style={{ width: '100%', height: '100%', padding: '20px', borderRadius: '30px', objectFit: 'cover' }} src='https://i.pinimg.com/564x/b3/75/de/b375deac66f5962350d4a30b4d0c0134.jpg' alt='' />

                </Col>
            </Row>


        </div>


    )
}

export default Login