package com.ruru.bookRent.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ruru.bookRent.dao.UserDao;
import com.ruru.bookRent.model.UserDto;
import com.ruru.bookRent.service.UserService;
@Service
public class UserServiceImplV1 implements UserService{

	protected final UserDao userDao;
	public UserServiceImplV1(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public UserDto findUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserDto> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDto findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	// User 정보 insert (이름,전화번호 유효성 검사)
	@Override
	public int insert(UserDto userDto) {
		
		String userName = userDto.getU_name();
		String userTel = userDto.getU_tel();
		
		UserDto dto = null;
		dto = userDao.findUser(userName);
		if(dto != null ) {
			System.out.println("중복된 USER 이름입니다.");
		}
		dto = userDao.findUser(userTel);
		if(dto != null) {
			System.out.println("중복된 USER 전화번호입니다.");
		}
		return 0;
	}

	@Override
	public int update(UserDto userDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
