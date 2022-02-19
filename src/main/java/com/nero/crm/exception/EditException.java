package com.nero.crm.exception;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/16
 */
public class EditException extends RuntimeException{

    public EditException() {
    }

    public EditException(String message) {
        super(message);
    }
}
