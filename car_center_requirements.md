# 카센터 웹앱 시스템 요구사항

## 1. 프로젝트 개요

### 1.1 시스템 목적
- 고객이 온라인으로 자동차 정비를 예약할 수 있는 웹 플랫폼
- 수리비 결제 및 정비 진행상황 관리 시스템
- 카센터 운영 효율성 향상 및 고객 편의성 제공

### 1.2 주요 사용자
- **고객**: 차량 정비가 필요한 일반 사용자
- **카센터 직원**: 정비사, 상담직원, 관리자
- **시스템 관리자**: 전체 시스템 관리 및 운영

## 2. 기능적 요구사항

### 2.1 사용자 관리
#### 고객 기능
- 회원가입/로그인 (이메일, 소셜로그인)
- 개인정보 관리 (이름, 연락처, 주소)
- 차량정보 등록 및 관리 (차종, 연식, 번호판, 주행거리)
- 정비이력 조회
- 알림 설정 (SMS, 이메일, 푸시)

#### 카센터 직원 기능
- 직원 계정 관리 (권한별 접근제어)
- 고객 정보 조회 및 수정
- 정비 일정 관리
- 작업 진행상황 업데이트

### 2.2 예약 시스템
#### 예약 프로세스
- 정비 항목 선택 (엔진오일교환, 브레이크패드교체, 정기점검 등)
- 날짜/시간 선택 (실시간 예약가능 시간 확인)
- 차량 정보 입력/선택
- 추가 요청사항 입력
- 예약 확정 및 확인서 발송

#### 예약 관리
- 예약 조회/수정/취소
- 예약 리마인드 알림

### 2.3 정비 관리
#### 정비 프로세스
- 차량 입고 확인
- 사전 점검 및 견적 작성
- 고객 견적 승인/거부
- 정비 작업 진행
- 완료 검수 및 인도

#### 진행상황 추적
- 실시간 정비 상태 업데이트
- 단계별 진행률 표시
- 예상 완료시간 안내
- 추가 수리 발견 시 고객 승인 요청


### 2.4 견적 및 가격 관리
- 정비 항목별 표준 가격표
- 차종별/연식별 가격 차등
- 부품비/공임비 분리 표시
- 할인 쿠폰/이벤트 적용

## 3. 비기능적 요구사항

### 3.1 성능 요구사항
- 페이지 로딩 시간: 3초 이내
- 동시 접속자: 최소 500명 지원
- 시스템 가용성: 99.5% 이상
- 데이터베이스 응답시간: 1초 이내

### 3.2 보안 요구사항
- SSL/TLS 암호화 통신
- 개인정보 암호화 저장
- 접근 권한 관리 (RBAC)
- 로그인 실패 시 계정 잠금
- 정기적 보안 업데이트

### 3.3 사용성 요구사항
- 반응형 웹 디자인 (모바일 최적화)
- 직관적인 UI/UX
- 접근성 지침 준수 (WCAG 2.1)
- 다국어 지원 (한국어, 영어)
- 브라우저 호환성 (Chrome, Safari, Edge, Firefox)

### 3.4 확장성 요구사항
- 마이크로서비스 아키텍처 고려
- API 기반 모듈화
- 클라우드 인프라 지원
- 수평적 확장 가능

## 4. 시스템 아키텍처

### 4.1 기술 스택 제안
#### Frontend
- React.js
- TypeScript
- Tailwind CSS
- PWA 지원

#### Backend
- Java (Springboot)
- RESTful API 
- JWT 인증

#### Database
- 주 데이터베이스: PostgreSQL
- 캐시: Redis
- 파일 저장소: Azure File Share

#### 인프라
- 클라우드 플랫폼: Azure
- 컨테이너: Docker
- CI/CD: GitHub Actions 

### 4.2 외부 연동
- SMS/알림톡 서비스 (알리고, 네이버 클라우드)
- 지도 API (카카오맵, 네이버맵)


## 5. 데이터 모델

### 5.1 주요 엔티티
- **사용자** (User): 고객, 직원 정보
- **차량** (Vehicle): 차량 정보 및 소유자
- **예약** (Reservation): 정비 예약 정보
- **정비항목** (ServiceItem): 제공 서비스 목록
- **견적** (Quote): 견적서 및 가격 정보
- **정비이력** (ServiceHistory): 과거 정비 기록







