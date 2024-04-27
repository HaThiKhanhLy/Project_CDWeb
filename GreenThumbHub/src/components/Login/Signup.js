import React, { useState } from "react";
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import "./style.css"

function Signup() {
 



 
  return (
    <Form className="p-4 text-center">
            <Form.Group className="mb-3" >
            <Form.Control size="lg" type="text" placeholder="Large text" className="border" />
            </Form.Group>
            <Form.Group className="mb-3" controlId="formBasicPassword">
                <Form.Control size="lg" type="email" placeholder="Email" className="border" />
            </Form.Group>
            <Form.Group className="mb-3" controlId="formBasicPassword">
                <Form.Control size="lg" type="text" placeholder="Số điện thoại" className="border"/>
            </Form.Group>
            <Form.Group className="mb-3" controlId="formBasicPassword">
                <Form.Control size="lg" type="password" placeholder="Mật khẩu" className="border" />
            </Form.Group>



            <Button style={{ backgroundColor: '#416D19', border: '1px solid  #416D19' }} type="submit" size="lg">
                Đăng ký
            </Button>
            <Form.Group className="mb-3 mt-3" controlId="formBasicRegister">
                <p style={{ fontSize: '12px' }} className="text-default">
                    Bạn đã có tài khoản? <span className="text-hover">Đăng nhập?</span>
                </p>
              
            </Form.Group>
        </Form>
  );
}

export default Signup;
