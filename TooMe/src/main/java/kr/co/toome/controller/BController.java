package kr.co.toome.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.toome.dao.BDao;
 

/**
 * Servlet implementation class BoardFrontController
 */

@Controller
public class BController {

/*	BSystem system = null;
	private JdbcTemplate template;
	

	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}*/
	
 	@Autowired
	private SqlSession sqlSession;

 	
 	@RequestMapping("/write_view.jk")
 	public String write_view(Model model) {
 		System.out.println("write_view()");
 		
 		return "bBoard/write_view";
 	}
	
 	@RequestMapping("/list.jk")
 	public String list(Model model) {
 		System.out.println("list()");
 		
 		BDao dao = sqlSession.getMapper(BDao.class);
 		model.addAttribute("list", dao.listDao());
 		
 		return "bBoard/list";
 	} 
 	
	@RequestMapping("/write.jk")
	public String write(HttpServletRequest request, Model model) {
		System.out.println("write()");
		
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.writeDao(request.getParameter("bName"),
					 request.getParameter("bTitle"),
					 request.getParameter("bContent"));

		return "redirect:list.jk";
	}
	
	@RequestMapping("/content_view.jk")
	public String content_view(HttpServletRequest request, Model model){
		System.out.println("content_view()");
		
		BDao dao = sqlSession.getMapper(BDao.class);		
		//받아온 Bid 게시글에 히트 1 추가 함 
		dao.upHitDao(request.getParameter("bId"));	
		//히트 1이 추가된 같은 bid를 불러와서 화면에 뿌림 
		model.addAttribute("content_view", dao.contentViewDao(request.getParameter("bId")));

		return "bBoard/content_view";
	}
	
	@RequestMapping(value="/modify.jk", method=RequestMethod.POST )
	public String modify(HttpServletRequest request, Model model){
		System.out.println("modify()");
		
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.modifyDao(request.getParameter("bName"),
				 	  request.getParameter("bTitle"),
				 	  request.getParameter("bContent"),
				 	  Integer.parseInt(request.getParameter("bId")));
 
		return "redirect:list.jk";
	}
	
	@RequestMapping("/reply_view.jk")
	public String reply_view(HttpServletRequest request, Model model){
		System.out.println("reply_view()");
		
		BDao dao = sqlSession.getMapper(BDao.class);
		model.addAttribute("reply_view", dao.replyViewDao(request.getParameter("bId")));
 
		return "bBoard/reply_view";
	}
	
	@RequestMapping("/reply.jk")
	public String reply(HttpServletRequest request, Model model) {
		System.out.println("reply()");
		
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.replyShapeDao( Integer.parseInt(request.getParameter("bGroup")),
				 		   Integer.parseInt(request.getParameter("bStep")));
		
		dao.replyDao(
					 request.getParameter("bName"),
					 request.getParameter("bTitle"),
					 request.getParameter("bContent"),
					 Integer.parseInt(request.getParameter("bGroup")),
					 Integer.parseInt(request.getParameter("bStep")),
					 Integer.parseInt(request.getParameter("bIndent")) );
		
		return "redirect:list.jk";
	}
 
	@RequestMapping("/delete.jk")
	public String delete(HttpServletRequest request, Model model) {
		System.out.println("delete()");
		
		BDao dao = sqlSession.getMapper(BDao.class);
		dao.deleteDao(request.getParameter("bId"));
		
		return "redirect:list.jk";
	}


 
}
