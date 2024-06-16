import React from 'react';
import { AntDesignOutlined, UserOutlined } from '@ant-design/icons';
import { Avatar, Divider, Tooltip } from 'antd';
import { AudioOutlined } from '@ant-design/icons';
import { Input, Space } from 'antd';
const { Search } = Input;

const AdminNavbar = () => {
	const onSearch = (value, _e, info) => console.log(info?.source, value);
  return (
	<div>
		

		  <div style={{ height: '80px', display: 'flex', justifyContent: 'flex-end' }}>
		  <Search
			  placeholder="input search text"
			  onSearch={onSearch}
				  allowClear
			  style={{
				  width: 200, marginRight: '20px',
			  }}
		  />
		  <Avatar.Group>
			  <Avatar src="https://api.dicebear.com/7.x/miniavs/svg?seed=1" />
			  <a href="https://ant.design">
				  <Avatar
					  style={{
						  backgroundColor: '#f56a00',
					  }}
				  >
					  K
				  </Avatar>
			  </a>
			  <Tooltip title="Ant User" placement="top">
				  <Avatar
					  style={{
						  backgroundColor: '#87d068',
					  }}
					  icon={<UserOutlined />}
				  />
			  </Tooltip>
			  <Avatar
				  style={{
					  backgroundColor: '#1677ff',
				  }}
				  icon={<AntDesignOutlined />}
			  />
		  </Avatar.Group>
	</div>
	</div>
	
  )
}

export default AdminNavbar