SELECT USER
FROM DUAL;
--==>>SCOTT

SELECT *
FROM TAB;

-- 기존 테이블 제거
DROP TABLE TBL_MEMBER PURGE;
--==>>Table TBL_MEMBER이(가) 삭제되었습니다.

-- 기존 시퀀스 제거
DROP SEQUENCE MEMBERSEQ;
--==>>Sequence MEMBERSEQ이(가) 삭제되었습니다.

------------------------------------------------------------------------------------------------

--○ 실습 테이블 생성(TBL_MEMBER)
CREATE TABLE TBL_MEMBER
( SID   NUMBER
, NAME  VARCHAR2(30)
, TEL   VARCHAR2(40)
, CONSTRAINT MEMBER_SID_PK  PRIMARY KEY(SID)
);
--==>>Table TBL_MEMBER이(가) 생성되었습니다.

--○ 시퀀스 생성
CREATE SEQUENCE MEMBERSEQ
NOCACHE;
--==>>Sequence MEMBERSEQ이(가) 생성되었습니다.

--○ 데이터 입력 쿼리문 구성
INSERT INTO TBL_MEMBER(SID, NAME, TEL) VALUES(MEMBERSEQ.NEXTVAL, '조현우', '010-1111-1111');
--> 한 줄 구성
INSERT INTO TBL_MEMBER(SID, NAME, TEL) VALUES(MEMBERSEQ.NEXTVAL, '조현우', '010-1111-1111')
;
--==>>1 행 이(가) 삽입되었습니다.

--○ 테이블 전체 조회 쿼리문 구성
SELECT SID,NAME,TEL
FROM TBL_MEMBER;
--> 한 줄 구성
SELECT SID,NAME,TEL FROM TBL_MEMBER
;

--○ 인원 수 확인 쿼리문 구성
SELECT COUNT(*)
FROM TBL_MEMBER;
-->한 줄 구성
SELECT COUNT(*) FROM TBL_MEMBER
;

--○ 커밋
COMMIT;
--==>>커밋 완료.

--○ 데이터 추가 입력
INSERT INTO TBL_MEMBER(SID, NAME, TEL) VALUES(MEMBERSEQ.NEXTVAL, '곽한얼', '010-2222-2222');
--==>>1 행 이(가) 삽입되었습니다.

--○ 커밋
COMMIT;
--==>>커밋 완료.


