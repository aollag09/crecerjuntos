package com.crecerjuntos.model.exception;

public class DataBaseException extends Exception {

  public DataBaseException(final String error) {
    super(error);
  }

  public DataBaseException(final String error, final Throwable cause) {
    super(error, cause);
  }
}
