import React from "react";
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import "./style.css"

function Login() {
    return (
        <Form className="p-4 text-center">
            <Form.Group className="mb-3" controlId="formBasicEmail">
                <Form.Control size="lg" type="email" placeholder="Vui lòng nhập email của bạn" />
            </Form.Group>
            <Form.Group className="mb-3" controlId="formBasicPassword">
                <Form.Control size="lg" type="password" placeholder="Vui lòng nhập mật khẩu" />
            </Form.Group>


            <Button style={{ backgroundColor: '#416D19', border: '1px solid  #416D19' }} type="submit" size="lg">
                Đăng nhập
            </Button>
            <Form.Group className="mb-3 mt-3" controlId="formBasicRegister">
                <p style={{ fontSize: '12px' }} className="text-default">
                    Bạn chưa có tài khoản? <span className="text-hover">Đăng ký?</span>
                </p>
                <p style={{ fontSize: '12px' }} className="text-default">
                    Bạn quên mật khẩu? <span className="text-hover">Quên mật khẩu</span>
                </p>
            </Form.Group>
        </Form>
    );
}

export default Login;
