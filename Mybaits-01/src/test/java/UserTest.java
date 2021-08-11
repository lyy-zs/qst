import java.util.List;
import com.lyy.mapper.UserMapper;
import com.lyy.pojo.User01;
import com.lyy.utils.MybaitsUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
public class UserTest {
	@Test
	public void test() throws Exception {
		//第一步：获得SqlSession对象
		SqlSession sqlSession = MybaitsUtils.getSqlSession();
		//getMapper,通过sqlSession获得接口
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		List<User01> userList = mapper.selectAll();
		for (User01 u : userList) {
			System.out.println(u);
		}
		//关闭SqlSession
		sqlSession.close();
	}
	 
	}

