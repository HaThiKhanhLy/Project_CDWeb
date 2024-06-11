import React from "react";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCashRegister, faChartLine, faCloudUploadAlt, faPlus, faRocket, faTasks, faUserShield } from '@fortawesome/free-solid-svg-icons';
import { Col, Row, Button, Dropdown, ButtonGroup } from '@themesberg/react-bootstrap';

import { CounterWidget, CircleChartWidget, BarChartWidget, TeamMembersWidget, ProgressTrackWidget, RankingWidget, SalesValueWidget, SalesValueWidgetPhone, AcquisitionWidget } from "../../components/Widgets";
import { PageVisitsTable } from "../../components/Tables";
import { trafficShares, totalOrders } from "../../data/charts";
import Sidebar from "../../components/SideBar";

const Dashboard = () => {
  return (
    <>
      <div className="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
        {/* Header content */}
      </div>

      <Row>
        <Col xs={12} md={3} lg={2} xl={2} className="mb-4">
          <Sidebar />
        </Col>
        <Col xs={12} md={9} lg={10} xl={10}>
          <Row>
            <Col xs={12} className="mb-4">
              <PageVisitsTable />
            </Col>

            <Col xs={12} lg={6} className="mb-4">
              <TeamMembersWidget />
            </Col>

            <Col xs={12} lg={6} className="mb-4">
              {/* Your main content */}
            </Col>
          </Row>
        </Col>
      </Row>
    </>
  );
};

export default Dashboard;
