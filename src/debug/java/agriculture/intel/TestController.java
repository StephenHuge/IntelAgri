package debug.java.agriculture.intel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 本Controller只进行欢迎页面的映射
 * @author Stephen Huge
 *
 * @date 2018年4月11日下午4:11:55
 *
 */
@Controller
public class TestController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String welcome() {
		return "test/test";
	}
}
