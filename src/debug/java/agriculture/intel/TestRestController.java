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
 * ����RESTful��ʽ��·��ӳ��
 *
 * @author Stephen Huge
 *
 * @date 2018��4��4������7:42:35
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
	 * Ĭ��GET����/../models ����ת��������ͼ WEB-INF/jsp/test/models.jsp
	 */
	@RequestMapping(method=RequestMethod.GET)
	public String getAllModels(ModelMap modelMap) {
		List<TestModel> testModels = testDao.getAllModels();
		modelMap.addAttribute("testModels", testModels);
		return "test/models";
	}
	/**
	 * GET�������� /../models/register ����ת��������ͼ WEB-INF/jsp/test/addTestModel.jsp
	 * �ڴ�ҳ���ύpost���������ָ��action�����Ĭ�Ϸ���/../models/registerForm·���£����Ƿ�������POST 
	 */
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register() {
		return "test/registerForm";
	}
	/**
	 * ���ô˷���֮���ض����߼���ͼ/../models/{name}(�����������ط���)
	 */
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String addTestModel(TestModel testModel) {
		testDao.register(testModel);
		return "redirect:/models/" + 
					testModel.getName();
	}
	/**
	 * ����/../models/{name}������/../models/{����} ����ѯ���ҵ���������ת��������ͼ
	 * WEB-INF/jsp/test/modelDetail.jsp
	 */
	@RequestMapping(value="/{name}", method=RequestMethod.GET)
	public String getModelByName(@PathVariable("name") String name, Model model) {
		TestModel testModel = testDao.getModelByName(name);
		model.addAttribute("testModel", testModel);
		return "test/profile";
	}
	/**
	 * ��name���ƣ�����/../models/{age}������/../models/{23} ����ѯ���ҵ�23����ת��������ͼ
	 * WEB-INF/jsp/test/modelDetail.jsp
	 */
	@RequestMapping(value="/{age}", method=RequestMethod.GET)
	public String getModelByAge(@PathVariable("age") int age, Model model) {
		TestModel testModel = testDao.getModelByAge(age);
		model.addAttribute("testModel", testModel);
		return "test/profile";
	}
	
}
