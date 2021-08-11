package com.lyy;
import com.lyy.pojo.User01;
import com.lyy.utils.MybatisUtils;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import com.lyy.mapper.UserMapper01;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.Reader;
import java.util.List;
public class UserTest {
    @Test
    public void test() throws Exception {


        SqlSession session = MybatisUtils.getSqlSession();

        UserMapper01 mapper = session.getMapper(UserMapper01.class);

//        SqlSession sqlSession = MybatisUtils.getSqlSession();
//        UserMapper01 mapper = sqlSession.getMapper(UserMapper01.class);
        List<User01> user01s = mapper.selectAll();
        for (User01 u: user01s) {
            System.out.println(u);
        }
        session.close();
    }
}
