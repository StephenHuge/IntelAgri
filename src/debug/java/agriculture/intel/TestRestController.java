package debug.java.agriculture.intel;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 测试RESTful形式的路径映射
 *
 * @author Stephen Huge
 *
 * @date 2018年4月4日下午7:42:35
 *
 */
@Controller
@RequestMapping("/models")
public class TestRestController {
	private TestDao testDao;
	
	@Autowired
	public TestRestController(TestDao testDao) {
		this.testDao = testDao;
	}
	/**
	 * 默认GET访问/../models 会跳转到物理视图 WEB-INF/jsp/test/models.jsp
	 */
	@RequestMapping(method=RequestMethod.GET)
	public String getAllModels(ModelMap modelMap) {
		List<TestModel> testModels = testDao.getAllModels();
		modelMap.addAttribute("testModels", testModels);
		return "test/models";
	}
	/**
	 * GET方法访问 /../models/register 会跳转到物理视图 WEB-INF/jsp/test/addTestModel.jsp
	 * 在此页面提交post请求，如果不指定action，则会默认访问/../models/registerForm路径下，但是方法会变成POST 
	 */
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register() {
		return "test/registerForm";
	}
	/**
	 * 调用此方法之后，重定向到逻辑视图/../models/{name}(会继续访问相关方法)
	 */
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String addTestModel(TestModel testModel) {
		testDao.register(testModel);
		return "redirect:/models/" + 
					testModel.getName();
	}
	/**
	 * 访问/../models/{name}，例如/../models/{张三} 则会查询后找到张三，跳转到物理视图
	 * WEB-INF/jsp/test/modelDetail.jsp
	 */
	@RequestMapping(value="/{name}", method=RequestMethod.GET)
	public String getModelByName(@PathVariable("name") String name, Model model) {
		TestModel testModel = testDao.getModelByName(name);
		model.addAttribute("testModel", testModel);
		return "test/profile";
	}
	/**
	 * 和name类似，访问/../models/{age}，例如/../models/{23} 则会查询后找到23，跳转到物理视图
	 * WEB-INF/jsp/test/modelDetail.jsp
	 */
	@RequestMapping(value="/{age}", method=RequestMethod.GET)
	public String getModelByAge(@PathVariable("age") int age, Model model) {
		TestModel testModel = testDao.getModelByAge(age);
		model.addAttribute("testModel", testModel);
		return "test/profile";
	}
	
}
