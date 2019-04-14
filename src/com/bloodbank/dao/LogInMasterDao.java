package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.model.AccountDetail;

public interface LogInMasterDao {
	public List<AccountDetail> isValidLogin(AccountDetail ad);
	public boolean isValidStaff(AccountDetail ad);
	public List<AccountDetail> forgotPassword(AccountDetail ad);
}
