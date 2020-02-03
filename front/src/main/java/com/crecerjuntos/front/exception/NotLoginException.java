package com.crecerjuntos.front.exception;

public class NotLoginException extends Exception {

  public NotLoginException() {
    super("User is not login");
  }
}
