--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-10-23 12:43:21 BRST

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
-- TOC entry 181 (class 1259 OID 34242)
-- Name: publicacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE publicacao (
    conteudo character varying,
    titulo character varying,
    idp integer NOT NULL,
    id_usuario integer,
    foto bytea,
    extensao text,
    horario timestamp without time zone
);


ALTER TABLE publicacao OWNER TO postgres;

--
-- TOC entry 2143 (class 0 OID 34242)
-- Dependencies: 181
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publicacao (conteudo, titulo, idp, id_usuario, foto, extensao, horario) FROM stdin;
\.


--
-- TOC entry 2027 (class 2606 OID 34261)
-- Name: pk_idp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_idp PRIMARY KEY (idp);


--
-- TOC entry 2025 (class 1259 OID 34262)
-- Name: fki_id_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_usuario ON publicacao USING btree (id_usuario);


--
-- TOC entry 2028 (class 2606 OID 34263)
-- Name: fk_id_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT fk_id_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id);


-- Completed on 2019-10-23 12:43:22 BRST

--
-- PostgreSQL database dump complete
--

