package kr.co.toome.dto;

import java.sql.Timestamp;

public class QDto {

	private int test_no;
	private String test_title;
	private String test_ex1;
	private String test_ex2;
	private String test_ex3;
	private String test_ex4;
	private String test_answer;
	private Timestamp test_date;

	public QDto() {
		// TODO 자동 생성된 생성자 스텁
	}

	public QDto(int test_no, String test_title, String test_ex1, String test_ex2, String test_ex3, String test_ex4,
			String test_answer, Timestamp test_date) {
		this.test_no = test_no;
		this.test_title = test_title;
		this.test_ex1 = test_ex1;
		this.test_ex2 = test_ex2;
		this.test_ex3 = test_ex3;
		this.test_ex4 = test_ex4;
		this.test_answer = test_answer;
		this.test_date = test_date;
		
	}

	public int getTest_no() {
		return test_no;
	}

	public void setTest_no(int test_no) {
		this.test_no = test_no;
	}

	public String getTest_title() {
		return test_title;
	}

	public void setTest_title(String test_title) {
		this.test_title = test_title;
	}

	public String getTest_ex1() {
		return test_ex1;
	}

	public void setTest_ex1(String test_ex1) {
		this.test_ex1 = test_ex1;
	}

	public String getTest_ex2() {
		return test_ex2;
	}

	public void setTest_ex2(String test_ex2) {
		this.test_ex2 = test_ex2;
	}

	public String getTest_ex3() {
		return test_ex3;
	}

	public void setTest_ex3(String test_ex3) {
		this.test_ex3 = test_ex3;
	}

	public String getTest_ex4() {
		return test_ex4;
	}

	public void setTest_ex4(String test_ex4) {
		this.test_ex4 = test_ex4;
	}

	public String getTest_answer() {
		return test_answer;
	}

	public void setTest_answer(String test_answer) {
		this.test_answer = test_answer;
	}

	public Timestamp getTest_date() {
		return test_date;
	}

	public void setTest_date(Timestamp test_date) {
		this.test_date = test_date;
	}

}


