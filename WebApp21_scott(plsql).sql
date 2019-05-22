SELECT USER
FROM DUAL;
--==>>SCOTT

DESC TBL_BOARD;

DECLARE
    V_CNT       NUMBER(9)      := 1;
    V_NAME      VARCHAR2(30);
    V_PWD       VARCHAR2(20);
    V_EMAIL     VARCHAR2(50);
    V_SUBJECT   VARCHAR2(100);
    V_CONTENT   VARCHAR2(4000);
    V_IPADDR    VARCHAR2(20);
    V_HITCOUNT  NUMBER;
    V_CREATED   DATE;
BEGIN
    LOOP
        EXIT WHEN V_CNT > 811;
        
        V_CNT := V_CNT+1;
        
        IF (MOD(V_CNT, 5)=0) THEN
            V_PWD:='java006$';
            V_CONTENT := '음식 관련 내용물 작성';
            V_IPADDR := '211.238.142.164';
        ELSIF (MOD(V_CNT, 3)=0) THEN
            V_PWD:='java004$';
            V_CONTENT:= '날씨 관련 내용물 작성';
            V_IPADDR:='211.238.142.154';
        ELSIF (MOD(V_CNT, 7)=0) THEN
            V_PWD:='java007$';
            V_CONTENT:= '화장 관련 내용물 작성';
            V_IPADDR:='211.238.142.172';
        ELSE
            V_PWD:='java008$';
            V_CONTENT:= '게임 관련 내용물 작성';
            V_IPADDR:='211.238.142.169';
        END IF;
        
        V_NAME := '유진석'|| LTRIM( TO_CHAR(V_CNT) );
        V_SUBJECT := '게시물 작성' || LTRIM( TO_CHAR(V_CNT) );
        
        IF (MOD(V_CNT, 2)=0) THEN
            V_CREATED := TO_DATE('2019-05-20', 'YYYY-MM-DD');
            V_EMAIL := 'apple@test.com';
            V_HITCOUNT := 27;
        ELSIF (MOD(V_CNT, 3)=0) THEN
            V_CREATED := TO_DATE('2019-05-20', 'YYYY-MM-DD');
            V_EMAIL := 'test@test.com';
            V_HITCOUNT :=32;
        ELSIF (MOD(V_CNT, 4)=0) THEN
            V_CREATED := TO_DATE('2019-05-20', 'YYYY-MM-DD');
            V_EMAIL := 'study@test.com';
            V_HITCOUNT :=46;
        ELSE
            V_CREATED := TO_DATE('2019-05-20', 'YYYY-MM-DD');
            V_EMAIL := 'morning@test.com';
            V_HITCOUNT :=72;
        END IF;
        
        INSERT INTO TBL_BOARD(NUM, NAME, PWD, EMAIL, SUBJECT, CONTENT, IPADDR, HITCOUNT,CREATED)
        VALUES (V_CNT, V_NAME, V_PWD, V_EMAIL, V_SUBJECT, V_CONTENT, V_IPADDR, V_HITCOUNT,V_CREATED);
        
    END LOOP;

END;


COMMIT;


SELECT *
FROM TBL_BOARD;







