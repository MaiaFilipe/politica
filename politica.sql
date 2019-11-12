--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-11-12 12:27:51 BRST

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
-- TOC entry 2170 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


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
-- TOC entry 181 (class 1259 OID 83608)
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
-- TOC entry 182 (class 1259 OID 83614)
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
-- TOC entry 183 (class 1259 OID 83616)
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
-- TOC entry 184 (class 1259 OID 83618)
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
-- TOC entry 2162 (class 0 OID 83634)
-- Dependencies: 185
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comentario (comentario, comentador, publicacao, id) FROM stdin;
\.


--
-- TOC entry 2158 (class 0 OID 83608)
-- Dependencies: 181
-- Data for Name: publicacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publicacao (conteudo, titulo, idp, usuario, foto, extensao, horario) FROM stdin;
\.


--
-- TOC entry 2171 (class 0 OID 0)
-- Dependencies: 182
-- Name: sq_publicacao; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_publicacao', 25, true);


--
-- TOC entry 2172 (class 0 OID 0)
-- Dependencies: 183
-- Name: sq_usuario; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sq_usuario', 13, true);


--
-- TOC entry 2161 (class 0 OID 83618)
-- Dependencies: 184
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (cpf, cell, senha, posicao, email, descricao, nome, nascimento, estado, id, usuario, extensao, foto, tipo) FROM stdin;
\.


--
-- TOC entry 2036 (class 2606 OID 83625)
-- Name: pk_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


--
-- TOC entry 2040 (class 2606 OID 83641)
-- Name: pk_id_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_id_comentario PRIMARY KEY (id);


--
-- TOC entry 2034 (class 2606 OID 83627)
-- Name: pk_idp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT pk_idp PRIMARY KEY (idp);


--
-- TOC entry 2032 (class 1259 OID 83628)
-- Name: fki_id_usuario; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_usuario ON publicacao USING btree (usuario);


--
-- TOC entry 2037 (class 1259 OID 83647)
-- Name: fki_pk_comentador; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_comentador ON comentario USING btree (comentador);


--
-- TOC entry 2038 (class 1259 OID 83653)
-- Name: fki_pk_publicacao; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_pk_publicacao ON comentario USING btree (publicacao);


--
-- TOC entry 2041 (class 2606 OID 83629)
-- Name: fk_id_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicacao
    ADD CONSTRAINT fk_id_usuario FOREIGN KEY (usuario) REFERENCES usuario(id);


--
-- TOC entry 2042 (class 2606 OID 83642)
-- Name: pk_comentador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_comentador FOREIGN KEY (comentador) REFERENCES usuario(id);


--
-- TOC entry 2043 (class 2606 OID 83648)
-- Name: pk_publicacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comentario
    ADD CONSTRAINT pk_publicacao FOREIGN KEY (publicacao) REFERENCES publicacao(idp);


--
-- TOC entry 2169 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-11-12 12:27:51 BRST

--
-- PostgreSQL database dump complete
--

