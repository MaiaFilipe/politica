--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2019-11-19 13:09:44 BRST

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
-- TOC entry 187 (class 1259 OID 92019)
-- Name: seguir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE seguir (
    seguidor integer,
    seguido integer,
    id integer NOT NULL
);


ALTER TABLE seguir OWNER TO postgres;

--
-- TOC entry 2154 (class 0 OID 92019)
-- Dependencies: 187
-- Data for Name: seguir; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY seguir (seguidor, seguido, id) FROM stdin;
\.


--
-- TOC entry 2037 (class 2606 OID 92023)
-- Name: pk_id_seguir; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguir
    ADD CONSTRAINT pk_id_seguir PRIMARY KEY (id);


--
-- TOC entry 2034 (class 1259 OID 92035)
-- Name: fki_seguido; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_seguido ON seguir USING btree (seguido);


--
-- TOC entry 2035 (class 1259 OID 92029)
-- Name: fki_seguidor; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_seguidor ON seguir USING btree (seguidor);


--
-- TOC entry 2039 (class 2606 OID 92030)
-- Name: fk_seguido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguir
    ADD CONSTRAINT fk_seguido FOREIGN KEY (seguido) REFERENCES usuario(id);


--
-- TOC entry 2038 (class 2606 OID 92024)
-- Name: fk_seguidor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguir
    ADD CONSTRAINT fk_seguidor FOREIGN KEY (seguidor) REFERENCES usuario(id);


-- Completed on 2019-11-19 13:09:44 BRST

--
-- PostgreSQL database dump complete
--

