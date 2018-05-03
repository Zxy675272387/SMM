package com.invoicing.manage.comment.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.LoggerFactory;

/**
 * 用户操作拦截器
 * @author WH
 *
 */
@Aspect
public class UserEventsAspect {

	private static org.slf4j.Logger logger = LoggerFactory.getLogger(UserEventsAspect.class);

	// com.snailf.platforms.sys.user.intf.service		

	/**
	 * @fun 拦截：插入时候
	 * @param jp
	 * @throws Exception
	 */
	@Before("execution(* com.invoicing.manage.service..*.insert*(..))")
	public void afterInsert(JoinPoint jp) throws Exception {

	}
	

	
	/**
	 * @fun 拦截：更新时候
	 * @param jp
	 * @throws Exception
	 */
	@Before("execution(* com.invoicing.manage.service..*.update*(..))")
	public void afterUpdate(JoinPoint jp) throws Exception {

	}
	
	
	
}
