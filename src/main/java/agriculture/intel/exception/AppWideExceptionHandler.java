package main.java.agriculture.intel.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * ������֪ͨ
 */ 
@ControllerAdvice
public class AppWideExceptionHandler {
	
	/**
	 * Ĭ���쳣����ҳ��
	 */
	@ExceptionHandler(Exception.class)
	public String defaultHandler() {
		return "common/error";
	}
}
