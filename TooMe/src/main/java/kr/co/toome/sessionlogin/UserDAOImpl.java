package kr.co.toome.sessionlogin;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDao {
	
	@Inject
	SqlSession sqlSession;

	@Override
    public UserVO login(UserVO dto) {
        // Mapper의 namespace명.id : 자신에게 맞게 작성해서 넣는다.
        return sqlSession.selectOne("org.zerock.mapper.UserMapper.login", dto);
    } 

}
