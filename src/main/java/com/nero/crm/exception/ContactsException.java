package com.nero.crm.exception;

/**
 * @author Nero Claudius
 * @version 1.0.0
 * @Date 2022/2/18
 */
public class ContactsException extends RuntimeException{

    public ContactsException() {
    }

    public ContactsException(String message) {
        super(message);
    }
}
