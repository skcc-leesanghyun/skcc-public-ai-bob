# Table Definition Document

## [Table Basic Information]
- Table Name: oco.anythingllm_vectors
- Korean Name: LLM 벡터 임베딩 및 메타데이터 저장
- Classification: Transaction
- Schema: oco

## [Table Purpose]
- LLM 벡터 임베딩 및 메타데이터 저장 정보를 관리한다.

## [Main Functions]
- 벡터 임베딩 데이터 저장 및 관리
- 원본 텍스트 내용과 벡터 매핑 관리
- 네임스페이스별 벡터 데이터 분류

## [Column Definition]

| Column Name | Type         | NOT NULL | PK | FK | Description                |
|-------------|--------------|----------|----|----|----------------------------|
| id          | varchar(36)  | N        | N  | N  | 벡터 ID                    |
| content     | text         | N        | N  | N  | 원본 텍스트 내용           |
| embedding   | vector       | N        | N  | N  | 임베딩 벡터 데이터         |
| namespace   | text         | N        | N  | N  | 네임스페이스               |
| source      | text         | N        | N  | N  | 데이터 소스                |
| metadata    | jsonb        | N        | N  | N  | 추가 메타데이터 (JSON)     |
| created_at  | timestamp    | N        | N  | N  | 생성 일시                  |

## [Constraints]
- (없음)

## [Indexes]
- (없음)

## [Related Tables]
- (없음)

## [Data Volume]
- Expected: 수천~수만 건 (벡터 데이터)
- 보관 정책: 필요에 따라 삭제 가능

## [Use Cases]
- AI/LLM 기반 검색 및 추천
- 텍스트 유사도 분석
- 벡터 기반 데이터 매칭

## [Business Rules]
- 벡터 데이터는 특정 형식을 준수해야 함
- 네임스페이스별로 데이터 분류 관리 