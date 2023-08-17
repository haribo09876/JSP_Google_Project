--사용자 계정 생성 및 계정 비밀번호 변경, 잠금 해제  (계정명 : scott / 패스워드 : tiger        계정명 : kyw / 패스워드 : Kyw12)
CREATE USER TEAMTHREE IDENTIFIED BY GOOGLE ACCOUNT UNLOCK;

--계정에 접근 가능 권한 부여 (생성한 사용자가 데이터베이스에 접속할 수 있도록 기본적인 시스템 권한 8가지를 부여)
--계정에 객체 생성 권한 설정 (생성한 사용자에 대하여 객체(테이블, 뷰, 인덱스등)을 생성할 수 있도록 시스템 권한을 부여)
GRANT CONNECT, RESOURCE, DBA TO TEAMTHREE;