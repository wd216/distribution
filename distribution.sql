create database two;
use two;
create table consumer
(
    c_id nvarchar(10)primary key not null , 		-- 消费者的唯一标识	主键
    c_name nvarchar(10),			-- 姓名
    c_gender int	,		-- 性别
    c_user_group nvarchar(10),		-- 用户组ID	外键
    c_password nvarchar(10),		-- 密码
    c_phone nvarchar(20),-- 		联系电话
    c_date datetime		,-- 出生日期
    c_site nvarchar(50),-- 		地址
    c_notes nvarchar(50)-- 		备注
);-- 消费者

create table order
(
  order_id nvarchar(10)primary key 	not null,		-- 订单ID	主键
  order_type int   ,   -- 订单类型
  order_number nvarchar(10)	,		-- 交接单编号
  commodity_name nvarchar(20)	,		-- 货物名称
  cargo_weight int			      ,   -- 货物重量
  mail_people nvarchar(20)	,		-- 邮寄人
  mail_address nvarchar(50)	,		-- 邮寄地址
  place_receipt nvarchar(50)	,		-- 收货地址
  order_state int			      ,   -- 订单状态
  mail_people_phone nvarchar(20)	,		-- 邮寄人电话
  consignee nvarchar(20)	,		-- 收货人
  consignee_number nvarchar(20)	,		-- 收货人电话
  origin_city nvarchar(10)	,		-- 起始城市
  midpoint_city nvarchar(10)	,		-- 中点城市
  destination_city nvarchar(10)	,		-- 终点城市
  transport_price decimal(18,0)	,		-- 运送价格
  dispatching_price decimal(18,0)	,		-- 配送价格
  transport_price decimal(18,0)	,		-- 运输价格
  total_price nvarchar(10)	,		-- 总价格
  vehicle nvarchar(10)	,		-- 车辆
  notes nvarchar(50)		-- 备注
);-- 订单
create table vehicle
(
  vehicle_id nvarchar(10) primary key	not null,	-- 车辆编号	主键
  vehicle_model nvarchar(10),
  origin Nvarchar(20),			-- 产地
  route_number nvarchar(10),			-- 路线编号	外键
  date  datetime		,   -- 生产日期
  purchase_date datetime		,   -- 购买日期
  notes nvarchar(50)			-- 备注
);-- 车辆
create table city
(
 city_id nvarchar(10)primary key 	not null,	--	城市ID	主键
 city_name nvarchar(10),			-- 城市名称
 province_id nvarchar(10)			-- 省份ID	外键

);-- 城市
create table city_region
(
  region_id nvarchar(10)primary key 	not null,	--	区域ID	主键
  region_name nvarchar(50),		--	区域名称
  city_id nvarchar(50)		--	城市ID	外键

); -- 城市区域
create table admin
(
 admin_id nvarchar(10)primary key	not null,	-- 管理员编号	主键
 name nvarchar(10),-- 姓名
 gender int			    ,-- 性别
 user_group int			    ,-- 用户组编号	外键
 state int			    ,-- 状态
 city nvarchar(10),-- 所在城市
 address nvarchar(10),-- 地址
 password nvarchar(10),-- 密码
 phone nvarchar(20),-- 联系电话
 notes nvarchar(50)-- 备注
);-- 管理员
create table connect_from
(
  origin_city nvarchar(10) primary key 	not null, -- 起点城市 	主键
  destination_city nvarchar(10), -- 终点城市
  arrive_city nvarchar(10), -- 已到城市
  state int			    , -- 状态
  date datetime		, -- 生成时间
  notes nvarchar(50) -- 备注

);-- 交接单
create table line
(
 line_id nvarchar(10) primary key 	not null, -- 路线编号      	主键
 line_name nvarchar(10)		, --	路线名称
 begin_province_number nvarchar(10)		, --	起始省份编号	外键
 begin_city_number nvarchar(10)		, --	起始城市编号	外键
 midpoint_province_number nvarchar(10)		, --	中点省份编号	外键
 midpoint_city_number nvarchar(10)		, --	中点城市编号	外键
 destination_province_number nvarchar(10)		, --	终点省份编号	外键
 destination_city_number nvarchar(10)		, --	终点城市编号	外键
 ransport_price decimal(18,0)		, --	运输价格
 notes nvarchar(10)	--		备注

);-- 路线
create table dispatching
(
  d_id int primary key not null, --	配送点ID 	主键
  d_name nvarchar(10), -- 配送点名称
  province_id nvarchar(10), -- 省份ID	外键
  city_id nvarchar(10), -- 城市ID	外键
  admin_id nvarchar(10), -- 管理员ID	外键
  phone nvarchar(20), -- 联系电话
  address nvarchar(50), -- 地址
  notes nvarchar(50) -- 备注
);-- 配送点
create table  delivery_area
(
 da_id int primary key	not null ,	--	配送区域ID	主键
 da_name nvarchar(10),	--		配送区域名称
 da_price decimal(18,0),	--		配送价格
 city nvarchar(10),	--		所属城市ID	外键
 notes nvarchar(50)	--		备注
);-- 配送区域
create table province
(
  p_id nvarchar(10)primary key 	not null,	--	身份ID	主键
  p_name nvarchar(10) --	名称

);-- 省份
create table user_group(
 ug_number nvarchar(10)primary key 	not null,--		用户组编号	主键
 ug_name nvarchar(10)	not null,	--	用户组名称
 notes nvarchar(50)	-- 备注
);-- 用户组
