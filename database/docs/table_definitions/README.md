# 테이블 정의서 (Table Definitions)

## 개요
이 폴더는 AGS 운영관리 시스템의 모든 테이블에 대한 상세 정의서를 포함합니다. 각 스키마별로 구분되어 있으며, 표준화된 형식으로 작성되어 있습니다.

## 스키마 구조

### 📁 [AGS (AGS Management System)](./ags/)
**프로젝트 관리 및 계약 관리 시스템**

- **주요 기능**: 프로젝트 관리, 계약 관리, 인력 소싱 업체 관리
- **테이블 수**: 15개
- **주요 테이블**:
  - `project_info` - 프로젝트 기본 정보
  - `project_execution_plan` - 프로젝트 수행계획서
  - `project_contract` - 프로젝트 계약 정보
  - `agency_info` - 인력 소싱 업체 정보
  - `eai_project_info` - EAI 연동 프로젝트 정보

### 📁 [ATS (ATS HR Center)](./ats/)
**인력 관리 및 리소스 할당 시스템**

- **주요 기능**: 인력 관리, 리소스 할당, 견적 관리, 센터 관리
- **테이블 수**: 23개
- **주요 테이블**:
  - `resource_info` - 인력 기본 정보
  - `resource_assignment` - 프로젝트별 인력 투입
  - `project_estimate` - 프로젝트 견적서
  - `center_info` - 작업 센터 정보
  - `resource_skill` - 인력별 스킬 정보

### 📁 [OCO (Operation Control Office)](./oco/)
**운영 관리 및 시스템 관리**

- **주요 기능**: 사용자 권한 관리, 공통 코드 관리, 게시판 관리, 시스템 로그
- **테이블 수**: 49개
- **주요 테이블**:
  - `oco10100` - 사용자 기본 정보
  - `oco20100` - 공통 코드 그룹 관리
  - `oco30100` - 게시판 정보
  - `oco40100` - 시스템 설정
  - `oco50100` - 임직원 인사 정보

## 테이블 분류

### Master 테이블 (기준 정보)
- 시스템의 기준이 되는 정보를 저장
- 예: 사용자 정보, 프로젝트 정보, 코드 정보 등

### Transaction 테이블 (거래 정보)
- 업무 처리 과정에서 발생하는 거래 정보
- 예: 프로젝트 투입, 견적서, 게시글 등

### History 테이블 (이력 정보)
- 데이터 변경 이력 및 감사 추적용
- 예: 권한 변경 이력, 로그인 이력 등

### Code 테이블 (코드 정보)
- 공통 코드 및 분류 코드
- 예: 공통 코드, 상태 코드 등

### Interface 테이블 (인터페이스)
- 외부 시스템과의 연동용
- 예: EAI 연동 테이블

## 문서 작성 표준

모든 테이블 정의서는 다음 표준 형식을 따릅니다:

```markdown
# Table Definition Document

## [Table Basic Information]
- Table Name: [schema].[table_name]
- Korean Name: [한글명]
- Classification: [Master/Transaction/History/Code/Interface]
- Schema: [ags/ats/oco]

## [Table Purpose]
- [테이블의 주요 목적과 역할]

## [Main Functions]
- [주요 기능 목록]

## [Column Definition]
| Column Name | Type | NOT NULL | PK | FK | Description |
|-------------|------|----------|----|----|-------------|

## [Constraints]
- [제약조건 목록]

## [Indexes]
- [인덱스 목록]

## [Related Tables]
- [관련 테이블 정보]

## [Data Volume]
- Expected: [예상 데이터량]
- [보관 정책]

## [Use Cases]
- [활용 사례]

## [Business Rules]
- [비즈니스 규칙]
```

## 검색 및 활용 가이드

### 테이블 찾기
1. **스키마별 검색**: 기능별로 해당 스키마 폴더 탐색
2. **README 활용**: 각 스키마의 README.md에서 테이블 목록 확인
3. **명명 규칙**: OCO 스키마는 숫자 코드, AGS/ATS는 의미있는 이름 사용

### 연관 테이블 파악
- 각 테이블 정의서의 "Related Tables" 섹션 참조
- FK 관계를 통한 데이터 흐름 파악
- ERD 다이어그램과 함께 활용

### 비즈니스 규칙 이해
- "Business Rules" 섹션에서 업무 로직 확인
- "Use Cases"에서 실제 활용 사례 파악

## 데이터베이스 설계 원칙

### 명명 규칙
- **테이블명**: 소문자, 언더스코어 구분
- **컬럼명**: 의미 있는 영문명, 최대 3단어
- **인덱스명**: `[테이블명]_ix[번호]` 또는 `[테이블명]_ux[번호]`

### 표준 컬럼
모든 테이블은 다음 표준 컬럼을 포함:
- `created_at` - 생성일시
- `updated_at` - 수정일시  
- `created_by` - 생성자
- `updated_by` - 수정자

### 데이터 타입 가이드라인
- **문자열**: VARCHAR (최대 길이 명시)
- **긴 텍스트**: TEXT
- **날짜/시간**: TIMESTAMP
- **숫자**: NUMERIC (정밀도 명시), INT4
- **불린**: BOOLEAN 또는 VARCHAR(1) with 'Y'/'N'

## 관련 문서
- [데이터베이스 가이드](../guides/README.md)
- [PostgreSQL 오브젝트 설계 가이드](../guides/postgresql_object_guide.md)
- [테이블 정의서 작성 가이드](../guides/table_definition_template.md)
- [DDL 스크립트](../../schemas/)

## 업데이트 이력
- 각 스키마별 README.md에서 상세 변경 이력 확인
- 새 테이블 추가 시 해당 스키마 README.md 업데이트 필수

---

> 💡 **Tip**: 새로운 테이블 설계 시 기존 유사 테이블의 정의서를 참조하여 일관성을 유지하세요.
> 
> 📋 **Note**: 모든 테이블 정의서는 [테이블 정의서 작성 가이드 Guide](../guides/table_definition_template.md) 템플릿을 기반으로 작성되었습니다. 