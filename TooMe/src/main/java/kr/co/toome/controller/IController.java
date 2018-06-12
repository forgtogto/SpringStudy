package kr.co.toome.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.toome.dao.IDao;
 

 
@Controller
public class IController {
 
	@Autowired
	private SqlSession sqlSession;
	
 
	@RequestMapping("/mybatis_list.jk")
	public String list(Model model) {
//		ArrayList<ContentDto> dtos = dao.listDao();
		IDao dao = sqlSession.getMapper(IDao.class);
//		ArrayList<ContentDto> dtos = dao.listDao();
		model.addAttribute("mybatis_list", dao.listDao());
		
		return "mybatis/mybatis_list";
	}
	
	@RequestMapping("/writeForm.jk")
	public String writeForm() {
		
		return "mybatis/writeForm";
	}
	
	
	@RequestMapping("/mybatis_write.jk")
	public String write(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.writeDao(request.getParameter("mWriter"), request.getParameter("mContent"));
		return "redirect:mybatis_list.jk";
	}
	
	@RequestMapping("/view.jk")
	public String view() {
		
		return "mybatis/mybatis_view";
	}
	
	@RequestMapping("/mybatis_delete.jk")
	public String delete(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("mId"));
		return "redirect:mybatis_list.jk";
	}
	
}
