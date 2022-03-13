# CRM（客户关系管理系统）

## 后端架构

<img src="https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-16 15:37:33.png" style="zoom:50%;" />

## 说明

### 日期与时间

日期与时间格式统一使用: **yyyy-MM-dd HH:mm:ss**格式

### 返回值格式

除测试接口外，所有请求返回值格式为:

```json
{
    "status": 200,
    "result": {},
    "timestamp": 1645016913703,
    "error": "error message" // 可选
}
```

其中，status为状态码，分为:

```json
RESPONSE_OK: 200 // 正常响应
RESPONSE_ERROR: 500 // 错误响应
```

error为异常信息，当出现异常时才会被选用。

###  参数选项

**[xxx]**参数可选

**{xxx}**参数必选

**当只有一个参数时，默认为必选参数，当多个参数时，被标注为必选参数的为必选参数，其余皆为可选参数**

## 测试模块

### 项目启动测试接口

#### 描述

测试接口，测试项目是否启动成功

#### URI

GET **/test/access**

#### 参数

无参数

#### 响应数据

```json
{
    "msg": "ok",
    "hello": "项目启动成功~",
    "status": 200,
    "timestamp": "2022-02-16 21:46:21"
}
```

注：除测试接口timestamp时间戳使用格式化时间，其余响应时间皆为系统时间

### 数据初始化接口

#### 描述

调用该接口，初始化所有需要的数据

#### URI

GET **/test/init**

#### 参数

无参数

#### 响应数据

```json
{
    "op2": "insert tbl_activity....success!",
    "op1": "truncate all table....success!",
    "res": "all operator completed...",
    "op4": "insert tbl_clue_activity_relation....success!",
    "op3": "insert tbl_clue....success!",
    "op6": "insert tbl_contacts....success!",
    "op5": "insert tbl_customer....success!",
    "op8": "insert tbl_tran....success!",
    "op7": "insert tbl_contacts_activity_relation....success!",
    "activity_total": 10,
    "status": 200
}
```

## 用户模块

### 登录

URI：

```
POST /user/login
```

参数：

```
loginAct : 登录账号
loginPwd ： 登录密码
```

响应数据：

```json
{
    "result": {
        "id": 1,
        "uuid": "asdfgh",
        "loginAct": "zs",
        "name": "张三",
        "loginPwd": null,
        "email": "123@qq.com",
        "expireTime": "2023-12-31 18:08",
        "lockState": "1",
        "allowIps": "127.0.0.1, 192.168.1.1",
        "createTime": null,
        "createBy": null,
        "editTime": null,
        "editBy": null
    },
    "status": 200,
    "timestamp": 1645269843315
}
```



### 修改密码

example：

```
127.0.0.1:8080/user/editPwd?oldPwd=123&newPwd=456&loginAct=zs
```

URI：

```
POST /user/editPwd
```

参数：

```
oldPwd ： 旧密码
newPwd ： 新密码
loginAct ： 当前帐号
```

响应数据：

```json
{
    "result": "修改成功",
    "status": 200,
    "timestamp": 1645269885911
}
```



### 获取用户信息

example：

```
127.0.0.1:8080/user/zs
```

URI：

```
GET /user/{loginAct}
```

参数：

```
loginAct ： 登陆账号
```

响应数据：

```json
{
    "result": {
        "id": 1,
        "uuid": "asdfgh",
        "loginAct": "zs",
        "name": "张三",
        "loginPwd": null,
        "email": "123@qq.com",
        "expireTime": "2023-12-31 18:08",
        "lockState": null,
        "allowIps": "127.0.0.1, 192.168.1.1",
        "createTime": null,
        "createBy": null,
        "editTime": null,
        "editBy": null
    },
    "status": 200,
    "timestamp": 1645269932121
}
```

### 获取全部所有者

URI：

```
GET /user/owner/all
```

参数：

```
无
```

响应格式：

```json
[
    {
        "id": 1,
        "uuid": "asdfgh",
        "name": "张三"
    },
    {
        "id": 2,
        "uuid": "admin1",
        "name": "尼禄"
    }
]
```

### 退出登录

URI:

```
GET /exit
```

参数:

```
uuid:退出登陆的用户uuid
```

响应结果:

```json
{
    "result": "exit success!",
    "status": 200,
    "timestamp": 1647162087625
}
```

### 创建账号

URI:

```
POST /user/insert
```

参数:

```
loginAct:被注册账户
loginPwd:被注册账号的密码
email:邮箱
expireTime:过期时间
lockState:锁定状态
allowIps:允许访问的ip地址
uuid:当前账号的uuid,用来校验权限
```

响应结果:

```json
{
    "result": "账号创建成功!",
    "status": 200,
    "timestamp": 1647162426903
}
```

### 修改用户信息

URI:

```
POST /user/edit
```

参数:

```
name:姓名
email:邮箱
expireTime:过期时间
lockState:锁定状态
allowIps:允许访问的地址
editBy:当前操作用户
```

响应结果:

```json
{
    "result": "修改成功!",
    "status": 200,
    "timestamp": 1647162426903
}
```

### 删除用户

URI:

```
POST /user/delete
```

参数:

```
ids:被删除用户id,可以批量删除
```

响应结果:

```json
{
    "result": "delete success!",
    "status": 200,
    "timestamp": 1647162426903
}
```

### 分页

URI:

```
POST /user/pageList
```

参数:

```
pageNo:页数
pageSize:每页数据条数
```

响应结果:

```json
{
    "result": {
        "total": 3,
        "dataList": [
            {
                "id": 1,
                "uuid": "asdfgh",
                "loginAct": "zs",
                "name": "张三",
                "loginPwd": null,
                "email": "123@qq.com",
                "expireTime": "2023-12-31 18:08",
                "lockState": "1",
                "allowIps": "127.0.0.1, 192.168.1.1",
                "createTime": null,
                "createBy": null,
                "editTime": null,
                "editBy": null
            },
            {
                "id": 2,
                "uuid": "admin1",
                "loginAct": "nero",
                "name": "尼禄",
                "loginPwd": null,
                "email": "456@qq.com",
                "expireTime": "2099-12-31 18:08",
                "lockState": "1",
                "allowIps": "*.*.*.*",
                "createTime": null,
                "createBy": null,
                "editTime": null,
                "editBy": null
            }
        ]
    },
    "status": 200,
    "timestamp": 1647162611770
}
```





















## 市场活动模块

### 数据分页展示/模糊查询

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 17:44:45.png)

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:16:15.png)

example：

```
127.0.0.1:8080/activity/pageList?pageNo=1&pageSize=2
```

URI：

```
POST /activity/pageList
```

参数：

```
pageNo：必选参数，当前页码，必须大于等于1
pageSize：必选参数，每页展示数据条数，必须大于等于1
owner：市场活动所有者，可选
name：市场活动名称，可选
startDate：市场活动开始日期，可选
endDate：市场活动结束日期，可选
```

响应数据：

```json
{
    "result": {
        "total": 10,
        "dataList": [
            {
                "id": 1,
                "name": "发传单0",
                "owner": "张三",
                "startDate": "2022-02-19 17:24:52",
                "endDate": "2022-02-19 17:24:52"
            },
            {
                "id": 2,
                "name": "发传单1",
                "owner": "张三",
                "startDate": "2022-02-19 17:24:52",
                "endDate": "2022-02-19 17:24:52"
            }
        ]
    },
    "status": 200,
    "timestamp": 1645270047219
}
```

### 新增数据

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 17:44:27.png)

example：

```
127.0.0.1:8080/activity/insert?owner=asdfgh&name=打广告&startDate=2022-02-17&endDate=2022-02-27&cost=10000&description=打广告&createBy=asdfgh
```

URI：

```
POST /activity/insert
```

参数：

```
id // 主键，自动生成，自增
owner // 所有者，传入用户uuid
name // 市场活动名称
startDate // 市场活动开始日期
endDate // 市场活动结束日期
cost // 市场活动花费（字符串类型）
description // 描述
createTime // 创建时间，系统自动生成
createBy // 创建人，当前登录用户uuid
```

响应数据：

```json
{
    "result": "success",
    "status": 200,
    "timestamp": 1645270089837
}
```

### 修改数据

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 17:45:00.png)

example：

```
127.0.0.1:8080/activity/edit?id=11&cost=5000
```

URI：

```
POST /activity/edit
```

参数：

```
id // 必选参数，市场活动id
-----------以下是可选参数------------
owner // 所有者，传入用户uuid
name // 市场活动名称
startDate // 市场活动开始日期
endDate // 市场活动结束日期
cost // 市场活动花费（字符串类型）
description // 描述
editTime // 修改时间，系统自动生成
editBy // 修改人，当前登录用户uuid
```

响应数据：

```json
{
    "result": "success",
    "status": 200,
    "timestamp": 1645270137111
}
```



### 删除单条数据

example:

```
127.0.0.1:8080/activity/delete?id=11
```

URI：

```
POST /activity/delete/{id}
```

参数：

```
id：市场活动id
```

响应数据：

```json
{
    "result": "delete success",
    "status": 200,
    "timestamp": 1645270191665
}
```



### 批量删除数据

example:

```
127.0.0.1:8080/activity/delete/many?ids=1&ids=2&ids=3
```

URI：

```
POST /activity/delete/many
```

参数：

```
ids：被删除id集合，至少一个
```

响应数据：

```json
{
    "result": "all delete success",
    "status": 200,
    "timestamp": 1645270227124
}
```



### 获取单条数据详细信息

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 17:49:10.png)

URI：

```
GET /activity/{id}
```

参数：

```
id：市场活动id
```

响应数据：

```json
{
    "result": {
        "id": "4",
        "owner": "asdfgh",
        "name": "发传单3",
        "startDate": "2022-02-19 17:24:52",
        "endDate": "2022-02-19 17:24:52",
        "cost": "3000",
        "description": "发传单3",
        "createTime": "2022-02-19 17:24:52",
        "createBy": "asdfgh",
        "editTime": null,
        "editBy": null
    },
    "status": 200,
    "timestamp": 1645270240531
}
```



### 获取全部数据

example：

```
127.0.0.1:8080/activity/all
```

URI：

```
GET /activity/all
```

参数：

```
无
```

响应数据：

```json
{
    "result": [
        {
            "id": 1,
            "name": "发传单0",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 2,
            "name": "发传单1",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 3,
            "name": "发传单2",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 4,
            "name": "发传单3",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 5,
            "name": "发传单4",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 6,
            "name": "发传单5",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 7,
            "name": "发传单6",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 8,
            "name": "发传单7",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 9,
            "name": "发传单8",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        },
        {
            "id": 10,
            "name": "发传单9",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        }
    ],
    "status": 200,
    "timestamp": 1645270010733
}
```



## 线索模块（/clue）

### 新增数据

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 17:57:53.png)

example:

```
127.0.0.1:8080/clue/insert?fullname=李四&appellation=女士&owner=asdfgh&company=京东&email=11@qq.com&phone=123&website=www.jd.com&mphone=213&state=已联系&source=广告&createBy=asdfgh&createTime=2022-02-17 21:22:50&description=111&contactSummary=111&nextContactTime=2022-02-17 21:22:50&address=2222&job=CEO
```

URI：

```
POST /insert
```

参数：

```
id	\\ 必须参数，自增主键，系统自动生成
fullname	\\ 线索名称
appellation	\\ 称呼
owner	\\ 所有者，用户uuid
company	\\ 公司
job	\\ 工作
email	\\ 邮箱
phone	\\ 电话
website	\\ 网站
mphone	\\ 公司座机
state	\\ 状态
source	\\ 线索来源
createBy	\\ 创建人 uuid
createTime	\\ 创建时间，自动生成
description	\\ 描述
contactSummary	\\ 联系总结
nextContactTime	\\ 下次联系时间
address	\\ 地址
```

响应数据：

```json
{
    "result": "insert success",
    "status": 200,
    "timestamp": 1645270277080
}
```



### 修改数据

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 17:58:24.png)

example:

```
127.0.0.1:8080/clue/edit?id=4&fullname=王五
```

URI：

```
/POST /edit
```



参数：

```
id	\\ 必须参数，自增主键，系统自动生成
fullname	\\ 线索名称
appellation	\\ 称呼
owner	\\ 所有者，用户uuid
company	\\ 公司
job	\\ 工作
email	\\ 邮箱
phone	\\ 电话
website	\\ 网站
mphone	\\ 公司座机
state	\\ 状态
source	\\ 线索来源
editBy	\\ 修改人 uuid
editTime	\\ 修改时间，自动生成
description	\\ 描述
contactSummary	\\ 联系总结
nextContactTime	\\ 下次联系时间
address	\\ 地址
```

响应数据：

```json
{
    "result": "edit success",
    "status": 200,
    "timestamp": 1645270345102
}
```

### 删除单条

example:

```
127.0.0.1:8080/clue/delete?id=11
```

URI：

```
POST /delete
```

参数：

```
id：线索id
```

响应数据：

```json
{
    "result": "delete success",
    "status": 200,
    "timestamp": 1645270375221
}
```

### 批量删除

example:

```
127.0.0.1:8080/clue/delete/many?ids=1&ids=2&ids=3
```

URI：

```
POST /delete/many
```

参数：

```
ids：线索id的集合
```

响应数据：

```json
{
    "result": "delete all success",
    "status": 200,
    "timestamp": 1645270417155
}
```

### 分页展示/模糊查询

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:00:26.png)

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:16:37.png)

example:

```
127.0.0.1:8080/clue/pageList?pageNo=1&pageSize=2
```

URI：

```
POST /pageList
```

参数：

```
pageNo	// 页码，必选参数，>=1
pageSize	// 每页展示数据个数，必选参数，>=1
owner	// 所有者，uuid
fullname	// 名称
company	// 公司
mphone	// 座机
phone	// 电话
state	// 状态
source	// 来源
```

响应数据：

```json
{
    "result": {
        "total": 7,
        "dataList": [
            {
                "id": 4,
                "fullname": "王五",
                "appellation": "先生",
                "company": "公司3",
                "mphone": "030-xxxxxx",
                "phone": "3xxxxxxxx",
                "source": "广告",
                "owner": "张三",
                "state": "联系中"
            },
            {
                "id": 5,
                "fullname": "线索4",
                "appellation": "先生",
                "company": "公司4",
                "mphone": "040-xxxxxx",
                "phone": "4xxxxxxxx",
                "source": "广告",
                "owner": "张三",
                "state": "联系中"
            }
        ]
    },
    "status": 200,
    "timestamp": 1645270438804
}
```

### 获取详细信息

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:04:04.png)

example:

```json
127.0.0.1:8080/clue/5
```

URI：

```
GET /{id}
```

参数：

```
id：线索id
```

响应数据：

```json
{
    "result": {
        "id": 5,
        "fullname": "线索4",
        "appellation": "先生",
        "owner": "asdfgh",
        "company": "公司4",
        "job": "CTO",
        "email": "4@qq.com",
        "phone": "4xxxxxxxx",
        "website": "www.4.com",
        "mphone": "040-xxxxxx",
        "state": "联系中",
        "source": "广告",
        "createBy": "asdfgh",
        "createTime": "2022-02-19 17:24:52",
        "editBy": null,
        "editTime": null,
        "description": "描述4",
        "contactSummary": "联系纪要4",
        "nextContactTime": "2022-02-19 17:24:52",
        "address": "地区4"
    },
    "status": 200,
    "timestamp": 1645270474777
}
```

### 获取与该线索相关的市场活动

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:04:33.png)

example:

```
127.0.0.1:8080/clue/activity/5
```

URI：

```
GET /activity/{id}
```

参数：

```
id：线索id
```

响应数据：

```json
{
    "result": [
        {
            "id": 6,
            "name": "发传单5",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        }
    ],
    "status": 200,
    "timestamp": 1645270536602
}
```

### 创建与市场活动的关联

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:05:39.png)

example:

```
127.0.0.1:8080/clue/connect?aids=5&aids=6&aids=7&clueId=4
```

URI：

```
POST /connect
```

参数：

```
aids：市场活动id集合
clueId：线索id
```

响应数据：

```json
{
    "result": "connect success",
    "status": 200,
    "timestamp": 1645270568232
}
```

### 获取线索总数
URI：

```
GET /total
```

参数：

```
无
```

响应数据：

```json
{
    "result": {
        "total": 7
    },
    "status": 200,
    "timestamp": 1645270628156
}
```

### 将线索转换为【联系人】、【客户】、【交易】

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:08:42.png)

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:08:52.png)

example1:

```
127.0.0.1:8080/clue/convert/6?createTran=false
```

example2:

```
127.0.0.1:8080/clue/convert/9?createTran=true&money=5000&name=交易999&expectedDate=2022-10-10&stage=需求分析&activityId=10
```

URI：

```
POST /convert/{id}
```

参数：

```
id：线索id，必选参数
flag：boolean值，是否同时创建交易，必选参数
money：交易金额
name：交易名称
exceptedDate：期待成交日期
stage：交易状态
activityId：市场活动id
```

响应数据：

```json
{
    "result": "convert success!",
    "status": 200,
    "timestamp": 1645270695174
}
```

## 顾客模块（/customer）

### 新增顾客

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:16:55.png)

example:

```
127.0.0.1:8080/customer/insert?owner=asfdgh&name=动力节点&website=www.bjpowernode.com&mphone=111111&createBy=asdfgh&createTime=2022-02-18 14:00:00&contactSummary=22222&nextContactTime=2022-02-20&description=3333333&address=4444444
```

URI：

```
POST /insert
```

参数：

```
id	// 自增主键，系统生成，必选参数
owner	// 所有者，uuid
name	// 名称，线索的公司名称
website	// 网站
mphone	// 座机
createBy	// 创建者，uuid
createTime	// 创建时间，自动生成
contactSummary	// 联系摘要
nextContactTime	// 下次联系时间
description	// 描述
address	// 地址

```

响应数据：

```json
{
    "result": "insert success",
    "status": 200,
    "timestamp": 1645270957693
}
```

### 修改顾客

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:17:08.png)

example:

```
127.0.0.1:8080/customer/edit?id=13&address=北京大兴区
```

URI：

```
POST /edit
```

参数：

```
id	// 顾客id，必选参数
owner	// 所有者，uuid
name	// 名称，线索的公司名称
website	// 网站
mphone	// 座机
editBy	// 修改者，uuid
editTime	// 修改时间，自动生成
contactSummary	// 联系摘要
nextContactTime	// 下次联系时间
description	// 描述
address	// 地址
```

响应数据：

```json
{
    "result": "edit success",
    "status": 200,
    "timestamp": 1645270994804
}
```

### 删除单条
example:

```
127.0.0.1:8080/customer/delete/13
```

URI：

```
POST /delete/{id}
```

参数：

```
id：客户id
```

响应数据：

```json
{
    "result": "delete success",
    "status": 200,
    "timestamp": 1645271033528
}
```

### 批量删除
example:

```
127.0.0.1:8080/customer/delete/many?ids=2&ids=3&ids=4&ids=5
```

URI：

```
POST /delete/many
```

参数：

```
ids：客户id集合
```

响应数据：

```json
{
    "result": "delete success",
    "status": 200,
    "timestamp": 1645271065202
}
```

### 分页/模糊查询

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:15:51.png)

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:16:03.png)

example:

```
127.0.0.1:8080/customer/pageList?pageNo=1&pageSize=2
```

example2:

```
127.0.0.1:8080/customer/pageList?pageNo=1&pageSize=2&name=动力
```

URI：

```
POST /pageList
```

参数：

```
pageNo	// 页码，必选参数，>=1
pageSize	// 每页展示数据个数，必选参数，>=1
owner	// 所有者，uuid
name	// 名称
website	// 网站
mphone	// 座机
```

响应数据：

```json
{
    "result": {
        "total": 8,
        "dataList": [
            {
                "id": 1,
                "name": "公司0",
                "owner": "张三",
                "mphone": "0",
                "website": "www.0.com"
            },
            {
                "id": 6,
                "name": "公司5",
                "owner": "张三",
                "mphone": "5",
                "website": "www.5.com"
            }
        ]
    },
    "status": 200,
    "timestamp": 1645271097714
}
```

### 获取单个customer详细信息

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:17:30.png)

example:

```
127.0.0.1:8080/customer/7
```

URI：

```
GET /{id}
```

参数：

```
id：customer的id
```

响应数据：

```json
{
    "result": {
        "id": 7,
        "owner": "asdfgh",
        "name": "公司6",
        "website": "www.6.com",
        "mphone": "6",
        "createBy": "asdfgh",
        "createTime": "2022-02-19 17:24:52",
        "editBy": null,
        "editTime": null,
        "contactSummary": "6",
        "nextContactTime": "2022-02-19 17:24:52",
        "description": "6",
        "address": "6"
    },
    "status": 200,
    "timestamp": 1645271174463
}
```

### 获取与该顾客相关交易列表信息

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:17:52.png)

example:

```
127.0.0.1:8080/customer/tran/4
```

URI：

```
GET /tran/{id}
```

参数：

```
id：customer id
```

响应数据：

```json
{
    "result": [],
    "status": 200,
    "timestamp": 1645271206471
}
```

### 解除交易

URI：

```
POST /tran/{id}
```

参数：

```
id：交易的id
```

响应数据：

```json
{
    "result": "删除了该条交易",
    "status": 200,
    "timestamp": 1645270191665
}
```

### 获取与该顾客相关联系人信息

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:19:11.png)

URI：

```
GET /contacts/{id}
```

参数：

```
id：customer id
```

响应数据：

```json
{
    "result": [],
    "status": 200,
    "timestamp": 1645271278844
}
```

### 解除联系人
URI：

```
POST /contacts/{id}
```

参数：

```
id：联系人id
```

响应数据：

```json
{
    "result": "delete success",
    "status": 200,
    "timestamp": 1645270191665
}
```

## 联系人模块（/contacts）

### 新增数据

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:26:23.png)

URI：

```
POST　/insert
```

参数：

```
id	// 自增主键，系统自动生成，必选参数
owner	// 所有者，uuid
source	// 来源
customerId	// customerId
fullname	// 名称，线索的fullname
appellation	// 称呼
email	// email
mphone	// 联系人手机
job	// 职位
birth	// 生日
createBy	// 创建人，uuid
createTime	// 创建时间，系统自动生成
description	// 描述
contactSummary	// 联系摘要
nextContactTime	// 下次联系时间
address	// 地址
```

响应数据：

```

```

### 修改数据

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:26:36.png)

URI：

```
POST /edit
```

参数：

```
id	// 联系人id，必选参数
owner	// 所有者，uuid
source	// 来源
customerId	// customerId
fullname	// 名称，线索的fullname
appellation	// 称呼
email	// email
mphone	// 联系人手机
job	// 职位
birth	// 生日
editBy	// 修改人，uuid
editTime	// 修改时间，系统自动生成
description	// 描述
contactSummary	// 联系摘要
nextContactTime	// 下次联系时间
address	// 地址
```

响应数据：

```

```

### 删除单条
URI：

```
POST /delete/{id}
```

参数：

```
id：联系人id
```

响应数据：

```

```

### 批量删除
example:

```
127.0.0.1:8080/contacts/delete/many?ids=2&ids=3&ids=4
```

URI：

```
POST /delete/many
```

参数：

```
ids：联系人id集合
```

响应数据：

```

```

### 分页/模糊查询

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:25:55.png)

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:26:09.png)

example:

```
127.0.0.1:8080/contacts/pageList?pageNo=1&pageSize=2
```

URI：

```
POST /pageList
```

参数：

```
pageNo	// 页码，必选参数，>=1
pageSize	// 每页展示数据个数，必选参数，>=1
owner	// 所有者，uuid
name	// 客户名称
fullname	// 联系人名称
source	// 来源
birth	// 生日
```

响应数据：

```json
{
    "result": {
        "total": 8,
        "dataList": [
            {
                "id": 2,
                "fullname": "李1",
                "customerName": "公司0",
                "owner": "张三",
                "source": "广告",
                "birth": "2022-01-01"
            },
            {
                "id": 7,
                "fullname": "李6",
                "customerName": "公司5",
                "owner": "张三",
                "source": "广告",
                "birth": "2022-01-01"
            }
        ]
    },
    "status": 200,
    "timestamp": 1645271364336
}
```

### 获取详细信息

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:37:02.png)

example:

```
127.0.0.1:8080/contacts/10
```

URI：

```
GET /{id}
```

参数：

```
id：联系人id
```

响应数据：

```json
{
    "result": {
        "id": 10,
        "owner": "asdfgh",
        "source": "广告",
        "customerId": 9,
        "fullname": "李9",
        "appellation": "先生",
        "email": "9@qq.com",
        "mphone": "9",
        "job": "9",
        "birth": "2022-01-01",
        "createBy": "asdfgh",
        "createTime": "2022-02-19 17:24:52",
        "editBy": null,
        "editTime": null,
        "description": "9",
        "contactSummary": "9",
        "nextContactTime": "2022-02-19 17:24:52",
        "address": "9"
    },
    "status": 200,
    "timestamp": 1645271434022
}
```

### 获取与该联系人相关交易列表

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:26:58.png)

example:

```
127.0.0.1:8080/contacts/tran/5
```

URI：

```
GET /tran/{id}
```

参数：

```
id：联系人id
```

响应数据：

```json
{
    "result": [],
    "status": 200,
    "timestamp": 1645271462525
}
```

### 解除交易
URI：

```
POST /tran/{id}
```

参数：

```
id：交易id
```

响应数据：

```json
{
    "result": "delete success",
    "status": 200,
    "timestamp": 1645270191665
}
```

### 获取相关市场活动列表

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 18:27:08.png)

example:

```
127.0.0.1:8080/contacts/activity/1
```

URI：

```
GET /activity/{id}
```

参数：

```
id：联系人id
```

响应数据：

```json
{
    "result": [
        {
            "id": 10,
            "name": "发传单9",
            "owner": "张三",
            "startDate": "2022-02-19 17:24:52",
            "endDate": "2022-02-19 17:24:52"
        }
    ],
    "status": 200,
    "timestamp": 1645271518371
}
```

### 解除市场活动
URI：

```
POST /activity
```

参数：

```
activityId：市场活动id
contactsId：联系人id
```

响应数据：

```json
{
    "result": "delete success",
    "status": 200,
    "timestamp": 1645270191665
}
```

## 交易模块（/tran）

### 新增交易

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 19:19:05.png)

URI：

```
POST /insert
```

参数：

```
id	// 自增主键，系统自动生成，必选参数
owner	// 所有者，uuid
money	// 金额
name	// 交易名称
expectedDate	// 期待成交日期
customerId	// 客户id
stage	// 阶段
type	// 类型
source	// 来源
activityId	// 市场活动id
contactsId	// 联系人id
createBy	// 创建人，uuid
createTime	// 创建时间，系统自动生成
description	// 描述
contactSummary	// 联系纪要
nextContactTime	// 下次联系时间
possible	// 可能性
```

返回格式：

```

```

### 修改交易

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 19:19:17.png)

URI：

```
POST /edit
```

参数：

```
id	// 交易id
owner	// 所有者，uuid
money	// 金额
name	// 交易名称
expectedDate	// 期待成交日期
customerId	// 客户id
stage	// 阶段
type	// 类型
source	// 来源
activityId	// 市场活动id
contactsId	// 联系人id
editBy	// 修改人，uuid
editTime	// 修改时间，系统自动生成
description	// 描述
contactSummary	// 联系纪要
nextContactTime	// 下次联系时间
possible	// 可能性
```

返回格式：

```

```

### 删除单条

URI：

```
POST /delete/{id}
```

参数：

```
id：交易id
```

返回格式：

```

```
### 批量删除

URI：

```
POST /delete/many
```

参数：

```
ids：交易id的集合
```

返回格式：

```

```

### 分页/模糊查询

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 19:20:43.png)

example:

```
127.0.0.1:8080/tran/pageList?pageNo=1&pageSize=2
```

URI：

```
POST /pageList
```

参数：

```
pageNo	// 页码，必选参数，>=1
pageSize	// 每页展示数据个数，必选参数，>=1
owner	// 所有者，uuid
name	// 交易名称
customerName	// 名称
source	// 来源
stage	// 阶段
type	// 业务类型
contactsName	// 联系人姓名
```

返回格式：

```json
{
    "result": {
        "total": 10,
        "dataList": [
            {
                "id": 1,
                "name": "交易0",
                "customerName": "公司4",
                "stage": "资质审查",
                "type": "新业务",
                "owner": "张三",
                "source": "广告",
                "contactsName": "李4"
            },
            {
                "id": 2,
                "name": "交易1",
                "customerName": "公司4",
                "stage": "资质审查",
                "type": "新业务",
                "owner": "张三",
                "source": "广告",
                "contactsName": "李4"
            }
        ]
    },
    "status": 200,
    "timestamp": 1645271572352
}
```

### 获取详细信息

![](https://my-picture-container.oss-cn-beijing.aliyuncs.com/blog/2022-02-19 19:22:31.png)

example:

```
127.0.0.1:8080/tran/10
```

URI：

```
GET /{id}
```

参数：

```
id：交易id
```

返回格式：

```json
{
    "result": {
        "id": 10,
        "owner": "asdfgh",
        "money": "5000",
        "name": "交易9",
        "expectedDate": "2022-01-01",
        "customerId": 5,
        "stage": "资质审查",
        "type": "新业务",
        "source": "广告",
        "activityId": 6,
        "contactsId": 5,
        "createBy": "asdfgh",
        "createTime": "2022-01-01",
        "editBy": null,
        "editTime": null,
        "description": "9",
        "contactSummary": "9",
        "nextContactTime": "2022-01-01",
        "possible": 90,
        "uuid": null
    },
    "status": 200,
    "timestamp": 1645271615593
}
```

## 数据字典模块（/tran）

### 新增字典类型

example:

```
127.0.0.1:8080/dic/insert/type?code=111&name=1112&description=1113
```

URI：

```
POST /insert/type
```

参数：

```
id // 主键，系统自动生成，
code // 必选参数，必须英文，类型代码
name // 类型名称
description // 类型描述
```

响应结果：

```json
{
    "result": "insert type success",
    "status": 200,
    "timestamp": 1645340596752
}
```



### 新增字典数据

example:

```
127.0.0.1:8080/dic/insert/value?value=222&text=222&orderNo=5&typeCode=111
```

URI：

```
POST /insert/value
```

参数： 

```
id // id，主键，系统自动生成
value // 字典数据值
text // 字典数据文本，等同于value
orderNo // 排序编号
typeCode // 类型代码，等同于type的code属性，必选参数
```

响应结果：

```json
{
    "result": "insert value success",
    "status": 200,
    "timestamp": 1645340983011
}
```
### 修改字典类型

example:

```
127.0.0.1:8080/dic/edit/type?code=111&name=2222&id=8
```

URI：

```
POST /edit/type
```

参数：

```
id // 必选参数，类型的id
code // 必选参数，必须英文，类型代码，修改了code后，所有与该code相关的value也会被修改
name // 类型名称
description // 类型描述
```

响应结果：

```json
{
    "result": "update type success!",
    "status": 200,
    "timestamp": 1645341494095
}
```
### 修改字典数据

exmaple:

```
127.0.0.1:8080/dic/edit/value?typeCode=333&value=333
```

URI：

```
POST /edit/value
```

参数：

```
typeCode // 必选参数，该value对应的类型
value // 字典数据值
text // 字典数据文本，等同于value
orderNo // 排序编号
```

响应结果：

```json
{
    "result": "update value success",
    "status": 200,
    "timestamp": 1645341689263
}
```
### 删除字典类型

example:

```
127.0.0.1:8080/dic/delete/type/333
```

URI：

```
POST /delete/type/{id}
```

参数：

```
id：字典类型id，必选参数
```

响应结果：

```json
{
    "result": "delete type success",
    "status": 200,
    "timestamp": 1645341744182
}
```
### 删除字典数据

URI：

```
POST /delete/value/{id}
```

参数：

```
id：字典数据的id
```

响应结果：

```json
{
    "result": "delete value success",
    "status": 200,
    "timestamp": 1645341795345
}
```
### 批量删除字典类型

URI：

```
POST /delete/type/many
```

参数：

```
codes：字典类型的code属性的集合
```

响应结果：

```json
{
    "result": "delete types success",
    "status": 200,
    "timestamp": 1645341744182
}
```
### 批量删除字典数据

URI：

```
POST /delete/value/many
```

参数：

```
ids：字典数据的id的集合
```

响应结果：

```json
{
    "result": "delete values success",
    "status": 200,
    "timestamp": 1645341795345
}
```
### 根据字典类型获取字典数据

example:

```
127.0.0.1:8080/dic/values/source
```

URI：

```
GET /values/{typeCode}
```

参数：

```
typeCode：字典数据的类型值
```

响应结果：

```json
{
    "result": [
        {
            "id": 2,
            "value": "销售邮件",
            "text": "销售邮件",
            "orderNo": 8,
            "typeCode": "source"
        },
        {
            "id": 3,
            "value": "交易会",
            "text": "交易会",
            "orderNo": 11,
            "typeCode": "source"
        },
        {
            "id": 14,
            "value": "聊天",
            "text": "聊天",
            "orderNo": 14,
            "typeCode": "source"
        },
        {
            "id": 16,
            "value": "广告",
            "text": "广告",
            "orderNo": 1,
            "typeCode": "source"
        },
        {
            "id": 17,
            "value": "合作伙伴研讨会",
            "text": "合作伙伴研讨会",
            "orderNo": 9,
            "typeCode": "source"
        },
        {
            "id": 22,
            "value": "web调研",
            "text": "web调研",
            "orderNo": 13,
            "typeCode": "source"
        },
        {
            "id": 23,
            "value": "合作伙伴",
            "text": "合作伙伴",
            "orderNo": 6,
            "typeCode": "source"
        },
        {
            "id": 25,
            "value": "内部研讨会",
            "text": "内部研讨会",
            "orderNo": 10,
            "typeCode": "source"
        },
        {
            "id": 35,
            "value": "推销电话",
            "text": "推销电话",
            "orderNo": 2,
            "typeCode": "source"
        },
        {
            "id": 38,
            "value": "web下载",
            "text": "web下载",
            "orderNo": 12,
            "typeCode": "source"
        },
        {
            "id": 41,
            "value": "员工介绍",
            "text": "员工介绍",
            "orderNo": 3,
            "typeCode": "source"
        },
        {
            "id": 45,
            "value": "在线商场",
            "text": "在线商场",
            "orderNo": 5,
            "typeCode": "source"
        },
        {
            "id": 46,
            "value": "公开媒介",
            "text": "公开媒介",
            "orderNo": 7,
            "typeCode": "source"
        },
        {
            "id": 47,
            "value": "外部介绍",
            "text": "外部介绍",
            "orderNo": 4,
            "typeCode": "source"
        }
    ],
    "status": 200,
    "timestamp": 1645342141422
}
```
### 获取全部字典类型

URI：

```
GET /type/all
```

参数：

```
无
```

响应结果：

```json
{
    "result": [
        {
            "id": 1,
            "code": "appellation",
            "name": "称呼",
            "description": ""
        },
        {
            "id": 2,
            "code": "clueState",
            "name": "线索状态",
            "description": ""
        },
        {
            "id": 3,
            "code": "returnPriority",
            "name": "回访优先级",
            "description": ""
        },
        {
            "id": 4,
            "code": "returnState",
            "name": "回访状态",
            "description": ""
        },
        {
            "id": 5,
            "code": "source",
            "name": "来源",
            "description": ""
        },
        {
            "id": 6,
            "code": "stage",
            "name": "阶段",
            "description": ""
        },
        {
            "id": 7,
            "code": "transactionType",
            "name": "交易类型",
            "description": ""
        }
    ],
    "status": 200,
    "timestamp": 1645342231026
}
```
### 获取全部字典数据

URI：

```
GET /value/all
```

参数：

```
无
```

响应结果：

```json
{
    "result": [
        {
            "id": 1,
            "value": "虚假线索",
            "text": "虚假线索",
            "orderNo": 4,
            "typeCode": "clueState"
        },
        {
            "id": 2,
            "value": "销售邮件",
            "text": "销售邮件",
            "orderNo": 8,
            "typeCode": "source"
        },
        {
            "id": 3,
            "value": "交易会",
            "text": "交易会",
            "orderNo": 11,
            "typeCode": "source"
        },
        {
            "id": 4,
            "value": "最高",
            "text": "最高",
            "orderNo": 2,
            "typeCode": "returnPriority"
        },
        {
            "id": 5,
            "value": "教授",
            "text": "教授",
            "orderNo": 5,
            "typeCode": "appellation"
        },
        {
            "id": 6,
            "value": "将来联系",
            "text": "将来联系",
            "orderNo": 2,
            "typeCode": "clueState"
        },
        {
            "id": 7,
            "value": "丢失线索",
            "text": "丢失线索",
            "orderNo": 5,
            "typeCode": "clueState"
        },
        {
            "id": 8,
            "value": "未启动",
            "text": "未启动",
            "orderNo": 1,
            "typeCode": "returnState"
        },
        {
            "id": 9,
            "value": "07成交",
            "text": "07成交",
            "orderNo": 7,
            "typeCode": "stage"
        },
        {
            "id": 10,
            "value": "试图联系",
            "text": "试图联系",
            "orderNo": 1,
            "typeCode": "clueState"
        },
        {
            "id": 11,
            "value": "博士",
            "text": "博士",
            "orderNo": 4,
            "typeCode": "appellation"
        },
        {
            "id": 12,
            "value": "01资质审查",
            "text": "01资质审查",
            "orderNo": 1,
            "typeCode": "stage"
        },
        {
            "id": 13,
            "value": "08丢失的线索",
            "text": "08丢失的线索",
            "orderNo": 8,
            "typeCode": "stage"
        },
        {
            "id": 14,
            "value": "聊天",
            "text": "聊天",
            "orderNo": 14,
            "typeCode": "source"
        },
        {
            "id": 15,
            "value": "低",
            "text": "低",
            "orderNo": 3,
            "typeCode": "returnPriority"
        },
        {
            "id": 16,
            "value": "广告",
            "text": "广告",
            "orderNo": 1,
            "typeCode": "source"
        },
        {
            "id": 17,
            "value": "合作伙伴研讨会",
            "text": "合作伙伴研讨会",
            "orderNo": 9,
            "typeCode": "source"
        },
        {
            "id": 18,
            "value": "先生",
            "text": "先生",
            "orderNo": 1,
            "typeCode": "appellation"
        },
        {
            "id": 19,
            "value": "高",
            "text": "高",
            "orderNo": 1,
            "typeCode": "returnPriority"
        },
        {
            "id": 20,
            "value": "夫人",
            "text": "夫人",
            "orderNo": 2,
            "typeCode": "appellation"
        },
        {
            "id": 21,
            "value": "09因竞争丢失关闭",
            "text": "09因竞争丢失关闭",
            "orderNo": 9,
            "typeCode": "stage"
        },
        {
            "id": 22,
            "value": "web调研",
            "text": "web调研",
            "orderNo": 13,
            "typeCode": "source"
        },
        {
            "id": 23,
            "value": "合作伙伴",
            "text": "合作伙伴",
            "orderNo": 6,
            "typeCode": "source"
        },
        {
            "id": 24,
            "value": "未联系",
            "text": "未联系",
            "orderNo": 6,
            "typeCode": "clueState"
        },
        {
            "id": 25,
            "value": "内部研讨会",
            "text": "内部研讨会",
            "orderNo": 10,
            "typeCode": "source"
        },
        {
            "id": 26,
            "value": "进行中",
            "text": "进行中",
            "orderNo": 3,
            "typeCode": "returnState"
        },
        {
            "id": 27,
            "value": "已有业务",
            "text": "已有业务",
            "orderNo": 1,
            "typeCode": "transactionType"
        },
        {
            "id": 28,
            "value": "已联系",
            "text": "已联系",
            "orderNo": 3,
            "typeCode": "clueState"
        },
        {
            "id": 29,
            "value": "推迟",
            "text": "推迟",
            "orderNo": 2,
            "typeCode": "returnState"
        },
        {
            "id": 30,
            "value": "新业务",
            "text": "新业务",
            "orderNo": 2,
            "typeCode": "transactionType"
        },
        {
            "id": 31,
            "value": "完成",
            "text": "完成",
            "orderNo": 4,
            "typeCode": "returnState"
        },
        {
            "id": 32,
            "value": "需要条件",
            "text": "需要条件",
            "orderNo": 7,
            "typeCode": "clueState"
        },
        {
            "id": 33,
            "value": "02需求分析",
            "text": "02需求分析",
            "orderNo": 2,
            "typeCode": "stage"
        },
        {
            "id": 34,
            "value": "等待某人",
            "text": "等待某人",
            "orderNo": 5,
            "typeCode": "returnState"
        },
        {
            "id": 35,
            "value": "推销电话",
            "text": "推销电话",
            "orderNo": 2,
            "typeCode": "source"
        },
        {
            "id": 36,
            "value": "常规",
            "text": "常规",
            "orderNo": 5,
            "typeCode": "returnPriority"
        },
        {
            "id": 37,
            "value": "05提案/报价",
            "text": "05提案/报价",
            "orderNo": 5,
            "typeCode": "stage"
        },
        {
            "id": 38,
            "value": "web下载",
            "text": "web下载",
            "orderNo": 12,
            "typeCode": "source"
        },
        {
            "id": 39,
            "value": "03价值建议",
            "text": "03价值建议",
            "orderNo": 3,
            "typeCode": "stage"
        },
        {
            "id": 40,
            "value": "最低",
            "text": "最低",
            "orderNo": 4,
            "typeCode": "returnPriority"
        },
        {
            "id": 41,
            "value": "员工介绍",
            "text": "员工介绍",
            "orderNo": 3,
            "typeCode": "source"
        },
        {
            "id": 42,
            "value": "04确定决策者",
            "text": "04确定决策者",
            "orderNo": 4,
            "typeCode": "stage"
        },
        {
            "id": 43,
            "value": "女士",
            "text": "女士",
            "orderNo": 3,
            "typeCode": "appellation"
        },
        {
            "id": 44,
            "value": "06谈判/复审",
            "text": "06谈判/复审",
            "orderNo": 6,
            "typeCode": "stage"
        },
        {
            "id": 45,
            "value": "在线商场",
            "text": "在线商场",
            "orderNo": 5,
            "typeCode": "source"
        },
        {
            "id": 46,
            "value": "公开媒介",
            "text": "公开媒介",
            "orderNo": 7,
            "typeCode": "source"
        },
        {
            "id": 47,
            "value": "外部介绍",
            "text": "外部介绍",
            "orderNo": 4,
            "typeCode": "source"
        }
    ],
    "status": 200,
    "timestamp": 1645342203831
}
```
