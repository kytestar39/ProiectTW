CREATE OR REPLACE PACKAGE InregistrareUser
IS
   FUNCTION Inregistrare
    (
    p_nume IN varchar2 ,
    p_prenume IN varchar2,
    p_username IN varchar2,
    p_parola IN varchar2,
    p_e_mail IN varchar2,
    p_localitate IN varchar2,
    p_judet IN varchar2,
    p_tara IN varchar2,
    p_rol IN varchar2,
    p_data_creare IN varchar2 
    )RETURN VARCHAR2;  
END InregistrareUser;
/

CREATE OR REPLACE PACKAGE BODY InregistrareUser
IS
  FUNCTION Inregistrare
    (
    p_nume varchar2 ,
    p_prenume varchar2,
    p_username varchar2,
    p_parola varchar2,
    p_e_mail varchar2,
    p_localitate varchar2,
    p_judet varchar2,
    p_tara varchar2,
    p_rol varchar2,
    p_data_creare varchar2 
    ) RETURN VARCHAR2
  IS
    rol_user VARCHAR2(10);
  BEGIN
  insert into client 
  (
  nume ,
    prenume ,
    username ,
    parola ,
    e_mail ,
    localitate ,
    judet ,
    tara ,
    rol ,
    data_creare 
    )
  values
  (
  p_nume ,
    p_prenume ,
    p_username ,
    p_parola ,
    p_e_mail ,
    p_localitate ,
    p_judet ,
    p_tara ,
    p_rol ,
    p_data_creare  
  );
    RETURN rol_user;
    EXCEPTION
    WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001,'Datele introduse nu sunt corecte!');
  END ;

END InregistrareUser;
/