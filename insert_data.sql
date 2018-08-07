DECLARE
  I NUMBER;
  J NUMBER;
  N NUMBER;
BEGIN 
  FOR I IN 1..10
  LOOP
    INSERT INTO TEMP1 VALUES(I);
  END LOOP;
  
  FOR J IN 1 ..240000
    LOOP
      if(j <= 80000) then      
        INSERT INTO TEMP2 VALUES (J,1,'A'||TO_CHAR(j));
      elsif(j between 80001 and 160000)then
        INSERT INTO TEMP2 VALUES (J,2,'B'||TO_CHAR(j));
      else
        INSERT INTO TEMP2 VALUES (J,3,'C'||TO_CHAR(j));
      end if;
    END LOOP;
 COMMIT;
END;