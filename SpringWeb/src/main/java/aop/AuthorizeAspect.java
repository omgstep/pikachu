package aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class AuthorizeAspect {
   @Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * *(..))")
   private void handler(){}
   
   @Before("handler()")
   public void interceptMethod(JoinPoint jp) throws Exception{
	   
   }
}