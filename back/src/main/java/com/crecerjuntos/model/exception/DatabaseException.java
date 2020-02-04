package com.crecerjuntos.model.exception;

public class DatabaseException extends Exception {

  public DatabaseException(final String error) {
    super(error);
  }

  public DatabaseException(final String error, final Throwable cause) {
    super(error, cause);
  }
}
