package kr.co.toome.controller;
 

import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.toome.dao.QDao;
 
 
@Controller
public class QController {
	
	//마이바티스를 주입해보자
	@Autowired
	private SqlSession sqlSession;
	
	//만든 문제를 봐보자
	@RequestMapping("/test_view.jk")
	public String testView(Model model) {
		System.out.println("test_view()");
		
		QDao dao = sqlSession.getMapper(QDao.class);
		model.addAttribute("test_view", dao.testviewDao());
		
		return "paper/test_view";
	}
	
	//문제만들 폼을 불러와 보자
	@RequestMapping("/createTest_view.jk")
	public String writeView(Model model) {
		System.out.println("createTest_view()");
		return "paper/createTest_view";
	}
	
	//문제만든 폼에서 디비에 저장해 보자 
	@RequestMapping("/createTest.jk")
	public String write(HttpServletRequest request, Model model) {
		System.out.println("createTest()");
		
		QDao dao = sqlSession.getMapper(QDao.class);
		dao.createTestDao(request.getParameter("test_title"),
					      request.getParameter("test_ex1"),
						  request.getParameter("test_ex2"),
					 	  request.getParameter("test_ex3"),
						  request.getParameter("test_ex4"));
		
		return "redirect:test_view.jk";
	}
	
	//만든문제를 삭제해 보자
	@RequestMapping("/deleteTest.jk")
	public String delete(HttpServletRequest request, Model model) {
		QDao dao = sqlSession.getMapper(QDao.class);
		dao.deleteTestDao(request.getParameter("test_no"));
		return "redirect:test_view.jk";
	}
	
	//수정 폼을 불러와 보자
	@RequestMapping("/modifyTest_view.jk")
	public String modifyView(HttpServletRequest request, Model model) {
		System.out.println("modifyTest_view()");
		
		QDao dao = sqlSession.getMapper(QDao.class);
		model.addAttribute("modifyTest_view", dao.readModifyDao(request.getParameter("test_no")));
		
		return "paper/modifyTestView";
	}
	
	//만든 문제를 수정해 보자 
	@RequestMapping(value="/modifyTest.jk", method=RequestMethod.POST)
	public String modify(HttpServletRequest request, Model model) {
		QDao dao = sqlSession.getMapper(QDao.class);
		dao.modifyTestDao(request.getParameter("test_title"),
						  request.getParameter("test_ex1"),
						  request.getParameter("test_ex2"),
						  request.getParameter("test_ex3"),
						  request.getParameter("test_ex4"),
						  Integer.parseInt( request.getParameter("test_no")));
		
		return "redirect:test_view.jk";
	
	}
 
 	//문제를   추출 해보자
	@RequestMapping("/paper_view.jk")
	public String paperView(HttpServletRequest request, Model model ) {
		System.out.println("paper_view()");
		
		QDao dao = sqlSession.getMapper(QDao.class);
		ArrayList<String> num = dao.getNumDao();
		Collections.shuffle(num);
		String getNo = num.get(0);
		
		//랜덤으로 불러온 번호의 보기들을 불러와서 보기들을 섞음
		ArrayList<String> exies = new ArrayList<String>();
		
			exies.add(dao.getex1Dao(getNo));
			exies.add(dao.getex2Dao(getNo));
			exies.add(dao.getex3Dao(getNo));
			exies.add(dao.getex4Dao(getNo));
		
		Collections.shuffle(exies);
		String choice = exies.toString().replace("[", "").replace("]", "").replace(" ", ""); 
 
		model.addAttribute("exies_view", choice);
		model.addAttribute("paper_view", dao.paperDao(getNo));

		return "paper/paperView";
	} 
 
 
	//결과페이지를 만들자
	@RequestMapping(value="/testresult.jk", method=RequestMethod.POST)
	public String testResult(HttpServletRequest request, Model model) {
		 
		String answer = request.getParameter("caUse");
		String ex4 = request.getParameter("ex4");
		
		String msg = "";
		
		
		System.out.println(answer+","+ ex4);
		
		if(answer.equals(ex4))
		{
			msg = "정답입니다.";
		}
		else {
			msg = "오답입니다. 정답은"+ex4+"입니다.";
		}

		model.addAttribute("msg", msg);
		
		return "paper/resultView";
	
	}
 
 
	
	
	/*
	문구 통일하자

	문제 작성폼: createTest_view
	문제 작성버튼: createTest
	시험지 작성 : createPaper
	전체 문제 리스트 : test_view 

	디비 정보 
	table name = papertest
	test_no 		int(11) AI PK 
	test_title 		varchar(500) 
	test_ex1 		varchar(500) 
	test_ex2 		varchar(500) 
	test_ex3 		varchar(500) 
	test_ex4 		varchar(500) 
	test_date 		timestamp

	*/
	
	//방법 1:  랜덤으로 불러오는 쿼리를 써서 바로 번호를 불러온다.
/*		QDao dao = sqlSession.getMapper(QDao.class);		 
	model.addAttribute("modifyTest_view", dao.paperDao(dao.paperrandomDao()));*/
	
/*		//방법 2 : 번호를 전부 어레이에 담아서 셔플로 돌린수 그 번호를 불러오는 형태 
	QDao dao = sqlSession.getMapper(QDao.class);
	ArrayList<String> num = dao.getNumDao();
	Collections.shuffle(num);
	String getNo = num.get(0);
	
	model.addAttribute("modifyTest_view", dao.paperDao(getNo));*/

}

