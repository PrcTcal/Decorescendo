package com.capstone.test1.service;

import com.capstone.test1.logic.Members;

public interface UserService {

	Members getUserOne(String common);

	int userJoin(Members members);

}