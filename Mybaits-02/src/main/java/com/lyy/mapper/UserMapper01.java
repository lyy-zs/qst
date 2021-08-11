package com.lyy.mapper;

import com.lyy.pojo.User01;

import org.apache.ibatis.annotations.*;

import java.util.List;

public interface UserMapper01 {

	@Select(" select * from xh2020.user_test")
	List<User01> selectAll() throws  Exception;

//	@Select("select *from user01 where id=#{id}")
//	User01 selectById(int id) throws  Exception;
//
//	@Delete("delete from user01")
//	int delAll() throws  Exception;
//
//	@Delete("delete from user01 where id=#{id}")
//	int delById(User01 user01) throws  Exception;
//
//	@Insert("insert into user01(name,age,sex) values(#{name},#{age},#{sex})")
//	int insertUser01(User01 user01) throws  Exception;
//
//
//	@Update("update user01 set name=#{name},age=#{age},sex=#{sex}")
//	int updateUser(User01 user01);
//
//
//	@Update("update user01 set name=#{name},age=#{age},sex=#{sex} where id=#{id}")
//	int updateUser01(User01 user01);


}
