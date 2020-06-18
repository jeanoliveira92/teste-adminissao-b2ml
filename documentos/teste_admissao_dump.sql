--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-06-18 03:35:15

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 16407)
-- Name: aluno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno (
    matricula integer NOT NULL,
    nome character varying
);


ALTER TABLE public.aluno OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16437)
-- Name: professor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professor (
    id integer NOT NULL,
    nome character varying,
    titulacao character varying
);


ALTER TABLE public.professor OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16435)
-- Name: professor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.professor_id_seq OWNER TO postgres;

--
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 205
-- Name: professor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professor_id_seq OWNED BY public.professor.id;


--
-- TOC entry 203 (class 1259 OID 16416)
-- Name: turma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turma (
    sala character varying,
    data_abertura date,
    data_encerramento date,
    professor integer,
    id integer NOT NULL
);


ALTER TABLE public.turma OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16424)
-- Name: turma_aluno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turma_aluno (
    turma_id character varying NOT NULL,
    aluno_id integer NOT NULL
);


ALTER TABLE public.turma_aluno OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16454)
-- Name: turma_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.turma_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.turma_id_seq OWNER TO postgres;

--
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 207
-- Name: turma_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.turma_id_seq OWNED BY public.turma.id;


--
-- TOC entry 2706 (class 2604 OID 16440)
-- Name: professor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor ALTER COLUMN id SET DEFAULT nextval('public.professor_id_seq'::regclass);


--
-- TOC entry 2705 (class 2604 OID 16456)
-- Name: turma id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turma ALTER COLUMN id SET DEFAULT nextval('public.turma_id_seq'::regclass);


--
-- TOC entry 2842 (class 0 OID 16407)
-- Dependencies: 202
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aluno (matricula, nome) FROM stdin;
\.


--
-- TOC entry 2846 (class 0 OID 16437)
-- Dependencies: 206
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professor (id, nome, titulacao) FROM stdin;
\.


--
-- TOC entry 2843 (class 0 OID 16416)
-- Dependencies: 203
-- Data for Name: turma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.turma (sala, data_abertura, data_encerramento, professor, id) FROM stdin;
\.


--
-- TOC entry 2844 (class 0 OID 16424)
-- Dependencies: 204
-- Data for Name: turma_aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.turma_aluno (turma_id, aluno_id) FROM stdin;
\.


--
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 205
-- Name: professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professor_id_seq', 2, true);


--
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 207
-- Name: turma_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.turma_id_seq', 2, true);


--
-- TOC entry 2708 (class 2606 OID 16453)
-- Name: aluno aluno_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pk PRIMARY KEY (matricula) INCLUDE (matricula);


--
-- TOC entry 2710 (class 2606 OID 16464)
-- Name: turma id_k; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT id_k PRIMARY KEY (id);


--
-- TOC entry 2714 (class 2606 OID 16445)
-- Name: professor professor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id);


--
-- TOC entry 2712 (class 2606 OID 16431)
-- Name: turma_aluno turma_aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turma_aluno
    ADD CONSTRAINT turma_aluno_pkey PRIMARY KEY (turma_id, aluno_id);


--
-- TOC entry 2715 (class 2606 OID 16446)
-- Name: turma professor_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.turma
    ADD CONSTRAINT professor_fk FOREIGN KEY (professor) REFERENCES public.professor(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


-- Completed on 2020-06-18 03:35:16

--
-- PostgreSQL database dump complete
--

