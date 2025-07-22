<!--
Purpose: 테이블 정의서 표준 템플릿 및 작성 가이드
Scope: AGS 운영관리 시스템의 모든 테이블 정의서 작성 시 적용
-->

# 테이블 정의서 작성 가이드

# Table Definition Document Template

## [Table Basic Information]
- Table Name: [schema].[table_name]
- Korean Name: [한글명]
- Classification: [Master/Transaction/History/Code/Interface]
- Schema: [ags/ats/oco]

## [Table Purpose]
- [테이블의 주요 목적과 역할]

## [Main Functions]
- [주요 기능 1]
- [주요 기능 2]
- [주요 기능 3]

## [Column Definition]

| Column Name | Type | NOT NULL | PK | FK | Description |
|-------------|------|----------|----|----|-------------|
| [column_name] | [type] | [Y/N] | [Y/N] | [Y/N] | [description] |

## [Constraints]
- [제약조건 1]
- [제약조건 2]

## [Indexes]
- [인덱스 1]
- [인덱스 2]

## [Related Tables]
- [상위/하위 테이블 정보]

## [Data Volume]
- Expected: [예상 데이터량]
- [보관 정책]

## [Use Cases]
- [활용 사례 1]
- [활용 사례 2]
- [활용 사례 3]

## [Business Rules]
- [비즈니스 규칙 1]
- [비즈니스 규칙 2] 