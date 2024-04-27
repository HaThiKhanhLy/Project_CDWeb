import React from 'react'
import Signup from '../components/Login/Signup';
import Login from '../components/Login/Login';
import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import 'react-tabs/style/react-tabs.css';
import { Container, Row, Col } from 'react-bootstrap';
import "./style.css"

const LoginUser = () => {


    return (
        <div className="background-image">
               <Container className='p-4'>
            <Row className="justify-content-center p-4" >
                <Col md={6} style={{backgroundColor: 'white'}} className='p-4'>
                    <Tabs>
                        <TabList  style={{
                            display: 'flex',
                            justifyContent: 'center'
                        }}>
                            <Tab><h5>Đăng nhập</h5></Tab>
                            <Tab><h5>Đăng ký</h5></Tab>
                        </TabList>

                        <TabPanel>
                            <h2><Login/></h2>
                        </TabPanel>
                        <TabPanel>
                            <h2><Signup/></h2>
                        </TabPanel>
                    </Tabs>
                </Col>
            </Row>
        </Container>
        </div>
     

    )
}

export default LoginUser