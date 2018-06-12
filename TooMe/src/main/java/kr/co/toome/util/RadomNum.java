package kr.co.toome.util;

import java.util.ArrayList;
import java.util.Collections;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.toome.dao.QDao;
import kr.co.toome.dto.QDto;

public class RadomNum {
	
	@Autowired
	private SqlSession sqlSession;
	
	@SuppressWarnings("unused")
	private String random() {
		
		QDao dao = sqlSession.getMapper(QDao.class);
		QDto dto = new QDto();
		
		ArrayList<String> num = dao.getNumDao();
		Collections.shuffle(num);
		String getNo = num.get(0);
		
		
		return getNo;

	}
	

}
