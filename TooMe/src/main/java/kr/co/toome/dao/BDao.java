package kr.co.toome.dao;

import java.util.ArrayList;

import kr.co.toome.dto.BDto;

public interface BDao {

	public ArrayList<BDto> listDao();
	public void writeDao(String parameter, String parameter2, String parameter3);
	public BDto contentViewDao(String parameter);
	public void upHitDao(String parameter);
	public void modifyDao(String parameter, String parameter2, String parameter3, int parameter4);
	public Object replyViewDao(String parameter);
	public void replyDao(String parameter, String parameter2, String parameter3, int parseInt, int parseInt2, int parseInt3);
	public void replyShapeDao(int parameter, int parameter2);
	public void deleteDao(String parameter);
 
}