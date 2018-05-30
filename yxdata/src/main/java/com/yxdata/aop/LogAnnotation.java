/**
 *
 */
package com.yxdata.aop;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author Administrator
 * @date 2018年5月30日 上午11:16:35
 * 
 */
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface LogAnnotation {
	
	
	String name() default "name default" ;
	
	String remark() default "remark";
	
	
	
	
	
	
	
	
	
	
}
