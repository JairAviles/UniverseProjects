package com.fs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.fs.bo.UserBo;

public class UserDao {
	private final String SQL_GET_USER_BY_NAME = "SELECT USER_NM, PASSWORD, ROLE FROM USERS WHERE USER_NM = ?";
	private JdbcTemplate jdbcTemplate;

	public UserDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public UserBo getUser(String username) {
		return jdbcTemplate.queryForObject(SQL_GET_USER_BY_NAME,
				new RowMapper<UserBo>() {
					@Override
					public UserBo mapRow(ResultSet rs, int index)
							throws SQLException {
						UserBo user = new UserBo();
						user.setUsername(rs.getString("USER_NM"));
						user.setPassword(rs.getString("PASSWORD"));
						user.setRole(rs.getString("ROLE"));
						return user;
					}
				}, new Object[] { username });
	}
}
