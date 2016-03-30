package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.model.AccountDetail;



public interface AccountDetailDao {
	public boolean isAccountInserted(AccountDetail ad);
	public List<AccountDetail> isValidLogin(AccountDetail ad);
	
}
