-- Purpose: AGS 운영관리 시스템의 DB 역할 및 사용자 생성/권한 부여 스크립트
-- Scope: 초기 환경 구축 및 권한 관리 자동화에 사용

-- PostgreSQL Role and User Creation Script
-- Description: Creates roles and users for AGS Management System
-- Author: Claude
-- Date: 2024

-- Create Admin Role with DDL privileges
CREATE ROLE ags_admin_role;

-- Create Admin User
CREATE USER ags_admin WITH PASSWORD 'Admin@123' IN ROLE ags_admin_role;

-- Create database (after role and user are created)
CREATE DATABASE agsdb OWNER ags_admin;

-- Create AGS schema if not exists
CREATE SCHEMA IF NOT EXISTS AGS;

-- Create OCO schema if not exists
CREATE SCHEMA IF NOT EXISTS OCO;

-- Grant DDL privileges to Admin Role for AGS schema
GRANT ALL PRIVILEGES ON SCHEMA AGS TO ags_admin_role;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA AGS TO ags_admin_role;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA AGS TO ags_admin_role;

-- Grant DDL privileges to Admin Role for OCO schema
GRANT ALL PRIVILEGES ON SCHEMA OCO TO ags_admin_role;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA OCO TO ags_admin_role;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA OCO TO ags_admin_role;

-- Set default privileges for future objects in AGS schema
ALTER DEFAULT PRIVILEGES IN SCHEMA AGS GRANT ALL PRIVILEGES ON TABLES TO ags_admin_role;
ALTER DEFAULT PRIVILEGES IN SCHEMA AGS GRANT ALL PRIVILEGES ON SEQUENCES TO ags_admin_role;

-- Set default privileges for future objects in OCO schema
ALTER DEFAULT PRIVILEGES IN SCHEMA OCO GRANT ALL PRIVILEGES ON TABLES TO ags_admin_role;
ALTER DEFAULT PRIVILEGES IN SCHEMA OCO GRANT ALL PRIVILEGES ON SEQUENCES TO ags_admin_role;

-- Create Developer Role with DML privileges
CREATE ROLE ags_developer_role;

-- Grant DML privileges to Developer Role for AGS schema
GRANT USAGE ON SCHEMA AGS TO ags_developer_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA AGS TO ags_developer_role;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA AGS TO ags_developer_role;

-- Grant DML privileges to Developer Role for OCO schema
GRANT USAGE ON SCHEMA OCO TO ags_developer_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA OCO TO ags_developer_role;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA OCO TO ags_developer_role;

-- Set default privileges for future objects in AGS schema
ALTER DEFAULT PRIVILEGES IN SCHEMA AGS GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO ags_developer_role;
ALTER DEFAULT PRIVILEGES IN SCHEMA AGS GRANT USAGE ON SEQUENCES TO ags_developer_role;

-- Set default privileges for future objects in OCO schema
ALTER DEFAULT PRIVILEGES IN SCHEMA OCO GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO ags_developer_role;
ALTER DEFAULT PRIVILEGES IN SCHEMA OCO GRANT USAGE ON SEQUENCES TO ags_developer_role;

-- Create Developer User
CREATE USER ags_developer WITH PASSWORD 'Dev@123' IN ROLE ags_developer_role;

-- Grant schema ownership to admin role
ALTER SCHEMA AGS OWNER TO ags_admin_role;
ALTER SCHEMA OCO OWNER TO ags_admin_role;

-- Create EAI Role for external interface integration
CREATE ROLE ags_eai_role;

-- Grant CRUD privileges on interface tables to EAI Role
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE OCO.oco50100 TO ags_eai_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE OCO.oco50200 TO ags_eai_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE AGS.eai_project_info TO ags_eai_role;

-- (Optional) Default privileges for future interface tables (if needed)
-- ALTER DEFAULT PRIVILEGES IN SCHEMA OCO GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO eai_role;
-- ALTER DEFAULT PRIVILEGES IN SCHEMA AGS GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO eai_role;

-- Create EAI User
CREATE USER ags_eai WITH PASSWORD 'Eai@123' IN ROLE ags_eai_role;

-- Note: Please change the password in production environment

-- Note: The actual passwords should be stored securely and not in version control 
