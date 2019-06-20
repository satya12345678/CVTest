package com.sss.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.sss.bean.EmployeeVO;


@Component
public class EmployeeValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
		// TODO Auto-generated method stub
		return EmployeeVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "fname", "error.fname", "Firstname is Required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lname", "error.lname", "Last name is required.");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "error.email", "Email is required.");
	}

}
