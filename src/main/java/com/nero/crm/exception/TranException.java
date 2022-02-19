package com.nero.crm.exception;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
public class TranException extends RuntimeException{

    public TranException() {
    }

    public TranException(String message) {
        super(message);
    }
}
