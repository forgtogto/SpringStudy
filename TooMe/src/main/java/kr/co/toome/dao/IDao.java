package kr.co.toome.dao;

import java.util.ArrayList;

import kr.co.toome.dto.IDto;

public interface IDao {
	
	public ArrayList<IDto> listDao();
	public void writeDao(String mWriter, String mContent);
	public IDto viewDao(String strID);
	public void deleteDao(String bId);
	
}
