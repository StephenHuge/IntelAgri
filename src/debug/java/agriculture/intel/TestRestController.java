package debug.java.agriculture.intel;

import java.util.List;

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
					testModel.getId();
	}
	/**
	 * ����/../models/{id}������/../models/{1} ����ѯ���ҵ�id=1��model����ת��������ͼ
	 * WEB-INF/jsp/test/profile.jsp
	 */
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String load(@PathVariable Integer id, Model model) {
		TestModel testModel = testDao.load(id);
		model.addAttribute("testModel", testModel);
		return "test/profile";
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
	public String updateModel(@PathVariable int id, Model model) {
		TestModel testModel = testDao.load(id);
		model.addAttribute("testModel", testModel);
		return "test/updateAdmin";
	}
	@RequestMapping(value="/update/{id}", method=RequestMethod.POST)
	public String updateModel(TestModel testModel) {
		testDao.updateModel(testModel);
		return "redirect:/models";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String delModelByName(@PathVariable int id) {
		System.out.println("del it ");
		testDao.delModelById(id);
		System.out.println("del it ");
		return "redirect:/models";
	}
	
}
