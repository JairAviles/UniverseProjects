package com.fs.security.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.fs.bo.UserBo;
import com.fs.dao.UserDao;
import com.fs.security.bean.UserDetailsImpl;

public class UserDetailsServiceImpl implements UserDetailsService {
	private UserDao userDao;

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		UserBo userBo = null;
		UserDetailsImpl userDetails = null;

		userBo = userDao.getUser(username);
		if (userBo != null) {
			userDetails = new UserDetailsImpl(userBo.getUsername(),
					userBo.getPassword(), userBo.getRole());
		}

		return userDetails;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
