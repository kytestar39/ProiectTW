CREATE OR REPLACE PACKAGE Logare
IS
  FUNCTION LOG_IN
  (
      username_log   IN VARCHAR2,
      parola_log IN VARCHAR2
    )RETURN VARCHAR2;

END Logare;

CREATE OR REPLACE PACKAGE BODY Logare
IS
    FUNCTION LOG_IN
    (
      username_log   IN VARCHAR2,
      parola_log IN VARCHAR2
    )RETURN VARCHAR2
  IS
    rol_user VARCHAR2(10);
  BEGIN
    SELECT rol INTO rol_user FROM client 
    WHERE parola=parola_log AND USERNAME=username_log;
    RETURN rol_user;
    EXCEPTION
    WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001,'Id-ul si parola nu exista in sistem');
  END ;

END Logare;
/