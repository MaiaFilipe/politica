--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-09 11:36:36 BRT

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
-- TOC entry 2158 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 184 (class 1259 OID 41724)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE publicacao (
    conteudo character varying,
    titulo character varying,
    idp integer NOT NULL,
    id_usuario integer
);


ALTER TABLE publicacao OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 41722)
-- Name: sq_publicacao; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_publicacao
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_publicacao OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 41712)
-- Name: sq_usuario; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_usuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_usuario OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 41714)
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
-- TOC entry 2150 (class 0 OID 41724)
-- Dependencies: 184
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publicacao (conteudo, titulo, idp, id_usuario) FROM stdin;
asd	asd	100	\N
asd	asd	150	\N
asd	asd	151	\N
\.


--
-- TOC entry 2159 (class 0 OID 0)
-- Dependencies: 183
-- Name: sq_publicacao; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_publicacao', 3, true);


--
-- TOC entry 2160 (class 0 OID 0)
-- Dependencies: 181
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 18, true);


--
-- TOC entry 2148 (class 0 OID 41714)
-- Dependencies: 182
-- Data for Name: usuarioc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuarioc (cpfc, cellc, senhac, posicaoc, emailc, descricaoc, nomec, nascimentoc, estadoc, id, usuarioc) FROM stdin;
1111111	1111	tata	esquerda	tata	TATA	tata	2002-03-25	SP	850	tata
123	123	123	direita	igor	igor	igor	2000-08-15	RJ	900	igor
\.


--
-- TOC entry 2028 (class 2606 OID 41721)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarioc
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2031 (class 2606 OID 41731)
-- Name: pk_idp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_idp PRIMARY KEY (idp);


--
-- TOC entry 2029 (class 1259 OID 41737)
-- Name: fki_pk_id_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_id_usuario ON publicacao USING btree (id_usuario);


--
-- TOC entry 2032 (class 2606 OID 41732)
-- Name: pk_id_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuarioc(id);


--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-10-09 12:08:55 BRT

--
-- PostgreSQL database dump complete
--

