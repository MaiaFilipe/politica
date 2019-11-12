--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-11-12 12:06:53 BRST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 83634)
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
-- TOC entry 2149 (class 0 OID 83634)
-- Dependencies: 185
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comentario (comentario, comentador, publicacao, id) FROM stdin;
\.


--
-- TOC entry 2032 (class 2606 OID 83641)
-- Name: pk_id_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_id_comentario PRIMARY KEY (id);


--
-- TOC entry 2029 (class 1259 OID 83647)
-- Name: fki_pk_comentador; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_comentador ON comentario USING btree (comentador);


--
-- TOC entry 2030 (class 1259 OID 83653)
-- Name: fki_pk_publicacao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_publicacao ON comentario USING btree (publicacao);


--
-- TOC entry 2033 (class 2606 OID 83642)
-- Name: pk_comentador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentador FOREIGN KEY (comentador) REFERENCES usuario(id);


--
-- TOC entry 2034 (class 2606 OID 83648)
-- Name: pk_publicacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_publicacao FOREIGN KEY (publicacao) REFERENCES publicacao(idp);


-- Completed on 2019-11-12 12:06:53 BRST

--
-- PostgreSQL database dump complete
--

