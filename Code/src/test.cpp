# define _GLIBCXX_USE_CXX11_ABI 0
#include <iostream>
#include <occi.h>


using namespace oracle::occi;
using namespace std;

int main() {
    Environment* env = Environment::createEnvironment();
    Connection* conn = env->createConnection("system", "oracle", "172.17.0.2:1521/xe");
    Statement* st = conn->createStatement();
    string sql = "select * from t_class";
    st->setSQL(sql);
    ResultSet* result = st->executeQuery();
    while(result->next()){
        cout << "class: " << result->getString(1) <<
                "  name: " << result->getString(2) << endl;
    }
    st->closeResultSet(result);

    sql = "insert into t_class values('003', 'su')";
    st->setSQL(sql);

    // 设置事务判断语句是否执行成功
    st->setAutoCommit(1);

    int ret = st->executeUpdate();
    if(ret){ // 执行成功->提交
        conn->commit();
        cout << "执行成功!\n";
    }
    else{
        conn->rollback();
        cout << "执行失败\n";
    }

    conn->terminateStatement(st);
    env->terminateConnection(conn);
    Environment::terminateEnvironment(env);

    return 0;
}
