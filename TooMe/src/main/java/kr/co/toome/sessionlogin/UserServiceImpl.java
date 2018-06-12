package kr.co.toome.sessionlogin;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Inject
	UserDao dao;

	@Override
	public UserVO login(UserVO dto) {
		return dao.login(dto);
	}
}
