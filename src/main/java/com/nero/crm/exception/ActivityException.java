package com.nero.crm.exception;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/17
 */
public class ActivityException extends RuntimeException{

    public ActivityException() {
    }

    public ActivityException(String message) {
        super(message);
    }
}
