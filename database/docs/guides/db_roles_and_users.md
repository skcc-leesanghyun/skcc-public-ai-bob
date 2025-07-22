<!--
Purpose: AGS 운영관리 시스템의 DB 사용자/역할/권한 관리 가이드
Scope: AGS 운영관리 시스템의 DB 사용자 및 권한 관리 시 적용
-->

# DB 역할 및 사용자 관리 가이드

이 문서는 AGS 운영관리 시스템의 데이터베이스(DB) 역할, 사용자, 권한 관리 원칙과 실제 적용 예시를 안내합니다. 실제 SQL 스크립트는 [`create_roles_and_users.sql`](./create_roles_and_users.sql)을 참고하세요.

## 1. 목적
- 데이터베이스 보안 및 운영 효율성을 위해 역할(Role) 기반 권한 관리 체계를 적용합니다.
- 개발, 운영, 외부 연동(EAI) 등 목적별로 최소 권한 원칙을 준수합니다.

## 2. 역할 및 사용자 설계 원칙
- **Admin Role**: 스키마/테이블/시퀀스 생성, 변경, 삭제 등 모든 DDL 권한 보유
- **Developer Role**: 데이터 조회/입력/수정/삭제(DML) 권한만 보유
- **EAI Role**: 외부 연동용 인터페이스 테이블에 한정된 CRUD 권한 부여
- 각 역할별로 별도의 사용자 계정 생성 및 역할(Role) 할당
- 실제 비밀번호는 운영 환경에서 별도 관리(버전 관리 금지)

## 3. 권한 부여 예시
- 실제 SQL 예시는 [`create_roles_and_users.sql`](./create_roles_and_users.sql) 파일을 참고하세요.
- 주요 예시:
  - 스키마별 역할 생성 및 권한 부여
  - 기본 객체(테이블/시퀀스) 및 향후 생성 객체에 대한 권한 자동 부여
  - 역할별 사용자 계정 생성 및 역할 할당
  - 외부 연동(EAI) 전용 테이블에 한정된 권한 부여

```sql
-- Admin Role 생성 및 권한 부여 예시
CREATE ROLE ags_admin_role;
GRANT ALL PRIVILEGES ON SCHEMA AGS TO ags_admin_role;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA AGS TO ags_admin_role;

-- Developer Role 생성 및 권한 부여 예시
CREATE ROLE ags_developer_role;
GRANT USAGE ON SCHEMA AGS TO ags_developer_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA AGS TO ags_developer_role;

-- 사용자 계정 생성 및 역할 할당 예시
CREATE USER ags_admin WITH PASSWORD 'Admin****' IN ROLE ags_admin_role;
CREATE USER ags_developer WITH PASSWORD 'Dev****' IN ROLE ags_developer_role;
```

> **전체 SQL 스크립트 및 상세 예시는 [`create_roles_and_users.sql`](./create_roles_and_users.sql) 파일을 반드시 참고하세요.**

## 4. 보안 및 운영 주의사항
- 운영 환경에서는 반드시 강력한 비밀번호 정책을 적용하고, 비밀번호는 별도 안전한 경로로 관리합니다.
- 불필요한 권한 부여를 금지하며, 최소 권한 원칙(Principle of Least Privilege)을 준수합니다.
- 권한 변경/추가/삭제 시 반드시 변경 이력을 남기고, 관련자 승인 후 적용합니다.

## 5. 변경 이력
| 버전 | 일자 | 작성자 | 변경 내용 | 비고 |
|-------|------------|----------|-----------------------------|------|
| 1.0   | 2024-06-16 | 관리자   | 최초 작성 및 SQL 예시 추가 |      |
| 1.1   | 2024-06-16 | 관리자   | create_roles_and_users.sql 연동, 보안 주의사항 보강 |      | 