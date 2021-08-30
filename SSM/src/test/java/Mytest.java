import com.lyy.pojo.Books;
import com.lyy.pojo.PageData;
import com.lyy.pojo.User;
import com.lyy.service.book.BookService;
import com.lyy.service.user.UserService;
import com.lyy.service.user.UserServiceImpl;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Mytest {
    @Test
    public void test(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("application.xml");
        BookService bookServiceImpl = (BookService) context.getBean("BookServiceImpl");
        for (PageData pd : bookServiceImpl.queryData()) {
            System.out.println(pd);
        }
//        UserService userService = (UserService) context.getBean("UserServiceImpl");
//        User u = new User();
//        u.setUsername("yyy");
//        u.setPassword("123");
//        userService.register(u);

    }
}
