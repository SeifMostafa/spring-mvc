package com.luv2code.springdemo.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator 
implements ConstraintValidator<CourseCode, String> {

	private String coursePrefix;
	@Override
	public boolean isValid(String theCode,
			ConstraintValidatorContext constraintValidatorContext) {
		if(theCode==null) return true;
		return theCode.startsWith(coursePrefix);
	}

	@Override
	public void initialize(CourseCode constraintAnnotation) {
		this.coursePrefix = constraintAnnotation.value();
	}

}
