SELECT USER
FROM DUAL;
--==>>SCOTT

--�� ���̺� ����
CREATE TABLE TBL_MEMBERLIST
( ID    VARCHAR2(30)
, PW    VARCHAR2(20) NOT NULL
, NAME  VARCHAR2(50) NOT NULL
, TEL   VARCHAR2(50) NOT NULL
, EMAIL VARCHAR2(100)
, CONSTRAINT MEMBERLIST_ID_PW PRIMARY KEY(ID)
, CONSTRAINT MEMBERLIST_TEL_UK UNIQUE(TEL)
);


INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL)
VALUES('superman', '1234', '���۸�', '010-1111-1111', 'superman@naver.com');

-->�� �� ó��
INSERT INTO TBL_MEMBERLIST(ID, PW, NAME, TEL, EMAIL) VALUES('superman', '1234', '���۸�', '010-1111-1111', 'superman@naver.com')
;

SELECT ID, PW, NAME, TEL, EMAIL FROM TBL_MEMBERLIST
;

commit;

DELETE
FROM TBL_MEMBERLIST;

