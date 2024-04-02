### OCCI接口

```c
远程连接docker容器， 实现在ubuntu下完成该项目
//实现sqlplus客户端的安装
 https://juejin.cn/s/install%20sqlplus%20linux%20ubuntu
	
//配置 sqlplus 的环境变量
 set -x PATH /path/to/sqlplus_directory $PATH

// 启动docker
     sudo docker run -d -p 1521:1521 -p 8080:8080 --name oracle_container oracleinanutshell/oracle-xe-11g
     
 //获取docker 容器的ip地址：
 	sudo docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' oracle_container

// 远程连接数据库
     sqlplus system/oracle@容器IP地址:1521/xe
```



**配置occi环境**

1. 将动态库和头文件放入到系统目录之中,  或者添加到系统目录中
2. 在程序第一行加上`# define _GLIBCXX_USE_CXX11_ABI 0` 解决用户名太长的问题!!!





**occi简单使用**

```c++
Environment* env = Environment::creatEnvironment();
Connection* conn = env->createConnection("usrname", "pwd", "id:port");
Statement* st = conn->createStatement();
st->setSQL("select * from tab");
ResultSet* result = st->executeQuery();
while(result->next()){
	cout << result->getString(1) <<
        	result->getInt(2) << endl;
}	
st->CloseResultSet(result);
	// 销毁statment对象
conn->terminateStatement(st);
	// 销毁连接对象
env->terminateConnection(conn);
	// 释放创建的环境对象
Environment::terminateEnvironment(env);
```





### occi中的事务

```c++
st->getAytoCommit();
st->setAutoCommit();

//操作回滚:
	conn->rollback();

//操作提交
	conn->commit();
```

