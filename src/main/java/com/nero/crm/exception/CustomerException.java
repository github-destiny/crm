package com.nero.crm.exception;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
public class CustomerException extends RuntimeException{

    public CustomerException() {
    }

    public CustomerException(String message) {
        super(message);
    }
}
