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