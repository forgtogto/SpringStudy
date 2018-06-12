package kr.co.toome.dao;

import java.util.ArrayList;

import kr.co.toome.dto.QDto;

public interface QDao {

 
	public ArrayList<QDto> testviewDao();
	public void createTestDao(String parameter, String parameter2, String parameter3, String parameter4, String parameter5);
	public void deleteTestDao(String parameter);
	public void modifyTestDao(String parameter, String parameter2, String parameter3, String parameter4, String parameter5, int parameter6);
	public Object readModifyDao(String parameter);
	public ArrayList<String> getNumDao();
	public QDto paperDao(String object);
	public Object paperrandomDao();
	public String getex1Dao(String getNo);
	public String getex2Dao(String getNo);
	public String getex3Dao(String getNo);
	public String getex4Dao(String getNo);
 
 
 
 
	
}

/*
문구 통일하자

문제 작성: createTest
시험지 작성 : createPaper
전체 문제 리스트 : listTestAll

디비 정보 
table name = papertest
test_no 		int(11) AI PK 
test_title 		varchar(500) 
test_ex1 		varchar(500) 
test_ex2 		varchar(500) 
test_ex3 		varchar(500) 
test_ex4 		varchar(500) 
test_answer 	varchar(500) 
test_date 		timestamp

*/