package com.nero.crm.exception;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
public class LoginException extends RuntimeException{

    public LoginException() {
    }

    public LoginException(String message) {
        super(message);
    }
}
