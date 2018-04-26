package main.java.agriculture.intel.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * 控制器通知
 */ 
@ControllerAdvice
public class AppWideExceptionHandler {
	
	/**
	 * 默认异常处理页面
	 */
	@ExceptionHandler(Exception.class)
	public String defaultHandler() {
		return "common/error";
	}
}
