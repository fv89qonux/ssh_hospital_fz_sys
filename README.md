## 本项目实现的最终作用是基于SSH医院分诊管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 医生管理
 - 管理员登录
### 第2个角色为医生角色，实现了如下功能：
 - 医生登录
 - 密码修改
 - 病历管理
 - 预约管理
### 第3个角色为患者角色，实现了如下功能：
 - 患者注册
 - 患者登录
 - 查看病历
 - 添加预约信息
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_hospital_fz_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [appointment](#appointment) |  |
| [doctor](#doctor) |  |
| [patient](#patient) |  |
| [record](#record) |  |
| [user](#user) | 用户表 |

**表名：** <a id="appointment">appointment</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | aid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | did |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 商品ID  |
|  4   | description |   varchar   | 1000 |   0    |    Y     |  N   |   NULL    |   |
|  5   | createdate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | effectdate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | expiredate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | flag |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="doctor">doctor</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | did |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | name |   varchar   | 255 |   0    |    N     |  N   |       | 名字  |
|  3   | sex |   varchar   | 255 |   0    |    N     |  N   |       | 性别  |
|  4   | titel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | subject |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | education |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 教育经历  |
|  7   | uid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="patient">patient</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | pid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | name |   varchar   | 255 |   0    |    N     |  N   |       | 名字  |
|  3   | birth |   varchar   | 255 |   0    |    N     |  N   |       |   |
|  4   | sex |   varchar   | 255 |   0    |    N     |  N   |       | 性别  |
|  5   | address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  6   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 手机号码  |
|  7   | uid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="record">record</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | rid |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | did |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 商品ID  |
|  4   | symptom |   varchar   | 1000 |   0    |    Y     |  N   |   NULL    |   |
|  5   | diagnosis |   varchar   | 1000 |   0    |    Y     |  N   |   NULL    |   |
|  6   | prescription |   varchar   | 1000 |   0    |    Y     |  N   |   NULL    |   |
|  7   | createdate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="user">user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | uid |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | username |   varchar   | 255 |   0    |    N     |  N   |       | 用户名  |
|  3   | password |   varchar   | 255 |   0    |    N     |  N   |       | 密码  |
|  4   | role |   int   | 10 |   0    |    Y     |  N   |   NULL    | 角色  |

