--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: produtos; Type: TABLE; Schema: public; Owner: reginaldo; Tablespace: 
--

CREATE TABLE produtos (
    id integer NOT NULL,
    nomeproduto character varying(40),
    percentualimposto real,
    valor real,
    quantidade integer
);


ALTER TABLE public.produtos OWNER TO reginaldo;

--
-- Name: produtos_id_seq; Type: SEQUENCE; Schema: public; Owner: reginaldo
--

CREATE SEQUENCE produtos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produtos_id_seq OWNER TO reginaldo;

--
-- Name: produtos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reginaldo
--

ALTER SEQUENCE produtos_id_seq OWNED BY produtos.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: reginaldo
--

ALTER TABLE ONLY produtos ALTER COLUMN id SET DEFAULT nextval('produtos_id_seq'::regclass);


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: reginaldo
--

COPY produtos (id, nomeproduto, percentualimposto, valor, quantidade) FROM stdin;
1	agua mineral	44	2.49000001	1
2	amendoim	37	14.5799999	2
3	achocolatado	38	10.75	1
4	caneta	48	1.20000005	3
5	agua oxigenada	41	1.99000001	2
\.


--
-- Name: produtos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reginaldo
--

SELECT pg_catalog.setval('produtos_id_seq', 5, true);


--
-- Name: produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: reginaldo; Tablespace: 
--

ALTER TABLE ONLY produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

