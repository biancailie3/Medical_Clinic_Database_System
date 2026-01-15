-- Oracle APEX 22.2.2 SQL
-- Schema: Cabinet_Medical

-- 1. Stergere tabele daca exista deja (Curatenie)
DROP TABLE cbReteta CASCADE CONSTRAINTS;
DROP TABLE cbProgramare CASCADE CONSTRAINTS;
DROP TABLE cbMedic CASCADE CONSTRAINTS;
DROP TABLE cbSpecialitate CASCADE CONSTRAINTS;
DROP TABLE cbGrad CASCADE CONSTRAINTS;

-- 2. Creare tabele

-- Tabelul cbSpecialitate
CREATE TABLE cbSpecialitate (
  codSpec VARCHAR2(10) NOT NULL,
  denumire VARCHAR2(50),
  coefPlata NUMBER(3,2),
  CONSTRAINT spec_pk PRIMARY KEY (codSpec),
  CONSTRAINT coef_chk CHECK (coefPlata > 0)
);

-- Tabelul cbGrad
CREATE TABLE cbGrad (
  codGrad VARCHAR2(5) NOT NULL,
  denumire VARCHAR2(50),
  tarif NUMBER(6,2),
  CONSTRAINT grad_pk PRIMARY KEY (codGrad),
  CONSTRAINT tarif_chk CHECK (tarif > 0)
);

-- Tabelul cbMedic
CREATE TABLE cbMedic (
  medID VARCHAR2(10) NOT NULL,
  nume VARCHAR2(50),
  codSpec VARCHAR2(10) NOT NULL,
  codGrad VARCHAR2(5) NOT NULL,
  CONSTRAINT medic_pk PRIMARY KEY (medID),
  CONSTRAINT medic_spec_fk FOREIGN KEY (codSpec) REFERENCES cbSpecialitate(codSpec),
  CONSTRAINT medic_grad_fk FOREIGN KEY (codGrad) REFERENCES cbGrad(codGrad)
);

-- Tabelul cbProgramare
CREATE TABLE cbProgramare (
  codPro VARCHAR2(10) NOT NULL,
  data DATE NOT NULL,
  cnp VARCHAR2(13) NOT NULL,
  nume VARCHAR2(50),
  medID VARCHAR2(10) NOT NULL,
  cabinet VARCHAR2(10),
  CONSTRAINT programare_pk PRIMARY KEY (codPro),
  CONSTRAINT programare_med_fk FOREIGN KEY (medID) REFERENCES cbMedic(medID)
);

-- Tabelul cbReteta
CREATE TABLE cbReteta (
  codPro VARCHAR2(10) NOT NULL,
  nrItem NUMBER(2) NOT NULL,
  medicament VARCHAR2(50),
  doza_zi VARCHAR2(20),
  durata_zile NUMBER(3),
  CONSTRAINT reteta_pk PRIMARY KEY (codPro, nrItem),
  CONSTRAINT reteta_prog_fk FOREIGN KEY (codPro) REFERENCES cbProgramare(codPro)
);
