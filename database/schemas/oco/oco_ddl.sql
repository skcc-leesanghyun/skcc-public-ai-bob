-- oco.anythingllm_vectors definition

-- Drop table

-- DROP TABLE oco.anythingllm_vectors;

CREATE TABLE oco.anythingllm_vectors (
	id varchar(36) NULL, -- 벡터 ID
	"content" text NULL, -- 원본 텍스트 내용
	embedding public.vector NULL, -- 임베딩 벡터 데이터
	"namespace" text NULL, -- 네임스페이스
	"source" text NULL, -- 데이터 소스
	metadata jsonb NULL, -- 추가 메타데이터 (JSON)
	created_at timestamp NULL -- 생성 일시
);
COMMENT ON TABLE oco.anythingllm_vectors IS 'LLM 벡터 임베딩 및 메타데이터 저장 테이블';

-- Column comments

COMMENT ON COLUMN oco.anythingllm_vectors.id IS '벡터 ID';
COMMENT ON COLUMN oco.anythingllm_vectors."content" IS '원본 텍스트 내용';
COMMENT ON COLUMN oco.anythingllm_vectors.embedding IS '임베딩 벡터 데이터';
COMMENT ON COLUMN oco.anythingllm_vectors."namespace" IS '네임스페이스';
COMMENT ON COLUMN oco.anythingllm_vectors."source" IS '데이터 소스';
COMMENT ON COLUMN oco.anythingllm_vectors.metadata IS '추가 메타데이터 (JSON)';
COMMENT ON COLUMN oco.anythingllm_vectors.created_at IS '생성 일시';


-- oco.oco10100 definition

-- Drop table

-- DROP TABLE oco.oco10100;

CREATE TABLE oco.oco10100 (
	userid varchar(50) NOT NULL, -- 사용자 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	user_nm varchar(30) NULL, -- 사용자 이름
	conn_psswd varchar(256) NULL, -- 접속 비밀번호
	psswd_expir_dt varchar(8) NULL, -- 비밀번호 만료일
	user_cont_phno varchar(14) NULL, -- 연락처
	user_emailaddr varchar(100) NULL, -- 이메일 주소
	deptcd varchar(6) NULL, -- 부서 코드
	reofo_cd varchar(3) NULL, -- 지역 코드
	vctn_cd varchar(3) NULL, -- 직급 코드
	cucen_team_cd varchar(6) NULL, -- 담당 팀 코드
	ofcps_cd varchar(4) NULL, -- 직책 코드
	user_group_cd varchar(1) NULL, -- 사용자 그룹 코드
	inner_user_cl_cd varchar(1) NULL, -- 내부 사용자 구분 코드
	user_ident_no varchar(10) NULL, -- 사용자 식별 번호
	userid_sts_cd varchar(1) NULL, -- 사용자 상태 코드
	fst_reg_dtmd timestamp NULL, -- 최초 등록 일시
	psswd_err_frqy int4 NULL, -- 비밀번호 오류 횟수
	user_ipaddr varchar(16) NULL, -- 사용자 IP 주소
	CONSTRAINT oco10100_pk PRIMARY KEY (userid)
);
CREATE UNIQUE INDEX oco10100_ux1 ON oco.oco10100 USING btree (user_emailaddr);
COMMENT ON TABLE oco.oco10100 IS '사용자 기본 정보 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10100.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10100.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10100.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10100.user_nm IS '사용자 이름';
COMMENT ON COLUMN oco.oco10100.conn_psswd IS '접속 비밀번호';
COMMENT ON COLUMN oco.oco10100.psswd_expir_dt IS '비밀번호 만료일';
COMMENT ON COLUMN oco.oco10100.user_cont_phno IS '연락처';
COMMENT ON COLUMN oco.oco10100.user_emailaddr IS '이메일 주소';
COMMENT ON COLUMN oco.oco10100.deptcd IS '부서 코드';
COMMENT ON COLUMN oco.oco10100.reofo_cd IS '지역 코드';
COMMENT ON COLUMN oco.oco10100.vctn_cd IS '직급 코드';
COMMENT ON COLUMN oco.oco10100.cucen_team_cd IS '담당 팀 코드';
COMMENT ON COLUMN oco.oco10100.ofcps_cd IS '직책 코드';
COMMENT ON COLUMN oco.oco10100.user_group_cd IS '사용자 그룹 코드';
COMMENT ON COLUMN oco.oco10100.inner_user_cl_cd IS '내부 사용자 구분 코드';
COMMENT ON COLUMN oco.oco10100.user_ident_no IS '사용자 식별 번호';
COMMENT ON COLUMN oco.oco10100.userid_sts_cd IS '사용자 상태 코드';
COMMENT ON COLUMN oco.oco10100.fst_reg_dtmd IS '최초 등록 일시';
COMMENT ON COLUMN oco.oco10100.psswd_err_frqy IS '비밀번호 오류 횟수';
COMMENT ON COLUMN oco.oco10100.user_ipaddr IS '사용자 IP 주소';


-- oco.oco10110 definition

-- Drop table

-- DROP TABLE oco.oco10110;

CREATE TABLE oco.oco10110 (
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	user_role_nm varchar(50) NULL, -- 역할명
	user_role_desc varchar(200) NULL, -- 역할 설명
	user_athrty_group_cd varchar(3) NULL, -- 권한 그룹 코드
	lock_athrty_cl_cd varchar(1) NULL, -- 잠금 권한 구분 코드
	use_yn varchar(1) NULL, -- 사용 여부
	CONSTRAINT oco10110_pk PRIMARY KEY (user_role_id)
);
COMMENT ON TABLE oco.oco10110 IS '역할 정보 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10110.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10110.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10110.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10110.user_role_nm IS '역할명';
COMMENT ON COLUMN oco.oco10110.user_role_desc IS '역할 설명';
COMMENT ON COLUMN oco.oco10110.user_athrty_group_cd IS '권한 그룹 코드';
COMMENT ON COLUMN oco.oco10110.lock_athrty_cl_cd IS '잠금 권한 구분 코드';
COMMENT ON COLUMN oco.oco10110.use_yn IS '사용 여부';


-- oco.oco10111 definition

-- Drop table

-- DROP TABLE oco.oco10111;

CREATE TABLE oco.oco10111 (
	role_dept_team_cd varchar(6) NOT NULL, -- 부서/팀 코드
	role_mapp_reofo_cd varchar(4) NOT NULL, -- 매핑 지역 코드
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	role_dept_team_cl_cd varchar(1) NULL, -- 부서/팀 구분 코드
	accnt_crat_auto_yn varchar(1) NULL, -- 계정 자동생성 여부
	use_yn varchar(1) NULL, -- 사용 여부
	CONSTRAINT oco10111_pk PRIMARY KEY (role_dept_team_cd, role_mapp_reofo_cd)
);
COMMENT ON TABLE oco.oco10111 IS '역할-부서/팀 매핑 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10111.role_dept_team_cd IS '부서/팀 코드';
COMMENT ON COLUMN oco.oco10111.role_mapp_reofo_cd IS '매핑 지역 코드';
COMMENT ON COLUMN oco.oco10111.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10111.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10111.role_dept_team_cl_cd IS '부서/팀 구분 코드';
COMMENT ON COLUMN oco.oco10111.accnt_crat_auto_yn IS '계정 자동생성 여부';
COMMENT ON COLUMN oco.oco10111.use_yn IS '사용 여부';


-- oco.oco10116 definition

-- Drop table

-- DROP TABLE oco.oco10116;

CREATE TABLE oco.oco10116 (
	userid varchar(50) NOT NULL, -- 사용자 ID
	menu_id varchar(12) NOT NULL, -- 메뉴 ID
	chng_dtm varchar(14) NOT NULL, -- 변경 일시
	crud_cl_cd varchar(1) NOT NULL, -- CRUD 구분 코드
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	athrty_reqst_seq varchar(18) NULL, -- 권한 요청 일련번호
	chng_user_ipaddr varchar(18) NULL, -- 변경자 IP
	chng_reson_cntnt varchar(400) NULL, -- 변경 사유
	CONSTRAINT oco10116_pk PRIMARY KEY (userid, menu_id, chng_dtm, crud_cl_cd)
);
COMMENT ON TABLE oco.oco10116 IS '사용자별 메뉴 변경 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10116.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10116.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10116.chng_dtm IS '변경 일시';
COMMENT ON COLUMN oco.oco10116.crud_cl_cd IS 'CRUD 구분 코드';
COMMENT ON COLUMN oco.oco10116.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10116.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10116.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10116.chng_user_ipaddr IS '변경자 IP';
COMMENT ON COLUMN oco.oco10116.chng_reson_cntnt IS '변경 사유';


-- oco.oco10117 definition

-- Drop table

-- DROP TABLE oco.oco10117;

CREATE TABLE oco.oco10117 (
	userid varchar(50) NOT NULL, -- 사용자 ID
	scren_id varchar(10) NOT NULL, -- 화면 ID
	bttn_id varchar(30) NOT NULL, -- 버튼 ID
	chng_dtm varchar(14) NOT NULL, -- 변경 일시
	crud_cl_cd varchar(1) NOT NULL, -- CRUD 구분 코드
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	athrty_reqst_seq varchar(18) NULL, -- 권한 요청 일련번호
	chng_user_ipaddr varchar(18) NULL, -- 변경자 IP
	chng_reson_cntnt varchar(400) NULL, -- 변경 사유
	CONSTRAINT oco10117_pk PRIMARY KEY (userid, scren_id, bttn_id, chng_dtm, crud_cl_cd)
);
COMMENT ON TABLE oco.oco10117 IS '사용자별 화면/버튼 변경 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10117.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10117.scren_id IS '화면 ID';
COMMENT ON COLUMN oco.oco10117.bttn_id IS '버튼 ID';
COMMENT ON COLUMN oco.oco10117.chng_dtm IS '변경 일시';
COMMENT ON COLUMN oco.oco10117.crud_cl_cd IS 'CRUD 구분 코드';
COMMENT ON COLUMN oco.oco10117.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10117.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10117.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10117.chng_user_ipaddr IS '변경자 IP';
COMMENT ON COLUMN oco.oco10117.chng_reson_cntnt IS '변경 사유';


-- oco.oco10130 definition

-- Drop table

-- DROP TABLE oco.oco10130;

CREATE TABLE oco.oco10130 (
	athrty_reqst_seq int8 NOT NULL, -- 권한 요청 일련번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	athrty_reqst_sts_cd varchar(1) NULL, -- 권한 요청 상태 코드
	userid varchar(50) NULL, -- 사용자 ID
	reqst_reson_cntnt varchar(1000) NULL, -- 요청 사유
	indiv_info_yn varchar(1) NULL, -- 개인정보 포함 여부
	rpa_user_yn varchar(1) NULL, -- RPA 사용자 여부
	reqst_user_ipaddr varchar(16) NULL, -- 요청자 IP
	CONSTRAINT oco10130_pk PRIMARY KEY (athrty_reqst_seq)
);
COMMENT ON TABLE oco.oco10130 IS '권한 요청 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10130.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10130.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10130.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10130.athrty_reqst_sts_cd IS '권한 요청 상태 코드';
COMMENT ON COLUMN oco.oco10130.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10130.reqst_reson_cntnt IS '요청 사유';
COMMENT ON COLUMN oco.oco10130.indiv_info_yn IS '개인정보 포함 여부';
COMMENT ON COLUMN oco.oco10130.rpa_user_yn IS 'RPA 사용자 여부';
COMMENT ON COLUMN oco.oco10130.reqst_user_ipaddr IS '요청자 IP';


-- oco.oco10131 definition

-- Drop table

-- DROP TABLE oco.oco10131;

CREATE TABLE oco.oco10131 (
	athrty_reqst_seq int8 NOT NULL, -- 권한 요청 일련번호
	athrty_reqst_op_dtm varchar(14) NOT NULL, -- 권한 요청 처리 일시
	athrty_reqst_sts_cd varchar(1) NOT NULL, -- 권한 요청 상태 코드
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	settl_userid varchar(50) NULL, -- 처리자 ID
	settl_user_ipaddr varchar(16) NULL, -- 처리자 IP
	gvbk_reson_cntnt varchar(1000) NULL, -- 반려 사유
	CONSTRAINT oco10131_pk PRIMARY KEY (athrty_reqst_seq, athrty_reqst_op_dtm, athrty_reqst_sts_cd)
);
COMMENT ON TABLE oco.oco10131 IS '권한 요청 처리 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10131.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10131.athrty_reqst_op_dtm IS '권한 요청 처리 일시';
COMMENT ON COLUMN oco.oco10131.athrty_reqst_sts_cd IS '권한 요청 상태 코드';
COMMENT ON COLUMN oco.oco10131.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10131.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10131.settl_userid IS '처리자 ID';
COMMENT ON COLUMN oco.oco10131.settl_user_ipaddr IS '처리자 IP';
COMMENT ON COLUMN oco.oco10131.gvbk_reson_cntnt IS '반려 사유';


-- oco.oco10132 definition

-- Drop table

-- DROP TABLE oco.oco10132;

CREATE TABLE oco.oco10132 (
	athrty_reqst_seq int8 NOT NULL,
	athrty_reqst_dtl_seq int4 NOT NULL,
	last_chngr_id varchar(50) NOT NULL,
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	user_role_id varchar(4) DEFAULT NULL::character varying NULL,
	menu_id varchar(12) DEFAULT NULL::character varying NULL,
	scren_id varchar(10) DEFAULT NULL::character varying NULL,
	bttn_id varchar(30) DEFAULT NULL::character varying NULL,
	athrty_addn_yn varchar(1) DEFAULT 'N'::character varying NOT NULL,
	CONSTRAINT oco10132_pkey PRIMARY KEY (athrty_reqst_seq, athrty_reqst_dtl_seq)
);


-- oco.oco10133 definition

-- Drop table

-- DROP TABLE oco.oco10133;

CREATE TABLE oco.oco10133 (
	agent_reg_seq serial4 NOT NULL,
	userid varchar(4) NULL,
	agent_id varchar(10) NULL,
	deptcd varchar(6) NULL,
	agent_start_dt varchar(8) NULL,
	agent_end_schdl_dt varchar(8) NULL,
	agent_end_dt varchar(8) NULL,
	end_yn varchar(1) NULL,
	agent_reg_reson_cntnt varchar(4000) NULL,
	last_chngr_id varchar(50) NOT NULL,
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT oco10133_pkey PRIMARY KEY (agent_reg_seq)
);


-- oco.oco10141 definition

-- Drop table

-- DROP TABLE oco.oco10141;

CREATE TABLE oco.oco10141 (
	user_scren_cnstte_seq serial4 NOT NULL,
	last_chngr_id varchar(50) NOT NULL,
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	userid varchar(50) NOT NULL,
	user_scren_cnstte_nm varchar(100) NULL,
	user_inti_scren_yn varchar(1) DEFAULT 'N'::character varying NOT NULL,
	use_yn varchar(1) DEFAULT 'Y'::character varying NOT NULL,
	CONSTRAINT oco10141_pkey PRIMARY KEY (user_scren_cnstte_seq)
);


-- oco.oco10142 definition

-- Drop table

-- DROP TABLE oco.oco10142;

CREATE TABLE oco.oco10142 (
	user_scren_cnstte_seq int4 NOT NULL,
	scren_id varchar(10) NOT NULL,
	last_chngr_id varchar(50) NOT NULL,
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	scren_start_xcoo float8 NULL,
	scren_start_ycoo float8 NULL,
	scren_width_size int4 NULL,
	scren_vrtln_size int4 NULL,
	CONSTRAINT oco10142_pkey PRIMARY KEY (user_scren_cnstte_seq, scren_id)
);


-- oco.oco10220 definition

-- Drop table

-- DROP TABLE oco.oco10220;

CREATE TABLE oco.oco10220 (
	scren_id varchar(10) NOT NULL, -- 화면 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	chrg_task_group_cd varchar(2) NULL, -- 담당 업무 그룹 코드
	scren_nm varchar(100) NULL, -- 화면명
	scren_desc varchar(100) NULL, -- 화면 설명
	scren_urladdr varchar(100) NULL, -- 화면 URL
	use_yn varchar(1) NULL, -- 사용 여부
	scren_cl_cd varchar(1) NULL, -- 화면 구분 코드
	scren_size_cl_cd varchar(1) NULL, -- 화면 크기 구분 코드
	scren_width_size int4 NULL, -- 화면 너비
	scren_vrtln_size int4 NULL, -- 화면 높이
	scren_start_top_codn int4 NULL, -- 화면 시작 상단 좌표
	scren_start_left_codn int4 NULL, -- 화면 시작 좌측 좌표
	CONSTRAINT oco10220_pk PRIMARY KEY (scren_id)
);
COMMENT ON TABLE oco.oco10220 IS '화면 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10220.scren_id IS '화면 ID';
COMMENT ON COLUMN oco.oco10220.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10220.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10220.chrg_task_group_cd IS '담당 업무 그룹 코드';
COMMENT ON COLUMN oco.oco10220.scren_nm IS '화면명';
COMMENT ON COLUMN oco.oco10220.scren_desc IS '화면 설명';
COMMENT ON COLUMN oco.oco10220.scren_urladdr IS '화면 URL';
COMMENT ON COLUMN oco.oco10220.use_yn IS '사용 여부';
COMMENT ON COLUMN oco.oco10220.scren_cl_cd IS '화면 구분 코드';
COMMENT ON COLUMN oco.oco10220.scren_size_cl_cd IS '화면 크기 구분 코드';
COMMENT ON COLUMN oco.oco10220.scren_width_size IS '화면 너비';
COMMENT ON COLUMN oco.oco10220.scren_vrtln_size IS '화면 높이';
COMMENT ON COLUMN oco.oco10220.scren_start_top_codn IS '화면 시작 상단 좌표';
COMMENT ON COLUMN oco.oco10220.scren_start_left_codn IS '화면 시작 좌측 좌표';


-- oco.oco10230 definition

-- Drop table

-- DROP TABLE oco.oco10230;

CREATE TABLE oco.oco10230 (
	bttn_id varchar(30) NOT NULL, -- 버튼 ID
	bttn_nm varchar(100) NULL, -- 버튼명
	bttn_nm_en varchar(100) NULL, -- 버튼명 영문
	bttn_desc varchar(500) NULL, -- 버튼 설명
	CONSTRAINT oco10230_pk PRIMARY KEY (bttn_id)
);
COMMENT ON TABLE oco.oco10230 IS '버튼 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10230.bttn_id IS '버튼 ID';
COMMENT ON COLUMN oco.oco10230.bttn_nm IS '버튼명';
COMMENT ON COLUMN oco.oco10230.bttn_nm_en IS '버튼명 영문';
COMMENT ON COLUMN oco.oco10230.bttn_desc IS '버튼 설명';


-- oco.oco10240 definition

-- Drop table

-- DROP TABLE oco.oco10240;

CREATE TABLE oco.oco10240 (
	linka_systm_nm varchar(10) NOT NULL, -- 연계 시스템명
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	fst_regr_id varchar(10) NULL, -- 최초 등록자 ID
	fst_reg_dtmd timestamp NOT NULL, -- 최초 등록 일시
	conn_psbty_yn varchar(1) NULL, -- 연결 가능 여부
	CONSTRAINT oco10240_pk PRIMARY KEY (linka_systm_nm)
);
COMMENT ON TABLE oco.oco10240 IS '연계 시스템 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10240.linka_systm_nm IS '연계 시스템명';
COMMENT ON COLUMN oco.oco10240.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10240.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10240.fst_regr_id IS '최초 등록자 ID';
COMMENT ON COLUMN oco.oco10240.fst_reg_dtmd IS '최초 등록 일시';
COMMENT ON COLUMN oco.oco10240.conn_psbty_yn IS '연결 가능 여부';


-- oco.oco20100 definition

-- Drop table

-- DROP TABLE oco.oco20100;

CREATE TABLE oco.oco20100 (
	cmmn_cd varchar(30) NULL, -- 공통 코드
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	chrg_task_group_cd varchar(2) NULL, -- 담당 업무 그룹 코드
	cmmn_cd_nm varchar(50) NULL, -- 공통 코드명
	cmmn_cd_desc varchar(500) NULL, -- 공통 코드 설명
	cmmn_cd_val_lenth int4 NULL, -- 공통 코드 값 길이
	use_yn varchar(1) NULL, -- 사용 여부
	refrn_attr_nm1 varchar(200) NULL, -- 참조 속성명1
	refrn_attr_nm2 varchar(200) NULL, -- 참조 속성명2
	refrn_attr_nm3 varchar(200) NULL, -- 참조 속성명3
	refrn_attr_nm4 varchar(200) NULL, -- 참조 속성명4
	refrn_attr_nm5 varchar(200) NULL, -- 참조 속성명5
	refrn_attr_nm6 varchar(200) NULL, -- 참조 속성명6
	refrn_attr_nm7 varchar(200) NULL, -- 참조 속성명7
	refrn_attr_nm8 varchar(200) NULL, -- 참조 속성명8
	refrn_attr_nm9 varchar(200) NULL, -- 참조 속성명9
	refrn_attr_nm10 varchar(200) NULL, -- 참조 속성명10
	befo_cmmn_type_cd varchar(6) NULL, -- 이전 공통 유형 코드
	befo_cmmn_group_cd varchar(20) NULL, -- 이전 공통 그룹 코드
	comm_cd_nm_en varchar(50) NULL, -- 공통 코드명(영문)
	CONSTRAINT oco20100_unique UNIQUE (cmmn_cd)
);
COMMENT ON TABLE oco.oco20100 IS '공통 코드 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco20100.cmmn_cd IS '공통 코드';
COMMENT ON COLUMN oco.oco20100.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco20100.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco20100.chrg_task_group_cd IS '담당 업무 그룹 코드';
COMMENT ON COLUMN oco.oco20100.cmmn_cd_nm IS '공통 코드명';
COMMENT ON COLUMN oco.oco20100.cmmn_cd_desc IS '공통 코드 설명';
COMMENT ON COLUMN oco.oco20100.cmmn_cd_val_lenth IS '공통 코드 값 길이';
COMMENT ON COLUMN oco.oco20100.use_yn IS '사용 여부';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm1 IS '참조 속성명1';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm2 IS '참조 속성명2';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm3 IS '참조 속성명3';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm4 IS '참조 속성명4';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm5 IS '참조 속성명5';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm6 IS '참조 속성명6';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm7 IS '참조 속성명7';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm8 IS '참조 속성명8';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm9 IS '참조 속성명9';
COMMENT ON COLUMN oco.oco20100.refrn_attr_nm10 IS '참조 속성명10';
COMMENT ON COLUMN oco.oco20100.befo_cmmn_type_cd IS '이전 공통 유형 코드';
COMMENT ON COLUMN oco.oco20100.befo_cmmn_group_cd IS '이전 공통 그룹 코드';
COMMENT ON COLUMN oco.oco20100.comm_cd_nm_en IS '공통 코드명(영문)';


-- oco.oco30100 definition

-- Drop table

-- DROP TABLE oco.oco30100;

CREATE TABLE oco.oco30100 (
	annce_no bigserial NOT NULL, -- 공지사항 번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	annce_title_nm varchar(100) NULL, -- 공지 제목
	annce_cntnt text NULL, -- 공지 내용
	annce_task_cl_cd varchar(30) NULL, -- 공지 업무 구분 코드
	annce_ctgr_cl_cd varchar(30) NULL, -- 공지 카테고리 코드
	annce_start_dtm varchar(14) NULL, -- 공지 시작일시
	annce_end_dtm varchar(14) NULL, -- 공지 종료일시
	super_annce_start_dtm varchar(14) NULL, -- 상위 공지 시작일시
	super_annce_end_dtm varchar(14) NULL, -- 상위 공지 종료일시
	reg_userid varchar(50) NULL, -- 등록자 ID
	reg_dtmd timestamp NULL, -- 등록 일시
	del_yn varchar(1) NULL, -- 삭제 여부
	comment_allow_yn varchar(1) DEFAULT 'Y' NULL, -- 댓글 허용 여부 (Y/N)
	CONSTRAINT oco30100_pk PRIMARY KEY (annce_no)
);
COMMENT ON TABLE oco.oco30100 IS '공지사항 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco30100.annce_no IS '공지사항 번호';
COMMENT ON COLUMN oco.oco30100.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco30100.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco30100.annce_title_nm IS '공지 제목';
COMMENT ON COLUMN oco.oco30100.annce_cntnt IS '공지 내용';
COMMENT ON COLUMN oco.oco30100.annce_task_cl_cd IS '공지 업무 구분 코드 (30자)';
COMMENT ON COLUMN oco.oco30100.annce_ctgr_cl_cd IS '공지 카테고리 코드 (30자)';
COMMENT ON COLUMN oco.oco30100.annce_start_dtm IS '공지 시작일시';
COMMENT ON COLUMN oco.oco30100.annce_end_dtm IS '공지 종료일시';
COMMENT ON COLUMN oco.oco30100.super_annce_start_dtm IS '상위 공지 시작일시';
COMMENT ON COLUMN oco.oco30100.super_annce_end_dtm IS '상위 공지 종료일시';
COMMENT ON COLUMN oco.oco30100.reg_userid IS '등록자 ID';
COMMENT ON COLUMN oco.oco30100.reg_dtmd IS '등록 일시';
COMMENT ON COLUMN oco.oco30100.del_yn IS '삭제 여부';
COMMENT ON COLUMN oco.oco30100.comment_allow_yn IS '댓글 허용 여부 (Y/N)';


-- oco.oco30101 definition

-- Drop table

-- DROP TABLE oco.oco30101;

CREATE TABLE oco.oco30101 (
	annce_no int8 NOT NULL, -- 공지사항 번호
	userid varchar(50) NOT NULL, -- 사용자 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	CONSTRAINT oco30101_pk PRIMARY KEY (annce_no, userid)
);
COMMENT ON TABLE oco.oco30101 IS '공지사항 열람 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco30101.annce_no IS '공지사항 번호';
COMMENT ON COLUMN oco.oco30101.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco30101.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco30101.last_chng_dtmd IS '최종 변경 일시';


-- oco.oco30102 definition

-- Drop table

-- DROP TABLE oco.oco30102;

CREATE TABLE oco.oco30102 (
	annce_no int8 NOT NULL, -- 공지사항 번호
	annce_obj_seq int4 NOT NULL, -- 공지 대상 일련번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	annce_obj_dept_cl_cd varchar(2) NULL, -- 공지 대상 부서 구분 코드
	annce_obj_dept_team_cd varchar(6) NULL, -- 공지 대상 팀 코드
	CONSTRAINT oco30102_pk PRIMARY KEY (annce_no, annce_obj_seq)
);
COMMENT ON TABLE oco.oco30102 IS '공지사항 대상자 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco30102.annce_no IS '공지사항 번호';
COMMENT ON COLUMN oco.oco30102.annce_obj_seq IS '공지 대상 일련번호';
COMMENT ON COLUMN oco.oco30102.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco30102.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco30102.annce_obj_dept_cl_cd IS '공지 대상 부서 구분 코드';
COMMENT ON COLUMN oco.oco30102.annce_obj_dept_team_cd IS '공지 대상 팀 코드';


-- oco.oco30110 definition

-- Drop table

-- DROP TABLE oco.oco30110;

CREATE TABLE oco.oco30110 (
	annce_no int8 NOT NULL, -- 공지사항 번호
	atac_file_no int8 NOT NULL, -- 첨부파일 번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	del_yn varchar(1) NULL, -- 삭제 여부
	CONSTRAINT oco30110_pk PRIMARY KEY (annce_no, atac_file_no)
);
COMMENT ON TABLE oco.oco30110 IS '공지사항 첨부파일 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco30110.annce_no IS '공지사항 번호';
COMMENT ON COLUMN oco.oco30110.atac_file_no IS '첨부파일 번호';
COMMENT ON COLUMN oco.oco30110.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco30110.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco30110.del_yn IS '삭제 여부';


-- oco.oco30900 definition

-- Drop table

-- DROP TABLE oco.oco30900;

CREATE TABLE oco.oco30900 (
	atac_file_no bigserial NOT NULL, -- 첨부파일 번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	atac_file_type_cd varchar(30) NULL, -- 첨부파일 유형 코드
	atac_file_task_cl_cd varchar(30) NULL, -- 첨부파일 업무 구분 코드
	atac_file_nm varchar(100) NULL, -- 첨부파일명
	atac_file_size int8 NULL, -- 첨부파일 크기
	atac_file_path_nm varchar(200) NULL, -- 첨부파일 경로명
	atac_file_loc_urladdr varchar(100) NULL, -- 첨부파일 위치 URL
	atac_file_sts_cd varchar(30) NULL, -- 첨부파일 상태 코드
	CONSTRAINT oco30900_pk PRIMARY KEY (atac_file_no)
);
COMMENT ON TABLE oco.oco30900 IS '첨부파일 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco30900.atac_file_no IS '첨부파일 번호';
COMMENT ON COLUMN oco.oco30900.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco30900.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco30900.atac_file_type_cd IS '첨부파일 유형 코드';
COMMENT ON COLUMN oco.oco30900.atac_file_task_cl_cd IS '첨부파일 업무 구분 코드';
COMMENT ON COLUMN oco.oco30900.atac_file_nm IS '첨부파일명';
COMMENT ON COLUMN oco.oco30900.atac_file_size IS '첨부파일 크기';
COMMENT ON COLUMN oco.oco30900.atac_file_path_nm IS '첨부파일 경로명';
COMMENT ON COLUMN oco.oco30900.atac_file_loc_urladdr IS '첨부파일 위치 URL';
COMMENT ON COLUMN oco.oco30900.atac_file_sts_cd IS '첨부파일 상태 코드';


-- oco.oco40100 definition

-- Drop table

-- DROP TABLE oco.oco40100;

CREATE TABLE oco.oco40100 (
	apro_group_id int4 NOT NULL, -- 결재 그룹 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	apro_type_cl_cd varchar(1) NULL, -- 결재 유형 코드
	apro_task_cl_cd varchar(3) NULL, -- 결재 업무 구분 코드
	apro_group_cl_nm varchar(30) NULL, -- 결재 그룹명
	apro_group_desc varchar(1000) NULL, -- 결재 그룹 설명
	CONSTRAINT oco40100_pk PRIMARY KEY (apro_group_id)
);
COMMENT ON TABLE oco.oco40100 IS '결재 그룹 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco40100.apro_group_id IS '결재 그룹 ID';
COMMENT ON COLUMN oco.oco40100.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco40100.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco40100.apro_type_cl_cd IS '결재 유형 코드';
COMMENT ON COLUMN oco.oco40100.apro_task_cl_cd IS '결재 업무 구분 코드';
COMMENT ON COLUMN oco.oco40100.apro_group_cl_nm IS '결재 그룹명';
COMMENT ON COLUMN oco.oco40100.apro_group_desc IS '결재 그룹 설명';


-- oco.oco40110 definition

-- Drop table

-- DROP TABLE oco.oco40110;

CREATE TABLE oco.oco40110 (
	api_id int4 NOT NULL, -- API ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	apro_group_id int4 NULL, -- 결재 그룹 ID
	api_nm varchar(100) NULL, -- API 명
	api_desc varchar(200) NULL, -- API 설명
	api_loc_urladdr varchar(300) NULL, -- API 위치 URL
	htt_method_val varchar(10) NULL, -- HTTP 메서드 값
	api_req_cntnt text NULL, -- API 요청 내용
	api_resp_cntnt text NULL, -- API 응답 내용
	use_yn varchar(1) NULL, -- 사용 여부
	CONSTRAINT oco40110_pk PRIMARY KEY (api_id)
);
COMMENT ON TABLE oco.oco40110 IS 'API 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco40110.api_id IS 'API ID';
COMMENT ON COLUMN oco.oco40110.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco40110.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco40110.apro_group_id IS '결재 그룹 ID';
COMMENT ON COLUMN oco.oco40110.api_nm IS 'API 명';
COMMENT ON COLUMN oco.oco40110.api_desc IS 'API 설명';
COMMENT ON COLUMN oco.oco40110.api_loc_urladdr IS 'API 위치 URL';
COMMENT ON COLUMN oco.oco40110.htt_method_val IS 'HTTP 메서드 값';
COMMENT ON COLUMN oco.oco40110.api_req_cntnt IS 'API 요청 내용';
COMMENT ON COLUMN oco.oco40110.api_resp_cntnt IS 'API 응답 내용';
COMMENT ON COLUMN oco.oco40110.use_yn IS '사용 여부';


-- oco.oco40111 definition

-- Drop table

-- DROP TABLE oco.oco40111;

CREATE TABLE oco.oco40111 (
	api_exect_dtl_seq int8 NOT NULL, -- API 실행 상세 일련번호
	api_exect_start_dtmt timestamp NOT NULL, -- API 실행 시작일시
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	api_resp_time int4 NULL, -- API 응답 시간
	api_id int4 NOT NULL, -- API ID
	api_resp_sts_val int4 NULL, -- API 응답 상태 값
	err_cntnt text NULL, -- 오류 내용
	api_exect_userid varchar(50) NULL, -- API 실행 사용자 ID
	conn_ipaddr varchar(16) NULL, -- 접속 IP
	CONSTRAINT oco40111_pk PRIMARY KEY (api_exect_dtl_seq, api_exect_start_dtmt)
);
COMMENT ON TABLE oco.oco40111 IS 'API 실행 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco40111.api_exect_dtl_seq IS 'API 실행 상세 일련번호';
COMMENT ON COLUMN oco.oco40111.api_exect_start_dtmt IS 'API 실행 시작일시';
COMMENT ON COLUMN oco.oco40111.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco40111.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco40111.api_resp_time IS 'API 응답 시간';
COMMENT ON COLUMN oco.oco40111.api_id IS 'API ID';
COMMENT ON COLUMN oco.oco40111.api_resp_sts_val IS 'API 응답 상태 값';
COMMENT ON COLUMN oco.oco40111.err_cntnt IS '오류 내용';
COMMENT ON COLUMN oco.oco40111.api_exect_userid IS 'API 실행 사용자 ID';
COMMENT ON COLUMN oco.oco40111.conn_ipaddr IS '접속 IP';


-- oco.oco40112 definition

-- Drop table

-- DROP TABLE oco.oco40112;

CREATE TABLE oco.oco40112 (
	api_exect_dt varchar(8) NOT NULL,
	api_id int4 NOT NULL,
	last_chngr_id varchar(50) NOT NULL,
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	api_exect_ccnt int8 DEFAULT 0 NOT NULL,
	CONSTRAINT oco40112_pkey PRIMARY KEY (api_exect_dt, api_id)
);

-- oco.oco50100 definition

-- Drop table

-- DROP TABLE oco.oco50100;

CREATE TABLE  oco.oco50100(
	empno varchar(50) NOT NULL, -- 사원번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, -- 최종 변경 일시
	emp_krn_nm varchar(50) NULL, -- 한글 이름
	emp_englnm varchar(20) NULL, -- 영문 성
	emp_engfnm varchar(50) NULL, -- 영문 이름
	deptcd varchar(20) NULL, -- 부서 코드
	bthdy varchar(8) NULL, -- 생년월일
	owhm_phno varchar(14) NULL, -- 사무실 전화번호
	mphno varchar(14) NULL, -- 휴대폰 번호
	group_entcp_dt varchar(8) NULL, -- 그룹 입사일
	tcom_entcp_dt varchar(8) NULL, -- 현 회사 입사일
	curtp_oford_dt varchar(8) NULL, -- 현 직위 발령일
	curtp_oford_cd varchar(3) NULL, -- 현 직위 코드
	resg_dt varchar(8) NULL, -- 퇴사일
	com_cl_cd varchar(1) NULL, -- 회사 구분 코드
	clofp_cd varchar(3) NULL, -- 직무 코드
	reofo_cd varchar(3) NULL, -- 지역 코드
	jgp_cd varchar(1) NULL, -- 직급 코드
	vctn_cd varchar(3) NULL, -- 직책 코드
	teambr_cl_cd varchar(3) NULL, -- 팀 구분 코드
	clofp_nm varchar(50) NULL, -- 직무명
	jgp_nm varchar(50) NULL, -- 직급명
	vctn_nm varchar(50) NULL, -- 직책명
	emailaddr varchar(100) NULL, -- 이메일 주소
	befo_empno varchar(8) NULL, -- 이전 사원번호
	sbcty_nm varchar(50) NULL, -- 부문명
	hq_nm varchar(50) NULL, -- 본부명
	team_nm varchar(50) NULL, -- 팀명
	CONSTRAINT oco50100_pk PRIMARY KEY (empno)
);
COMMENT ON TABLE oco.oco50100 IS '임직원 인사 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco50100.empno IS '사원번호';
COMMENT ON COLUMN oco.oco50100.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco50100.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco50100.emp_krn_nm IS '한글 이름';
COMMENT ON COLUMN oco.oco50100.emp_englnm IS '영문 성';
COMMENT ON COLUMN oco.oco50100.emp_engfnm IS '영문 이름';
COMMENT ON COLUMN oco.oco50100.deptcd IS '부서 코드';
COMMENT ON COLUMN oco.oco50100.bthdy IS '생년월일';
COMMENT ON COLUMN oco.oco50100.owhm_phno IS '사무실 전화번호';
COMMENT ON COLUMN oco.oco50100.mphno IS '휴대폰 번호';
COMMENT ON COLUMN oco.oco50100.group_entcp_dt IS '그룹 입사일';
COMMENT ON COLUMN oco.oco50100.tcom_entcp_dt IS '현 회사 입사일';
COMMENT ON COLUMN oco.oco50100.curtp_oford_dt IS '현 직위 발령일';
COMMENT ON COLUMN oco.oco50100.curtp_oford_cd IS '현 직위 코드';
COMMENT ON COLUMN oco.oco50100.resg_dt IS '퇴사일';
COMMENT ON COLUMN oco.oco50100.com_cl_cd IS '회사 구분 코드';
COMMENT ON COLUMN oco.oco50100.clofp_cd IS '직무 코드';
COMMENT ON COLUMN oco.oco50100.reofo_cd IS '지역 코드';
COMMENT ON COLUMN oco.oco50100.jgp_cd IS '직급 코드';
COMMENT ON COLUMN oco.oco50100.vctn_cd IS '직책 코드';
COMMENT ON COLUMN oco.oco50100.teambr_cl_cd IS '팀 구분 코드';
COMMENT ON COLUMN oco.oco50100.clofp_nm IS '직무명';
COMMENT ON COLUMN oco.oco50100.jgp_nm IS '직급명';
COMMENT ON COLUMN oco.oco50100.vctn_nm IS '직책명';
COMMENT ON COLUMN oco.oco50100.emailaddr IS '이메일 주소';
COMMENT ON COLUMN oco.oco50100.befo_empno IS '이전 사원번호';
COMMENT ON COLUMN oco.oco50100.sbcty_nm IS '부문명';
COMMENT ON COLUMN oco.oco50100.hq_nm IS '본부명';
COMMENT ON COLUMN oco.oco50100.team_nm IS '팀명';

-- oco.oco50200 definition

-- Drop table

-- DROP TABLE oco.oco50200;

CREATE TABLE oco.oco50200 (
	deptcd varchar(20) NOT NULL, -- 부서 코드
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, -- 최종 변경 일시
	mgmt_deptcd varchar(6) NULL, -- 관리 부서 코드
	dept_nm varchar(50) NULL, -- 부서명
	engsh_dept_nm varchar(100) NULL, -- 영문 부서명
	engsh_dept_abbr_nm varchar(50) NULL, -- 영문 부서 약어
	bssmacd varchar(2) NULL, -- 사업장 코드
	super_deptcd varchar(20) NULL, -- 상위 부서 코드
	dept_grade_cd varchar(2) NULL, -- 부서 등급 코드
	dept_crat_dt varchar(8) NULL, -- 부서 생성일
	dept_abol_dt varchar(8) NULL, -- 부서 폐지일
	femp_deptcd varchar(6) NULL, -- 전 부서 코드
	whtax_bzpl_cd varchar(6) NULL, -- 원천징수 사업장 코드
	sals_deptcd varchar(6) NULL, -- 영업 부서 코드
	inv_deptcd varchar(6) NULL, -- 재고 부서 코드
	invnt_wrhus_cd varchar(6) NULL, -- 창고 코드
	vat_bzpl_cd varchar(6) NULL, -- 부가세 사업장 코드
	zipcd varchar(6) NULL, -- 우편번호
	basic_addr varchar(200) NULL, -- 기본 주소
	detil_addr varchar(200) NULL, -- 상세 주소
	extsn_no varchar(4) NULL, -- 내선 번호
	phno varchar(14) NULL, -- 전화번호
	fax_no varchar(14) NULL, -- 팩스번호
	bzno varchar(10) NULL, -- 사업자번호
	bzman_acq_dt varchar(8) NULL, -- 사업자 취득일
	txofc_cd varchar(3) NULL, -- 세무서 코드
	txofc_nm varchar(20) NULL, -- 세무서명
	com_bscnd_nm varchar(30) NULL, -- 회사 기본명
	com_itm_nm varchar(30) NULL, -- 회사 품목명
	com_corp_nm varchar(50) NULL, -- 회사 법인명
	use_yn varchar(1) NULL, -- 사용 여부
	ccntr_cd varchar(10) NULL, -- 센터 코드
	rprtt_nm varchar(30) NULL, -- 대표자명
	dept_level int4 NULL, -- 부서 레벨 (1: 최상위, 2: 중간, 3: 하위)
	dept_rank varchar(2000) NULL, -- 정렬 순번 (같은 레벨 내에서의 표시 순서)
	CONSTRAINT oco50200_pk PRIMARY KEY (deptcd)
);
COMMENT ON TABLE oco.oco50200 IS '부서 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco50200.deptcd IS '부서 코드';
COMMENT ON COLUMN oco.oco50200.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco50200.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco50200.mgmt_deptcd IS '관리 부서 코드';
COMMENT ON COLUMN oco.oco50200.dept_nm IS '부서명';
COMMENT ON COLUMN oco.oco50200.engsh_dept_nm IS '영문 부서명';
COMMENT ON COLUMN oco.oco50200.engsh_dept_abbr_nm IS '영문 부서 약어';
COMMENT ON COLUMN oco.oco50200.bssmacd IS '사업장 코드';
COMMENT ON COLUMN oco.oco50200.super_deptcd IS '상위 부서 코드';
COMMENT ON COLUMN oco.oco50200.dept_grade_cd IS '부서 등급 코드';
COMMENT ON COLUMN oco.oco50200.dept_crat_dt IS '부서 생성일';
COMMENT ON COLUMN oco.oco50200.dept_abol_dt IS '부서 폐지일';
COMMENT ON COLUMN oco.oco50200.femp_deptcd IS '전 부서 코드';
COMMENT ON COLUMN oco.oco50200.whtax_bzpl_cd IS '원천징수 사업장 코드';
COMMENT ON COLUMN oco.oco50200.sals_deptcd IS '영업 부서 코드';
COMMENT ON COLUMN oco.oco50200.inv_deptcd IS '재고 부서 코드';
COMMENT ON COLUMN oco.oco50200.invnt_wrhus_cd IS '창고 코드';
COMMENT ON COLUMN oco.oco50200.vat_bzpl_cd IS '부가세 사업장 코드';
COMMENT ON COLUMN oco.oco50200.zipcd IS '우편번호';
COMMENT ON COLUMN oco.oco50200.basic_addr IS '기본 주소';
COMMENT ON COLUMN oco.oco50200.detil_addr IS '상세 주소';
COMMENT ON COLUMN oco.oco50200.extsn_no IS '내선 번호';
COMMENT ON COLUMN oco.oco50200.phno IS '전화번호';
COMMENT ON COLUMN oco.oco50200.fax_no IS '팩스번호';
COMMENT ON COLUMN oco.oco50200.bzno IS '사업자번호';
COMMENT ON COLUMN oco.oco50200.bzman_acq_dt IS '사업자 취득일';
COMMENT ON COLUMN oco.oco50200.txofc_cd IS '세무서 코드';
COMMENT ON COLUMN oco.oco50200.txofc_nm IS '세무서명';
COMMENT ON COLUMN oco.oco50200.com_bscnd_nm IS '회사 기본명';
COMMENT ON COLUMN oco.oco50200.com_itm_nm IS '회사 품목명';
COMMENT ON COLUMN oco.oco50200.com_corp_nm IS '회사 법인명';
COMMENT ON COLUMN oco.oco50200.use_yn IS '사용 여부';
COMMENT ON COLUMN oco.oco50200.ccntr_cd IS '센터 코드';
COMMENT ON COLUMN oco.oco50200.rprtt_nm IS '대표자명';
COMMENT ON COLUMN oco.oco50200.dept_level IS '부서 레벨 (1: 최상위, 2: 중간, 3: 하위)';
COMMENT ON COLUMN oco.oco50200.dept_rank IS '정렬 순번 (같은 레벨 내에서의 표시 순서)';

-- oco.oco50300 definition

-- Drop table

-- DROP TABLE oco.oco50300;

CREATE TABLE oco.oco50300 (
	bssmacd varchar(2) NOT NULL,
	last_chngr_id varchar(50) NOT NULL,
	last_chng_dtmd timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	bss_hq_nm varchar(50) NOT NULL,
	use_yn varchar(1) DEFAULT 'Y'::character varying NOT NULL,
	CONSTRAINT oco50300_pkey PRIMARY KEY (bssmacd)
);


-- oco.oif21100 definition

-- Drop table

-- DROP TABLE oco.oif21100;

CREATE TABLE oco.oif21100 (
	empno varchar(8) NULL, -- 사원번호
	emp_krn_nm varchar(30) NULL, -- 한글 이름
	emp_englnm varchar(20) NULL, -- 영문 성
	emp_engfnm varchar(20) NULL, -- 영문 이름
	deptcd varchar(6) NULL, -- 부서 코드
	bthdy varchar(8) NULL, -- 생년월일
	owhm_phno varchar(14) NULL, -- 사무실 전화번호
	mphno varchar(14) NULL, -- 휴대폰 번호
	group_entcp_dt varchar(8) NULL, -- 그룹 입사일
	tcom_entcp_dt varchar(8) NULL, -- 현 회사 입사일
	curtp_oford_dt varchar(8) NULL, -- 현 직위 발령일
	curtp_oford_cd varchar(3) NULL, -- 현 직위 코드
	resg_dt varchar(8) NULL, -- 퇴사일
	com_cl_cd varchar(1) NULL, -- 회사 구분 코드
	clofp_cd varchar(3) NULL, -- 직무 코드
	reofo_cd varchar(3) NULL, -- 지역 코드
	jgp_cd varchar(1) NULL, -- 직급 코드
	vctn_cd varchar(3) NULL, -- 직책 코드
	teambr_cl_cd varchar(3) NULL, -- 팀 구분 코드
	clofp_nm varchar(20) NULL, -- 직무명
	jgp_nm varchar(20) NULL, -- 직급명
	vctn_nm varchar(20) NULL, -- 직책명
	emailaddr varchar(100) NULL, -- 이메일 주소
	befo_empno varchar(8) NULL, -- 이전 사원번호
	created_by varchar(255) NULL, -- 생성자
	created_at timestamp NULL, -- 생성 일시
	last_modified_by varchar(255) NULL, -- 최종 수정자
	last_modified_at timestamp NULL -- 최종 수정일시
);
COMMENT ON TABLE oco.oif21100 IS '외부 인사 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oif21100.empno IS '사원번호';
COMMENT ON COLUMN oco.oif21100.emp_krn_nm IS '한글 이름';
COMMENT ON COLUMN oco.oif21100.emp_englnm IS '영문 성';
COMMENT ON COLUMN oco.oif21100.emp_engfnm IS '영문 이름';
COMMENT ON COLUMN oco.oif21100.deptcd IS '부서 코드';
COMMENT ON COLUMN oco.oif21100.bthdy IS '생년월일';
COMMENT ON COLUMN oco.oif21100.owhm_phno IS '사무실 전화번호';
COMMENT ON COLUMN oco.oif21100.mphno IS '휴대폰 번호';
COMMENT ON COLUMN oco.oif21100.group_entcp_dt IS '그룹 입사일';
COMMENT ON COLUMN oco.oif21100.tcom_entcp_dt IS '현 회사 입사일';
COMMENT ON COLUMN oco.oif21100.curtp_oford_dt IS '현 직위 발령일';
COMMENT ON COLUMN oco.oif21100.curtp_oford_cd IS '현 직위 코드';
COMMENT ON COLUMN oco.oif21100.resg_dt IS '퇴사일';
COMMENT ON COLUMN oco.oif21100.com_cl_cd IS '회사 구분 코드';
COMMENT ON COLUMN oco.oif21100.clofp_cd IS '직무 코드';
COMMENT ON COLUMN oco.oif21100.reofo_cd IS '지역 코드';
COMMENT ON COLUMN oco.oif21100.jgp_cd IS '직급 코드';
COMMENT ON COLUMN oco.oif21100.vctn_cd IS '직책 코드';
COMMENT ON COLUMN oco.oif21100.teambr_cl_cd IS '팀 구분 코드';
COMMENT ON COLUMN oco.oif21100.clofp_nm IS '직무명';
COMMENT ON COLUMN oco.oif21100.jgp_nm IS '직급명';
COMMENT ON COLUMN oco.oif21100.vctn_nm IS '직책명';
COMMENT ON COLUMN oco.oif21100.emailaddr IS '이메일 주소';
COMMENT ON COLUMN oco.oif21100.befo_empno IS '이전 사원번호';
COMMENT ON COLUMN oco.oif21100.created_by IS '생성자';
COMMENT ON COLUMN oco.oif21100.created_at IS '생성 일시';
COMMENT ON COLUMN oco.oif21100.last_modified_by IS '최종 수정자';
COMMENT ON COLUMN oco.oif21100.last_modified_at IS '최종 수정일시';


-- oco.oif21200 definition

-- Drop table

-- DROP TABLE oco.oif21200;

CREATE TABLE oco.oif21200 (
	deptcd varchar(8) NULL, -- 부서 코드
	mgmt_deptcd varchar(6) NULL, -- 관리 부서 코드
	dept_nm varchar(50) NULL, -- 부서명
	engsh_dept_nm varchar(50) NULL, -- 영문 부서명
	engsh_dept_abbr_nm varchar(50) NULL, -- 영문 부서 약어
	bssmacd varchar(2) NULL, -- 사업장 코드
	super_deptcd varchar(6) NULL, -- 상위 부서 코드
	dept_grade_cd varchar(1) NULL, -- 부서 등급 코드
	dept_crat_dt varchar(8) NULL, -- 부서 생성일
	dept_abol_dt varchar(8) NULL, -- 부서 폐지일
	femp_deptcd varchar(6) NULL, -- 전 부서 코드
	whtax_bzpl_cd varchar(6) NULL, -- 원천징수 사업장 코드
	sals_deptcd varchar(6) NULL, -- 영업 부서 코드
	inv_deptcd varchar(6) NULL, -- 재고 부서 코드
	invnt_wrhus_cd varchar(6) NULL, -- 창고 코드
	vat_bzpl_cd varchar(6) NULL, -- 부가세 사업장 코드
	zipcd varchar(6) NULL, -- 우편번호
	basic_addr varchar(200) NULL, -- 기본 주소
	detil_addr varchar(200) NULL, -- 상세 주소
	phno varchar(14) NULL, -- 전화번호
	fax_no varchar(14) NULL, -- 팩스번호
	bzno varchar(10) NULL, -- 사업자번호
	bzman_acq_dt varchar(8) NULL, -- 사업자 취득일
	txofc_cd varchar(3) NULL, -- 세무서 코드
	txofc_nm varchar(20) NULL, -- 세무서명
	com_bscnd_nm varchar(30) NULL, -- 회사 기본명
	com_itm_nm varchar(30) NULL, -- 회사 품목명
	com_corp_nm varchar(50) NULL, -- 회사 법인명
	use_yn varchar(1) NULL, -- 사용 여부
	ccntr_cd varchar(10) NULL, -- 센터 코드
	rprtt_nm varchar(30) NULL, -- 대표자명
	extsn_no varchar(4) NULL, -- 내선 번호
	created_by varchar(255) NULL, -- 생성자
	created_at timestamp NULL, -- 생성 일시
	last_modified_by varchar(255) NULL, -- 최종 수정자
	last_modified_at timestamp NULL -- 최종 수정일시
);
COMMENT ON TABLE oco.oif21200 IS '외부 부서 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oif21200.deptcd IS '부서 코드';
COMMENT ON COLUMN oco.oif21200.mgmt_deptcd IS '관리 부서 코드';
COMMENT ON COLUMN oco.oif21200.dept_nm IS '부서명';
COMMENT ON COLUMN oco.oif21200.engsh_dept_nm IS '영문 부서명';
COMMENT ON COLUMN oco.oif21200.engsh_dept_abbr_nm IS '영문 부서 약어';
COMMENT ON COLUMN oco.oif21200.bssmacd IS '사업장 코드';
COMMENT ON COLUMN oco.oif21200.super_deptcd IS '상위 부서 코드';
COMMENT ON COLUMN oco.oif21200.dept_grade_cd IS '부서 등급 코드';
COMMENT ON COLUMN oco.oif21200.dept_crat_dt IS '부서 생성일';
COMMENT ON COLUMN oco.oif21200.dept_abol_dt IS '부서 폐지일';
COMMENT ON COLUMN oco.oif21200.femp_deptcd IS '전 부서 코드';
COMMENT ON COLUMN oco.oif21200.whtax_bzpl_cd IS '원천징수 사업장 코드';
COMMENT ON COLUMN oco.oif21200.sals_deptcd IS '영업 부서 코드';
COMMENT ON COLUMN oco.oif21200.inv_deptcd IS '재고 부서 코드';
COMMENT ON COLUMN oco.oif21200.invnt_wrhus_cd IS '창고 코드';
COMMENT ON COLUMN oco.oif21200.vat_bzpl_cd IS '부가세 사업장 코드';
COMMENT ON COLUMN oco.oif21200.zipcd IS '우편번호';
COMMENT ON COLUMN oco.oif21200.basic_addr IS '기본 주소';
COMMENT ON COLUMN oco.oif21200.detil_addr IS '상세 주소';
COMMENT ON COLUMN oco.oif21200.phno IS '전화번호';
COMMENT ON COLUMN oco.oif21200.fax_no IS '팩스번호';
COMMENT ON COLUMN oco.oif21200.bzno IS '사업자번호';
COMMENT ON COLUMN oco.oif21200.bzman_acq_dt IS '사업자 취득일';
COMMENT ON COLUMN oco.oif21200.txofc_cd IS '세무서 코드';
COMMENT ON COLUMN oco.oif21200.txofc_nm IS '세무서명';
COMMENT ON COLUMN oco.oif21200.com_bscnd_nm IS '회사 기본명';
COMMENT ON COLUMN oco.oif21200.com_itm_nm IS '회사 품목명';
COMMENT ON COLUMN oco.oif21200.com_corp_nm IS '회사 법인명';
COMMENT ON COLUMN oco.oif21200.use_yn IS '사용 여부';
COMMENT ON COLUMN oco.oif21200.ccntr_cd IS '센터 코드';
COMMENT ON COLUMN oco.oif21200.rprtt_nm IS '대표자명';
COMMENT ON COLUMN oco.oif21200.extsn_no IS '내선 번호';
COMMENT ON COLUMN oco.oif21200.created_by IS '생성자';
COMMENT ON COLUMN oco.oif21200.created_at IS '생성 일시';
COMMENT ON COLUMN oco.oif21200.last_modified_by IS '최종 수정자';
COMMENT ON COLUMN oco.oif21200.last_modified_at IS '최종 수정일시';


-- oco.oif21300 definition

-- Drop table

-- DROP TABLE oco.oif21300;

CREATE TABLE oco.oif21300 (
	bssmacd varchar(2) NULL, -- 사업장 코드
	bss_hq_nm varchar(50) NULL, -- 사업장 본사명
	use_yn varchar(1) NULL, -- 사용 여부
	created_by varchar(255) NULL, -- 생성자
	created_at timestamp NULL, -- 생성 일시
	last_modified_by varchar(255) NULL, -- 최종 수정자
	last_modified_at timestamp NULL -- 최종 수정일시
);
COMMENT ON TABLE oco.oif21300 IS '외부 사업장 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oif21300.bssmacd IS '사업장 코드';
COMMENT ON COLUMN oco.oif21300.bss_hq_nm IS '사업장 본사명';
COMMENT ON COLUMN oco.oif21300.use_yn IS '사용 여부';
COMMENT ON COLUMN oco.oif21300.created_by IS '생성자';
COMMENT ON COLUMN oco.oif21300.created_at IS '생성 일시';
COMMENT ON COLUMN oco.oif21300.last_modified_by IS '최종 수정자';
COMMENT ON COLUMN oco.oif21300.last_modified_at IS '최종 수정일시';


-- oco.oco10101 definition

-- Drop table

-- DROP TABLE oco.oco10101;

CREATE TABLE oco.oco10101 (
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	userid varchar(50) NOT NULL, -- 사용자 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	athrty_reqst_seq int8 NULL, -- 권한 요청 일련번호
	CONSTRAINT oco10101_pk PRIMARY KEY (user_role_id, userid),
	CONSTRAINT oco10101_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid),
	CONSTRAINT oco10101_oco10110_fk FOREIGN KEY (user_role_id) REFERENCES oco.oco10110(user_role_id)
);
COMMENT ON TABLE oco.oco10101 IS '사용자별 역할 매핑 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10101.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10101.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10101.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10101.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10101.athrty_reqst_seq IS '권한 요청 일련번호';


-- oco.oco10103 definition

-- Drop table

-- DROP TABLE oco.oco10103;

CREATE TABLE oco.oco10103 (
	userid varchar(10) NOT NULL, -- 사용자 ID
	chng_col_engsh_nm varchar(50) NOT NULL, -- 변경 컬럼 영문명
	chng_dtm varchar(14) NOT NULL, -- 변경 일시
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	chng_col_val varchar(600) NULL, -- 변경된 값
	CONSTRAINT oco10103_pk PRIMARY KEY (userid, chng_col_engsh_nm, chng_dtm),
	CONSTRAINT oco10103_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid)
);
COMMENT ON TABLE oco.oco10103 IS '사용자 정보 변경 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10103.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10103.chng_col_engsh_nm IS '변경 컬럼 영문명';
COMMENT ON COLUMN oco.oco10103.chng_dtm IS '변경 일시';
COMMENT ON COLUMN oco.oco10103.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10103.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10103.chng_col_val IS '변경된 값';


-- oco.oco10107 definition

-- Drop table

-- DROP TABLE oco.oco10107;

CREATE TABLE oco.oco10107 (
	userid varchar(10) NOT NULL, -- 사용자 ID
	scren_id varchar(10) NOT NULL, -- 화면 ID
	bttn_id varchar(30) NOT NULL, -- 버튼 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	athrty_reqst_seq int8 NULL, -- 권한 요청 일련번호
	CONSTRAINT oco10107_pk PRIMARY KEY (userid, scren_id, bttn_id),
	CONSTRAINT oco10107_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid)
);
COMMENT ON TABLE oco.oco10107 IS '사용자별 화면/버튼 권한 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10107.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10107.scren_id IS '화면 ID';
COMMENT ON COLUMN oco.oco10107.bttn_id IS '버튼 ID';
COMMENT ON COLUMN oco.oco10107.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10107.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10107.athrty_reqst_seq IS '권한 요청 일련번호';


-- oco.oco10109 definition

-- Drop table

-- DROP TABLE oco.oco10109;

CREATE TABLE oco.oco10109 (
	userid_reqst_seq int8 NOT NULL, -- 사용자 요청 일련번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	userid varchar(50) NULL, -- 사용자 ID
	userid_reqst_dt varchar(8) NULL, -- 요청 일시
	userid_reqst_sts_cd varchar(1) NULL, -- 요청 상태 코드
	rvw_userid varchar(10) NULL, -- 검토자 ID
	rvw_dt varchar(8) NULL, -- 검토 일시
	authz_userid varchar(10) NULL, -- 승인자 ID
	authz_dt varchar(8) NULL, -- 승인 일시
	gvbk_reson_cntnt varchar(1000) NULL, -- 반려 사유
	authz_user_ipaddr varchar(16) NULL, -- 승인자 IP
	reqst_reson_cntnt varchar(1000) NULL, -- 요청 사유
	CONSTRAINT oco10109_unique UNIQUE (userid_reqst_seq),
	CONSTRAINT oco10109_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid),
	CONSTRAINT oco10109_oco10100_fk_1 FOREIGN KEY (rvw_userid) REFERENCES oco.oco10100(userid),
	CONSTRAINT oco10109_oco10100_fk_2 FOREIGN KEY (authz_userid) REFERENCES oco.oco10100(userid)
);
COMMENT ON TABLE oco.oco10109 IS '사용자 요청 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10109.userid_reqst_seq IS '사용자 요청 일련번호';
COMMENT ON COLUMN oco.oco10109.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10109.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10109.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10109.userid_reqst_dt IS '요청 일시';
COMMENT ON COLUMN oco.oco10109.userid_reqst_sts_cd IS '요청 상태 코드';
COMMENT ON COLUMN oco.oco10109.rvw_userid IS '검토자 ID';
COMMENT ON COLUMN oco.oco10109.rvw_dt IS '검토 일시';
COMMENT ON COLUMN oco.oco10109.authz_userid IS '승인자 ID';
COMMENT ON COLUMN oco.oco10109.authz_dt IS '승인 일시';
COMMENT ON COLUMN oco.oco10109.gvbk_reson_cntnt IS '반려 사유';
COMMENT ON COLUMN oco.oco10109.authz_user_ipaddr IS '승인자 IP';
COMMENT ON COLUMN oco.oco10109.reqst_reson_cntnt IS '요청 사유';


-- oco.oco10112 definition

-- Drop table

-- DROP TABLE oco.oco10112;

CREATE TABLE oco.oco10112 (
	userid varchar(10) NOT NULL, -- 사용자 ID
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	chng_dtm varchar(14) NOT NULL, -- 변경 일시
	crud_cl_cd varchar(1) NOT NULL, -- CRUD 구분 코드
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	athrty_reqst_seq int8 NULL, -- 권한 요청 일련번호
	deptcd varchar(6) NULL, -- 부서 코드
	dept_nm varchar(50) NULL, -- 부서명
	cucen_team_cd varchar(3) NULL, -- 담당 팀 코드
	cucen_team_nm varchar(100) NULL, -- 담당 팀명
	chng_user_ipaddr varchar(16) NULL, -- 변경자 IP
	chng_reson_cntnt varchar(4000) NULL, -- 변경 사유
	CONSTRAINT oco10112_pk PRIMARY KEY (userid, user_role_id, chng_dtm, crud_cl_cd),
	CONSTRAINT oco10112_oco10101_fk FOREIGN KEY (user_role_id,userid) REFERENCES oco.oco10101(user_role_id,userid)
);
COMMENT ON TABLE oco.oco10112 IS '사용자-역할 변경 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10112.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10112.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10112.chng_dtm IS '변경 일시';
COMMENT ON COLUMN oco.oco10112.crud_cl_cd IS 'CRUD 구분 코드';
COMMENT ON COLUMN oco.oco10112.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10112.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10112.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10112.deptcd IS '부서 코드';
COMMENT ON COLUMN oco.oco10112.dept_nm IS '부서명';
COMMENT ON COLUMN oco.oco10112.cucen_team_cd IS '담당 팀 코드';
COMMENT ON COLUMN oco.oco10112.cucen_team_nm IS '담당 팀명';
COMMENT ON COLUMN oco.oco10112.chng_user_ipaddr IS '변경자 IP';
COMMENT ON COLUMN oco.oco10112.chng_reson_cntnt IS '변경 사유';


-- oco.oco10113 definition

-- Drop table

-- DROP TABLE oco.oco10113;

CREATE TABLE oco.oco10113 (
	role_dept_team_cd varchar(6) NOT NULL, -- 부서/팀 코드
	role_mapp_reofo_cd varchar(4) NOT NULL, -- 매핑 지역 코드
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	CONSTRAINT oco10113_pk PRIMARY KEY (role_dept_team_cd, role_mapp_reofo_cd, user_role_id),
	CONSTRAINT oco10113_oco10110_fk FOREIGN KEY (user_role_id) REFERENCES oco.oco10110(user_role_id),
	CONSTRAINT oco10113_oco10111_fk FOREIGN KEY (role_dept_team_cd,role_mapp_reofo_cd) REFERENCES oco.oco10111(role_dept_team_cd,role_mapp_reofo_cd)
);
COMMENT ON TABLE oco.oco10113 IS '역할-부서/팀-사용자 매핑 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10113.role_dept_team_cd IS '부서/팀 코드';
COMMENT ON COLUMN oco.oco10113.role_mapp_reofo_cd IS '매핑 지역 코드';
COMMENT ON COLUMN oco.oco10113.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10113.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10113.last_chng_dtmd IS '최종 변경 일시';


-- oco.oco10114 definition

-- Drop table

-- DROP TABLE oco.oco10114;

CREATE TABLE oco.oco10114 (
	role_dept_team_cd varchar(6) NOT NULL, -- 부서/팀 코드
	role_mapp_reofo_cd varchar(4) NOT NULL, -- 매핑 지역 코드
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	chng_dtm varchar(14) NOT NULL, -- 변경 일시
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	crud_cl_cd varchar(1) NULL, -- CRUD 구분 코드
	chng_user_ipaddr varchar(16) NULL, -- 변경자 IP
	athrty_reqst_seq int8 NULL, -- 권한 요청 일련번호
	chng_reson_cntnt varchar(4000) NULL, -- 변경 사유
	CONSTRAINT oco10114_pk PRIMARY KEY (role_dept_team_cd, role_mapp_reofo_cd, user_role_id, chng_dtm),
	CONSTRAINT oco10114_oco10113_fk FOREIGN KEY (role_dept_team_cd,role_mapp_reofo_cd,user_role_id) REFERENCES oco.oco10113(role_dept_team_cd,role_mapp_reofo_cd,user_role_id)
);
COMMENT ON TABLE oco.oco10114 IS '역할-부서/팀-사용자 변경 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10114.role_dept_team_cd IS '부서/팀 코드';
COMMENT ON COLUMN oco.oco10114.role_mapp_reofo_cd IS '매핑 지역 코드';
COMMENT ON COLUMN oco.oco10114.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10114.chng_dtm IS '변경 일시';
COMMENT ON COLUMN oco.oco10114.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10114.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10114.crud_cl_cd IS 'CRUD 구분 코드';
COMMENT ON COLUMN oco.oco10114.chng_user_ipaddr IS '변경자 IP';
COMMENT ON COLUMN oco.oco10114.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10114.chng_reson_cntnt IS '변경 사유';


-- oco.oco10121 definition

-- Drop table

-- DROP TABLE oco.oco10121;

CREATE TABLE oco.oco10121 (
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	scren_id varchar(10) NOT NULL, -- 화면 ID
	bttn_id varchar(30) NOT NULL, -- 버튼 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	CONSTRAINT oco10121_pk PRIMARY KEY (user_role_id, scren_id, bttn_id),
	CONSTRAINT oco10121_oco10110_fk FOREIGN KEY (user_role_id) REFERENCES oco.oco10110(user_role_id),
	CONSTRAINT oco10121_oco10230_fk FOREIGN KEY (scren_id,bttn_id) REFERENCES oco.oco10230(scren_id,bttn_id)
);
COMMENT ON TABLE oco.oco10121 IS '역할-화면/버튼 매핑 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10121.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10121.scren_id IS '화면 ID';
COMMENT ON COLUMN oco.oco10121.bttn_id IS '버튼 ID';
COMMENT ON COLUMN oco.oco10121.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10121.last_chng_dtmd IS '최종 변경 일시';


-- oco.oco10123 definition

-- Drop table

-- DROP TABLE oco.oco10123;

CREATE TABLE oco.oco10123 (
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	scren_id varchar(10) NOT NULL, -- 화면 ID
	bttn_id varchar(30) NOT NULL, -- 버튼 ID
	chng_dtm varchar(14) NOT NULL, -- 변경 일시
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	crud_cl_cd varchar(1) NULL, -- CRUD 구분 코드
	chng_user_ipaddr varchar(16) NULL, -- 변경자 IP
	athrty_reqst_seq int8 NULL, -- 권한 요청 일련번호
	chng_reson_cntnt varchar(4000) NULL, -- 변경 사유
	CONSTRAINT oco10123_pk PRIMARY KEY (user_role_id, scren_id, bttn_id, chng_dtm),
	CONSTRAINT oco10123_oco10121_fk FOREIGN KEY (user_role_id,scren_id,bttn_id) REFERENCES oco.oco10121(user_role_id,scren_id,bttn_id)
);
COMMENT ON TABLE oco.oco10123 IS '역할-화면/버튼 변경 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10123.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10123.scren_id IS '화면 ID';
COMMENT ON COLUMN oco.oco10123.bttn_id IS '버튼 ID';
COMMENT ON COLUMN oco.oco10123.chng_dtm IS '변경 일시';
COMMENT ON COLUMN oco.oco10123.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10123.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10123.crud_cl_cd IS 'CRUD 구분 코드';
COMMENT ON COLUMN oco.oco10123.chng_user_ipaddr IS '변경자 IP';
COMMENT ON COLUMN oco.oco10123.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10123.chng_reson_cntnt IS '변경 사유';


-- oco.oco10190 definition

-- Drop table

-- DROP TABLE oco.oco10190;

CREATE TABLE oco.oco10190 (
	user_actvy_seq bigserial NOT NULL, -- 사용자 활동 일련번호
	user_actvy_dtm varchar(14) NOT NULL, -- 활동 일시
	userid varchar(50) NOT NULL, -- 사용자 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	user_actvy_type_cd varchar(3) NULL, -- 활동 유형 코드
	conn_ipaddr varchar(16) NULL, -- 접속 IP
	scren_id varchar(10) NULL, -- 화면 ID
	systm_ctgry_cd varchar(3) NULL, -- 시스템 카테고리 코드
	dwnld_reson_cntnt varchar(200) NULL, -- 다운로드 사유
	accss_token_val varchar(1000) NULL, -- Access Token 값
	refsh_token_val varchar(36) NULL, -- Refresh Token 값
	CONSTRAINT oco10190_pk PRIMARY KEY (user_actvy_seq, user_actvy_dtm, userid),
	CONSTRAINT oco10190_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid)
);
COMMENT ON TABLE oco.oco10190 IS '사용자 활동 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10190.user_actvy_seq IS '사용자 활동 일련번호';
COMMENT ON COLUMN oco.oco10190.user_actvy_dtm IS '활동 일시';
COMMENT ON COLUMN oco.oco10190.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10190.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10190.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10190.user_actvy_type_cd IS '활동 유형 코드';
COMMENT ON COLUMN oco.oco10190.conn_ipaddr IS '접속 IP';
COMMENT ON COLUMN oco.oco10190.scren_id IS '화면 ID';
COMMENT ON COLUMN oco.oco10190.systm_ctgry_cd IS '시스템 카테고리 코드';
COMMENT ON COLUMN oco.oco10190.dwnld_reson_cntnt IS '다운로드 사유';
COMMENT ON COLUMN oco.oco10190.accss_token_val IS 'Access Token 값';
COMMENT ON COLUMN oco.oco10190.refsh_token_val IS 'Refresh Token 값';


-- oco.oco10210 definition

-- Drop table

-- DROP TABLE oco.oco10210;

CREATE TABLE oco.oco10210 (
	menu_id varchar(12) NOT NULL, -- 메뉴 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	chrg_task_group_cd varchar(2) NULL, -- 담당 업무 그룹 코드
	menu_type_cd varchar(1) NULL, -- 메뉴 유형 코드
	scren_excut_cl_cd varchar(1) NULL, -- 화면 실행 구분 코드
	menu_nm varchar(100) NULL, -- 메뉴명
	menu_desc varchar(500) NULL, -- 메뉴 설명
	menu_step_val int4 NOT NULL, -- 메뉴 단계 값
	sort_seqn int4 NULL, -- 정렬 순서
	use_yn varchar(1) NULL, -- 사용 여부
	menu_expse_yn varchar(1) NULL, -- 메뉴 노출 여부
	super_menu_id varchar(12) NULL, -- 상위 메뉴 ID
	scren_id varchar(10) NULL, -- 화면 ID
	linka_systm_tag_cntnt varchar(500) NULL, -- 연계 시스템 태그
	menu_nm_en varchar(100) NULL, -- 메뉴명(영문)
	CONSTRAINT oco10210_pk PRIMARY KEY (menu_id),
	CONSTRAINT oco10210_oco10210_fk FOREIGN KEY (super_menu_id) REFERENCES oco.oco10210(menu_id)
);
COMMENT ON TABLE oco.oco10210 IS '메뉴 정보 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10210.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10210.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10210.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10210.chrg_task_group_cd IS '담당 업무 그룹 코드';
COMMENT ON COLUMN oco.oco10210.menu_type_cd IS '메뉴 유형 코드';
COMMENT ON COLUMN oco.oco10210.scren_excut_cl_cd IS '화면 실행 구분 코드';
COMMENT ON COLUMN oco.oco10210.menu_nm IS '메뉴명';
COMMENT ON COLUMN oco.oco10210.menu_desc IS '메뉴 설명';
COMMENT ON COLUMN oco.oco10210.menu_step_val IS '메뉴 단계 값';
COMMENT ON COLUMN oco.oco10210.sort_seqn IS '정렬 순서';
COMMENT ON COLUMN oco.oco10210.use_yn IS '사용 여부';
COMMENT ON COLUMN oco.oco10210.menu_expse_yn IS '메뉴 노출 여부';
COMMENT ON COLUMN oco.oco10210.super_menu_id IS '상위 메뉴 ID';
COMMENT ON COLUMN oco.oco10210.scren_id IS '화면 ID';
COMMENT ON COLUMN oco.oco10210.linka_systm_tag_cntnt IS '연계 시스템 태그';
COMMENT ON COLUMN oco.oco10210.menu_nm_en IS '메뉴명(영문)';


-- oco.oco20101 definition

-- Drop table

-- DROP TABLE oco.oco20101;

CREATE TABLE oco.oco20101 (
	cmmn_cd varchar(30) NOT NULL, -- 공통 코드
	cmmn_cd_val varchar(40) NOT NULL, -- 공통 코드 값
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	cmmn_cd_val_nm varchar(100) NULL, -- 공통 코드 값명
	cmmn_cd_val_desc varchar(300) NULL, -- 공통 코드 값 설명
	sort_seqn int4 NULL, -- 정렬 순서
	use_yn varchar(1) NULL, -- 사용 여부
	refrn_attr_val1 varchar(100) NULL, -- 참조 속성값1
	refrn_attr_val2 varchar(100) NULL, -- 참조 속성값2
	refrn_attr_val3 varchar(100) NULL, -- 참조 속성값3
	refrn_attr_val4 varchar(100) NULL, -- 참조 속성값4
	refrn_attr_val5 varchar(100) NULL, -- 참조 속성값5
	refrn_attr_val6 varchar(100) NULL, -- 참조 속성값6
	refrn_attr_val7 varchar(100) NULL, -- 참조 속성값7
	refrn_attr_val8 varchar(100) NULL, -- 참조 속성값8
	refrn_attr_val9 varchar(100) NULL, -- 참조 속성값9
	refrn_attr_val10 varchar(100) NULL, -- 참조 속성값10
	super_cmmn_cd varchar(30) NULL, -- 상위 공통 코드
	super_cmmn_cd_val varchar(30) NULL, -- 상위 공통 코드 값
	comm_cd_val_nm_en varchar(100) NULL, -- 공통 코드 값명(영문)
	CONSTRAINT oco20101_pk PRIMARY KEY (cmmn_cd, cmmn_cd_val),
	CONSTRAINT oco20101_oco20100_fk FOREIGN KEY (cmmn_cd) REFERENCES oco.oco20100(cmmn_cd)
);
COMMENT ON TABLE oco.oco20101 IS '공통 코드 값 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco20101.cmmn_cd IS '공통 코드';
COMMENT ON COLUMN oco.oco20101.cmmn_cd_val IS '공통 코드 값';
COMMENT ON COLUMN oco.oco20101.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco20101.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco20101.cmmn_cd_val_nm IS '공통 코드 값명';
COMMENT ON COLUMN oco.oco20101.cmmn_cd_val_desc IS '공통 코드 값 설명';
COMMENT ON COLUMN oco.oco20101.sort_seqn IS '정렬 순서';
COMMENT ON COLUMN oco.oco20101.use_yn IS '사용 여부';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val1 IS '참조 속성값1';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val2 IS '참조 속성값2';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val3 IS '참조 속성값3';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val4 IS '참조 속성값4';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val5 IS '참조 속성값5';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val6 IS '참조 속성값6';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val7 IS '참조 속성값7';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val8 IS '참조 속성값8';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val9 IS '참조 속성값9';
COMMENT ON COLUMN oco.oco20101.refrn_attr_val10 IS '참조 속성값10';
COMMENT ON COLUMN oco.oco20101.super_cmmn_cd IS '상위 공통 코드';
COMMENT ON COLUMN oco.oco20101.super_cmmn_cd_val IS '상위 공통 코드 값';
COMMENT ON COLUMN oco.oco20101.comm_cd_val_nm_en IS '공통 코드 값명(영문)';


-- oco.oco10104 definition

-- Drop table

-- DROP TABLE oco.oco10104;

CREATE TABLE oco.oco10104 (
	userid varchar(10) NOT NULL, -- 사용자 ID
	menu_id varchar(12) NOT NULL, -- 메뉴 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	sort_seqn int4 NULL, -- 정렬 순서
	CONSTRAINT oco10104_pk PRIMARY KEY (userid, menu_id),
	CONSTRAINT oco10104_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid),
	CONSTRAINT oco10104_oco10210_fk FOREIGN KEY (menu_id) REFERENCES oco.oco10210(menu_id)
);
COMMENT ON TABLE oco.oco10104 IS '사용자별 메뉴 권한 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10104.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10104.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10104.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10104.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10104.sort_seqn IS '정렬 순서';


-- oco.oco10105 definition

-- Drop table

-- DROP TABLE oco.oco10105;

CREATE TABLE oco.oco10105 (
	userid varchar(10) NOT NULL, -- 사용자 ID
	menu_id varchar(12) NOT NULL, -- 메뉴 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	sort_seqn int4 NULL, -- 정렬 순서
	CONSTRAINT oco10105_pk PRIMARY KEY (userid, menu_id),
	CONSTRAINT oco10105_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid),
	CONSTRAINT oco10105_oco10210_fk FOREIGN KEY (menu_id) REFERENCES oco.oco10210(menu_id)
);
COMMENT ON TABLE oco.oco10105 IS '사용자별 메뉴 권한 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10105.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10105.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10105.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10105.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10105.sort_seqn IS '정렬 순서';


-- oco.oco10106 definition

-- Drop table

-- DROP TABLE oco.oco10106;

CREATE TABLE oco.oco10106 (
	userid varchar(10) NOT NULL, -- 사용자 ID
	menu_id varchar(12) NOT NULL, -- 메뉴 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	athrty_reqst_seq int8 NULL, -- 권한 요청 일련번호
	CONSTRAINT oco10106_pk PRIMARY KEY (userid, menu_id),
	CONSTRAINT oco10106_oco10100_fk FOREIGN KEY (userid) REFERENCES oco.oco10100(userid),
	CONSTRAINT oco10106_oco10210_fk FOREIGN KEY (menu_id) REFERENCES oco.oco10210(menu_id)
);
COMMENT ON TABLE oco.oco10106 IS '업무 목적에 맞게 테이블 설명 작성 필요';

-- Column comments

COMMENT ON COLUMN oco.oco10106.userid IS '사용자 ID';
COMMENT ON COLUMN oco.oco10106.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10106.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10106.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10106.athrty_reqst_seq IS '권한 요청 일련번호';


-- oco.oco10120 definition

-- Drop table

-- DROP TABLE oco.oco10120;

CREATE TABLE oco.oco10120 (
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	menu_id varchar(12) NOT NULL, -- 메뉴 ID
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	CONSTRAINT oco10120_pk PRIMARY KEY (user_role_id, menu_id),
	CONSTRAINT oco10120_oco10110_fk FOREIGN KEY (user_role_id) REFERENCES oco.oco10110(user_role_id),
	CONSTRAINT oco10120_oco10210_fk FOREIGN KEY (menu_id) REFERENCES oco.oco10210(menu_id)
);
COMMENT ON TABLE oco.oco10120 IS '역할-메뉴 매핑 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10120.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10120.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10120.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10120.last_chng_dtmd IS '최종 변경 일시';


-- oco.oco10122 definition

-- Drop table

-- DROP TABLE oco.oco10122;

CREATE TABLE oco.oco10122 (
	user_role_id varchar(4) NOT NULL, -- 사용자 역할 ID
	menu_id varchar(12) NOT NULL, -- 메뉴 ID
	chng_dtm varchar(14) NOT NULL, -- 변경 일시
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	crud_cl_cd varchar(1) NULL, -- CRUD 구분 코드
	chng_user_ipaddr varchar(16) NULL, -- 변경자 IP
	athrty_reqst_seq int8 NULL, -- 권한 요청 일련번호
	chng_reson_cntnt varchar(4000) NULL, -- 변경 사유
	CONSTRAINT oco10122_pk PRIMARY KEY (user_role_id, menu_id, chng_dtm),
	CONSTRAINT oco10122_oco10120_fk FOREIGN KEY (user_role_id,menu_id) REFERENCES oco.oco10120(user_role_id,menu_id)
);
COMMENT ON TABLE oco.oco10122 IS '역할-메뉴 변경 이력 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10122.user_role_id IS '사용자 역할 ID';
COMMENT ON COLUMN oco.oco10122.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10122.chng_dtm IS '변경 일시';
COMMENT ON COLUMN oco.oco10122.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco10122.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco10122.crud_cl_cd IS 'CRUD 구분 코드';
COMMENT ON COLUMN oco.oco10122.chng_user_ipaddr IS '변경자 IP';
COMMENT ON COLUMN oco.oco10122.athrty_reqst_seq IS '권한 요청 일련번호';
COMMENT ON COLUMN oco.oco10122.chng_reson_cntnt IS '변경 사유';


-- oco.oco10195 definition

-- Drop table

-- DROP TABLE oco.oco10195;

CREATE TABLE oco.oco10195 (
	sumr_dt varchar(8) NOT NULL, -- 집계 일자
	menu_id varchar(255) NOT NULL, -- 메뉴 ID
	conn_qty int8 NULL, -- 접속 수량
	last_modified_by varchar(255) NULL, -- 최종 수정자
	last_modified_at timestamp NULL, -- 최종 수정일시
	CONSTRAINT oco10195_pk PRIMARY KEY (sumr_dt, menu_id),
	CONSTRAINT oco10195_oco10210_fk FOREIGN KEY (menu_id) REFERENCES oco.oco10210(menu_id)
);
COMMENT ON TABLE oco.oco10195 IS '메뉴 접속 통계 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco10195.sumr_dt IS '집계 일자';
COMMENT ON COLUMN oco.oco10195.menu_id IS '메뉴 ID';
COMMENT ON COLUMN oco.oco10195.conn_qty IS '접속 수량';
COMMENT ON COLUMN oco.oco10195.last_modified_by IS '최종 수정자';
COMMENT ON COLUMN oco.oco10195.last_modified_at IS '최종 수정일시';


-- oco.oco30200 definition

-- Drop table
-- DROP TABLE oco.oco30200;

CREATE TABLE oco.oco30200 (
    comment_seq bigserial NOT NULL, -- 댓글 일련번호(PK)
    annce_no int8 NOT NULL, -- 공지사항 번호(FK)
    parent_comment_seq int8 NULL, -- 부모 댓글 일련번호(대댓글용)
    comment_content text NOT NULL, -- 댓글 내용
    reg_userid varchar(50) NOT NULL, -- 등록자 ID
    reg_dtmd timestamp NOT NULL, -- 등록 일시
    del_yn varchar(1) DEFAULT 'N' NULL, -- 삭제 여부
    last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
    last_chng_dtmd timestamp NULL, -- 최종 변경 일시
    CONSTRAINT oco30200_pk PRIMARY KEY (comment_seq)
);
COMMENT ON TABLE oco.oco30200 IS '공지사항 댓글 내역 테이블';
COMMENT ON COLUMN oco.oco30200.comment_seq IS '댓글 일련번호(PK)';
COMMENT ON COLUMN oco.oco30200.annce_no IS '공지사항 번호(FK)';
COMMENT ON COLUMN oco.oco30200.parent_comment_seq IS '부모 댓글 일련번호(대댓글용)';
COMMENT ON COLUMN oco.oco30200.comment_content IS '댓글 내용';
COMMENT ON COLUMN oco.oco30200.reg_userid IS '등록자 ID';
COMMENT ON COLUMN oco.oco30200.reg_dtmd IS '등록 일시';
COMMENT ON COLUMN oco.oco30200.del_yn IS '삭제 여부';
COMMENT ON COLUMN oco.oco30200.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco30200.last_chng_dtmd IS '최종 변경 일시';

ALTER TABLE oco.oco30200 ADD CONSTRAINT oco30200_annce_no_fk FOREIGN KEY (annce_no) REFERENCES oco.oco30100(annce_no);
CREATE INDEX oco30200_annce_no_ix ON oco.oco30200 (annce_no);

-- oco30120: 메일 발송 성공 이력 테이블
CREATE TABLE oco.oco30120 (
    email_send_history_seq  bigserial PRIMARY KEY,         -- 메일 발송 이력 일련번호
    sent_dtmd               timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 메일 발송 일시
    api_reqst_body_cntnt    text NOT NULL,                 -- API 요청 본문(JSON 등)
    api_respns_cntnt        text,                          -- API 응답(성공 메시지 등)
    reqst_userid            varchar(50) NOT NULL,          -- 요청자 ID
    reqst_ipaddr            varchar(50)                    -- 요청자 IP
);

COMMENT ON TABLE oco.oco30120 IS '메일 발송 성공 이력 테이블(API 요청/응답, 요청자 ID, IP 저장)';
COMMENT ON COLUMN oco.oco30120.email_send_history_seq IS '메일 발송 이력 일련번호';
COMMENT ON COLUMN oco.oco30120.sent_dtmd IS '메일 발송 일시';
COMMENT ON COLUMN oco.oco30120.api_reqst_body_cntnt IS 'API 요청 본문(JSON 등)';
COMMENT ON COLUMN oco.oco30120.api_respns_cntnt IS 'API 응답(성공 메시지 등)';
COMMENT ON COLUMN oco.oco30120.reqst_userid IS '요청자 ID';
COMMENT ON COLUMN oco.oco30120.reqst_ipaddr IS '요청자 IP';

CREATE INDEX oco30120_ix1 ON oco.oco30120 (sent_dtmd);

-- oco.oco30130 definition

-- Drop table

-- DROP TABLE oco.oco30130;

CREATE TABLE oco.oco30130 (
	alarm_seq bigserial NOT NULL, -- 알람 일련번호
	last_chngr_id varchar(50) NULL, -- 최종 변경자 ID
	last_chng_dtmd timestamp NOT NULL, -- 최종 변경 일시
	reference_type_cd varchar(30) NOT NULL, -- 참조 타입 코드 (REQUEST_CREATED, ESTIMATE_COMPLETED, PROJECT_START, RESOURCE_ASSIGNED, DEADLINE_APPROACH 등)
	alarm_title varchar(200) NOT NULL, -- 알람 제목
	alarm_content text NOT NULL, -- 알람 내용
	reference_id varchar(50) NULL, -- 참조 ID (요청서 ID, 견적서 ID, 프로젝트 ID 등)
	target_position_cd varchar(20) NULL, -- 대상 직책 코드 (특정 직책 대상인 경우)
	target_user_id varchar(50) NULL, -- 대상 사용자 ID (특정 사용자 대상인 경우)
	is_read bool DEFAULT false NOT NULL, -- 읽음 여부
	read_dtmd timestamp NULL, -- 읽은 일시
	CONSTRAINT oco30130_pk PRIMARY KEY (alarm_seq)
);
CREATE INDEX oco30130_ix1 ON oco.oco30130 USING btree (reference_type_cd);
CREATE INDEX oco30130_ix2 ON oco.oco30130 USING btree (last_chng_dtmd);
CREATE INDEX oco30130_ix3 ON oco.oco30130 USING btree (is_read);
CREATE INDEX oco30130_ix4 ON oco.oco30130 USING btree (target_user_id);
CREATE INDEX oco30130_ix5 ON oco.oco30130 USING btree (reference_id);
COMMENT ON TABLE oco.oco30130 IS '알람 정보 관리 테이블';

-- Column comments

COMMENT ON COLUMN oco.oco30130.alarm_seq IS '알람 일련번호';
COMMENT ON COLUMN oco.oco30130.last_chngr_id IS '최종 변경자 ID';
COMMENT ON COLUMN oco.oco30130.last_chng_dtmd IS '최종 변경 일시';
COMMENT ON COLUMN oco.oco30130.reference_type_cd IS '참조 타입 코드 (REQUEST_CREATED, ESTIMATE_COMPLETED, PROJECT_START, RESOURCE_ASSIGNED, DEADLINE_APPROACH 등)';
COMMENT ON COLUMN oco.oco30130.alarm_title IS '알람 제목';
COMMENT ON COLUMN oco.oco30130.alarm_content IS '알람 내용';
COMMENT ON COLUMN oco.oco30130.reference_id IS '참조 ID (요청서 ID, 견적서 ID, 프로젝트 ID 등)';
COMMENT ON COLUMN oco.oco30130.target_position_cd IS '대상 직책 코드 (특정 직책 대상인 경우)';
COMMENT ON COLUMN oco.oco30130.target_user_id IS '대상 사용자 ID (특정 사용자 대상인 경우)';
COMMENT ON COLUMN oco.oco30130.is_read IS '읽음 여부';
COMMENT ON COLUMN oco.oco30130.read_dtmd IS '읽은 일시';
