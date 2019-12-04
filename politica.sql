﻿--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-12-03 15:20:58 BRST

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
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 92228)
-- Name: avaliacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE avaliacao (
    id integer NOT NULL,
    publicacao integer,
    avaliador integer
);


ALTER TABLE avaliacao OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 92178)
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comentario (
    comentario character varying,
    comentador integer,
    publicacao integer,
    id integer NOT NULL
);


ALTER TABLE comentario OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 92184)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE publicacao (
    conteudo character varying,
    titulo character varying,
    idp integer NOT NULL,
    usuario integer,
    foto bytea,
    extensao text,
    horario timestamp without time zone
);


ALTER TABLE publicacao OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 92226)
-- Name: sq_avaliacao; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_avaliacao
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_avaliacao OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 92190)
-- Name: sq_comentario; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sq_comentario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sq_comentario OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 92192)
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
-- TOC entry 185 (class 1259 OID 92194)
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
-- TOC entry 186 (class 1259 OID 92196)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    cpf numeric,
    cell numeric,
    senha character varying,
    posicao character varying,
    email character varying,
    descricao character varying,
    nome character varying,
    nascimento character varying,
    estado character varying,
    id integer NOT NULL,
    usuario character varying,
    extensao text,
    foto bytea,
    tipo character varying
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 2179 (class 0 OID 92228)
-- Dependencies: 188
-- Data for Name: avaliacao; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2172 (class 0 OID 92178)
-- Dependencies: 181
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--




--
-- TOC entry 2173 (class 0 OID 92184)
-- Dependencies: 182
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 187
-- Name: sq_avaliacao; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_avaliacao', 13, true);


--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 183
-- Name: sq_comentario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_comentario', 2, true);


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 184
-- Name: sq_publicacao; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_publicacao', 27, true);


--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 185
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 16, true);


--
-- TOC entry 2177 (class 0 OID 92196)
-- Dependencies: 186
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- TOC entry 2048 (class 2606 OID 92203)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2052 (class 2606 OID 92232)
-- Name: pk_id_avaliacao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avaliacao
    ADD CONSTRAINT pk_id_avaliacao PRIMARY KEY (id);


--
-- TOC entry 2043 (class 2606 OID 92205)
-- Name: pk_id_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_id_comentario PRIMARY KEY (id);


--
-- TOC entry 2046 (class 2606 OID 92207)
-- Name: pk_idp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_idp PRIMARY KEY (idp);


--
-- TOC entry 2049 (class 1259 OID 92244)
-- Name: fki_avaliador; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_avaliador ON avaliacao USING btree (avaliador);


--
-- TOC entry 2044 (class 1259 OID 92208)
-- Name: fki_id_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_usuario ON publicacao USING btree (usuario);


--
-- TOC entry 2040 (class 1259 OID 92209)
-- Name: fki_pk_comentador; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_comentador ON comentario USING btree (comentador);


--
-- TOC entry 2041 (class 1259 OID 92210)
-- Name: fki_pk_publicacao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_publicacao ON comentario USING btree (publicacao);


--
-- TOC entry 2050 (class 1259 OID 92238)
-- Name: fki_publicacao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_publicacao ON avaliacao USING btree (publicacao);


--
-- TOC entry 2057 (class 2606 OID 92239)
-- Name: fk_avaliador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avaliacao
    ADD CONSTRAINT fk_avaliador FOREIGN KEY (avaliador) REFERENCES usuario(id);


--
-- TOC entry 2055 (class 2606 OID 92211)
-- Name: fk_id_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT fk_id_usuario FOREIGN KEY (usuario) REFERENCES usuario(id);


--
-- TOC entry 2056 (class 2606 OID 92233)
-- Name: fk_publicacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY avaliacao
    ADD CONSTRAINT fk_publicacao FOREIGN KEY (publicacao) REFERENCES publicacao(idp);


--
-- TOC entry 2053 (class 2606 OID 92216)
-- Name: pk_comentador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentador FOREIGN KEY (comentador) REFERENCES usuario(id);


--
-- TOC entry 2054 (class 2606 OID 92221)
-- Name: pk_publicacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_publicacao FOREIGN KEY (publicacao) REFERENCES publicacao(idp);


--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-12-03 15:20:58 BRST

--
-- PostgreSQL database dump complete
--

