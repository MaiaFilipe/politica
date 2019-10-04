--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-03 10:58:00 BRT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2145 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 182 (class 1259 OID 58554)
-- Name: sq_usuario; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_usuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_usuario OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 58546)
-- Name: usuarioc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuarioc (
    cpfc integer,
    cellc integer,
    senhac character varying,
    posicaoc character varying,
    emailc character varying,
    descricaoc character varying,
    nomec character varying,
    nascimentoc character varying,
    estadoc character varying,
    id integer NOT NULL,
    usuarioc character varying
);


ALTER TABLE usuarioc OWNER TO postgres;

--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 182
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 16, true);


--
-- TOC entry 2136 (class 0 OID 58546)
-- Dependencies: 181
-- Data for Name: usuarioc; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2021 (class 2606 OID 58553)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarioc
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2144 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-03 10:58:01 BRT

--
-- PostgreSQL database dump complete
--

