import React from 'react'
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';
import { Bs1CircleFill, Bs2CircleFill, Bs3CircleFill } from "react-icons/bs";
import { FcMoneyTransfer } from "react-icons/fc";

const Checkout = () => {
    return (
        <div className='mt-4' style={{ paddingTop: '30px', paddingBottom: '30px' }}>
            <Container className='mt-4'>
                <Row>
                    <Col xs={12} md={6}>
                        {/* <Form> */}
                        <h6><Bs1CircleFill /> Thông tin giao hàng</h6>
                        <Form.Group className="mb-3 mt-3" controlId="formBasicEmail">
                            <Form.Label>Họ và tên</Form.Label>
                            <Form.Control type="text" placeholder="nhập họ và tên" className='border' />
                            {/* <Form.Text className="text-muted">
                                We'll never share your email with anyone else.
                            </Form.Text> */}
                        </Form.Group>

                        <Row>
                            <Col xs={12} md={6}>
                                <Form.Group className="mb-3" controlId="formBasicEmail">

                                    <Form.Control type="email" placeholder="nhập email" className='border' />
                                </Form.Group>
                            </Col>
                            <Col xs={12} md={6}>
                                <Form.Group className="mb-3" controlId="formBasicPhone">

                                    <Form.Control type="text" placeholder="nhập số điện thoại" className='border' />
                                </Form.Group>
                            </Col>
                        </Row>

                        <Form.Group className="mb-3" controlId="formBasicEmail">

                            <Form.Control type="text" placeholder="nhập địa chỉ" className='border' />
                        </Form.Group>

                        <Row>
                            <Col xs={12} md={6}>
                                <Form.Group className="mb-3" controlId="formBasicEmail">
                                    <Form.Select aria-label="Default select example">
                                        <option>Chọn Tỉnh/Thành phố</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </Form.Select>
                                </Form.Group>
                            </Col>
                            <Col xs={12} md={6}>
                                <Form.Group className="mb-3" controlId="formBasicPhone">
                                    <Form.Select aria-label="Default select example">
                                        <option>Chọn Quận/Huyện</option>
                                        <option value="1">One</option>
                                        <option value="2">Two</option>
                                        <option value="3">Three</option>
                                    </Form.Select>
                                </Form.Group>
                            </Col>

                        </Row>

                        <Form.Group className="mb-3" controlId="exampleForm.ControlTextarea1">
                            <Form.Label>Ghi chú</Form.Label>
                            <Form.Control as="textarea" rows={3} />
                        </Form.Group>

                        <h6><Bs2CircleFill /> Phương thức thanh toán</h6>
                        <div className='border p-4 mb-4 mt-3'>
                            <Form.Check aria-label="option 1" label="Thanh toán khi giao hàng (COD)" className='mb-3' />
                            <Form.Check aria-label="option 2" label="Thanh toán bằng Paypal" />
                        </div>
                    </Col>

                    <Col xs={12} md={6}>
                        <h6><Bs3CircleFill /> Thông tin đơn hàng</h6>

                        <Row className='mt-3'>
                            <Col xs={2} md={2}>
                                <img src='https://i.pinimg.com/564x/04/04/22/0404225631528faf1d86472c7b0147d5.jpg' style={{ width: '150px', height: '100%', objectFit: 'cover' }}></img>
                            </Col>
                            <Col xs={16} md={10} className="d-flex  align-items-center justify-content-center">
                                <div className="text-center">
                                    <h6>Xương rồng trứng chim 3-5cm (bịch nhựa)</h6>
                                    <span>1 x 10.000đ</span>
                                </div>
                            </Col>
                        </Row>
                        <hr className="hr" />
                        <Form.Group className="mb-3" controlId="formBasicEmail">
                            <Row>
                                <Col>
                                    <Form.Control type="text" placeholder="Mã giảm giá" className='border' />
                                </Col>
                                <Col xs="auto">
                                    <Button style={{ backgroundColor: '#9BCF53', border: '1px solid #9BCF53', fontWeight: 'bold' }} type="submit">
                                        Áp dụng
                                    </Button>
                                </Col>
                            </Row>
                        </Form.Group>
                        <hr className="hr" />
                        <div className='d-flex justify-content-between'>
                            <span>Tạm tính</span>
                            <span>10.000đ</span>
                        </div>
                        <div className='d-flex justify-content-between mt-3'>
                            <span>Phí vận chuyển</span>
                            <span>10.000đ</span>
                        </div>
                        <div className='d-flex justify-content-between mt-3'>
                            <span>Giảm giá</span>
                            <span>10.000đ</span>
                        </div>
                        <hr className="hr" />
                        <div className='d-flex justify-content-between mt-3'>
                            <span>Tổng cổng</span>
                            <span style={{ fontSize: '25px' }}>10.000đ</span>
                        </div>

                    </Col>
                </Row>
            </Container>
        </div>


    )
}

export default Checkout