后端使用docker部署

## 克隆脚本

前往仓库https://github.com/StelluxWiki/Stellux-Script 下载相应的脚本

```bash
git clone https://github.com/StelluxWiki/Stellux-Script.git
```



## 修改`stellux.production.yaml`

```yaml
mongodb:
  HOST: "127.0.0.1" # 生产环境更换为公网ip
  PORT: 27017
  MONGO_INITDB_ROOT_USERNAME: "admin"
  MONGO_INITDB_ROOT_PASSWORD: "123456" # 修改管理员密码
  MONGO_INITDB_DATABASE: "stellux" 
  MONGO_USERNAME: "stellux" # 修改账号
  MONGO_PASSWORD: "123456" # 修改密码

server:
  PORT: 9001
  JWT_SECRET: "stellux" # JWT密钥
```

修改完执行：

```bash
docker-compose up -d
```



打开`公网ip:9001`，若看到这个，后端和数据库就成功了

![部署成功](https://image.codepzj.cn/image/20250601162401974.png)



## 重点

**记得放开防火墙端口**: `9001`和`27017`
