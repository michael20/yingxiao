/**
 *
 */
package com.yxdata.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author Administrator
 * @date 2018年5月30日 上午11:21:09
 * 
 */
@Component
@Aspect
public class LogAop {
	
	
	
	@Pointcut("@annotation(com.yxdata.aop.LogAnnotation)")
	public void logAopTest() {}
	
	
	@Before("logAopTest()")
	public void before() {
		System.out.println("##########before################");
	}

}
