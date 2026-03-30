# API接口文档

## 基本信息

- **标题**：若依管理系统API文档
- **版本**：3.8.9
- **基础URL**：http://localhost:18081/dev-api

## 登录接口

### 1. 用户登录

**接口地址**：`/login`
**请求方法**：`POST`
**接口描述**：用户登录接口，用于获取访问令牌

#### 请求参数

| 参数名 | 类型 | 必须 | 描述 |
| ------ | ---- | ---- | ---- |
| username | String | 是 | 用户名 |
| password | String | 是 | 用户密码 |
| code | String | 否 | 验证码 |
| uuid | String | 否 | 唯一标识（验证码相关） |

#### 请求示例

```json
{
  "username": "admin",
  "password": "123456",
  "code": "1234",
  "uuid": "d8e8fca2dc0f896fd7cb4cb0031ba249"
}
```

#### 响应格式

| 参数名 | 类型 | 描述 |
| ------ | ---- | ---- |
| code | Integer | 状态码（200表示成功，其他表示失败） |
| msg | String | 返回消息 |
| token | String | 访问令牌 |
| jwt_userid | Long | 用户ID |

#### 响应示例

```json
{
  "code": 200,
  "msg": "登录成功",
  "token": "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTY3NjUxNzc1OCwiaWF0IjoxNjc2NTE0MTU4fQ...",
  "jwt_userid": 1
}
```

### 2. 第三方登录

**接口地址**：`/login/third`
**请求方法**：`POST`
**接口描述**：第三方登录接口

#### 请求参数

| 参数名 | 类型 | 必须 | 描述 |
| ------ | ---- | ---- | ---- |
| username | String | 是 | 用户名 |
| password | String | 是 | 用户密码 |
| code | String | 否 | 验证码 |
| uuid | String | 否 | 唯一标识（验证码相关） |

#### 请求示例

```json
{
  "username": "third_user",
  "password": "123456",
  "code": "1234",
  "uuid": "d8e8fca2dc0f896fd7cb4cb0031ba249"
}
```

#### 响应格式

| 参数名 | 类型 | 描述 |
| ------ | ---- | ---- |
| code | Integer | 状态码（200表示成功，其他表示失败） |
| msg | String | 返回消息 |
| token | String | 访问令牌 |
| jwt_userid | Long | 用户ID |

#### 响应示例

```json
{
  "code": 200,
  "msg": "登录成功",
  "token": "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0aGlyZF91c2VyIiwiZXhwIjoxNjc2NTE3NzU4LCJpYXQiOjE2NzY1MTQxNTh9...",
  "jwt_userid": 2
}
```

## 注册接口

### 1. 用户注册

**接口地址**：`/user/register`
**请求方法**：`POST`
**接口描述**：用户注册接口，用于创建新用户

#### 请求参数

| 参数名 | 类型 | 必须 | 描述 |
| ------ | ---- | ---- | ---- |
| username | String | 是 | 用户名（2-20个字符） |
| password | String | 是 | 用户密码（5-20个字符） |
| nickName | String | 否 | 用户昵称 |
| email | String | 否 | 邮箱 |
| phonenumber | String | 否 | 手机号码 |
| code | String | 否 | 验证码 |
| uuid | String | 否 | 唯一标识（验证码相关） |

#### 请求示例

```json
{
  "username": "new_user",
  "password": "123456",
  "nickName": "新用户",
  "email": "new_user@example.com",
  "phonenumber": "13800138000",
  "code": "1234",
  "uuid": "d8e8fca2dc0f896fd7cb4cb0031ba249"
}
```

#### 响应格式

| 参数名 | 类型 | 描述 |
| ------ | ---- | ---- |
| code | Integer | 状态码（200表示成功，其他表示失败） |
| msg | String | 返回消息 |

#### 响应示例

```json
{
  "code": 200,
  "msg": "注册成功"
}
```

## 响应状态码

| 状态码 | 描述 |
| ------ | ---- |
| 200 | 操作成功 |
| 500 | 操作失败 |
| 401 | 未授权 |
| 403 | 拒绝访问 |
| 404 | 资源不存在 |

## 错误码说明

| 错误码 | 描述 |
| ------ | ---- |
| 用户名不能为空 | 用户名参数为空 |
| 密码不能为空 | 密码参数为空 |
| 密码长度必须在5-20个字符之间 | 密码长度不符合要求 |
| 用户名已存在 | 用户名已被注册 |
| 手机号码已存在 | 手机号码已被注册 |
| 邮箱已存在 | 邮箱已被注册 |
| 当前系统没有开启注册功能！ | 系统未开启注册功能 |

## 注意事项

1. 所有请求需要在请求头中携带 `Content-Type: application/json`
2. 登录成功后，需要在后续请求的请求头中携带 `Authorization: Bearer {token}`
3. 验证码相关参数根据系统配置决定是否必填
4. 注册功能需要系统管理员开启

## 接口测试

可以通过以下方式测试接口：

1. **Swagger UI**：访问 http://localhost:18081/dev-api/swagger-ui/index.html
2. **Postman**：使用Postman工具发送HTTP请求
3. **curl命令**：使用命令行工具发送HTTP请求

示例curl命令：

```bash
# 登录
curl -X POST -H "Content-Type: application/json" -d '{"username":"admin","password":"123456"}' http://localhost:18081/dev-api/login

# 注册
curl -X POST -H "Content-Type: application/json" -d '{"username":"new_user","password":"123456"}' http://localhost:18081/dev-api/user/register
```
