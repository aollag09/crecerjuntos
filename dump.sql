--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.20
-- Dumped by pg_dump version 9.5.20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: achievement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.achievement (
    id bigint NOT NULL,
    exercise character varying(255) NOT NULL,
    level integer DEFAULT 1,
    progression double precision NOT NULL,
    score integer NOT NULL,
    sessionid character varying(255),
    "timestamp" date,
    student_id bigint NOT NULL,
    progress double precision NOT NULL
);


ALTER TABLE public.achievement OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id bigint NOT NULL,
    mail character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    section character varying(255)
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Data for Name: achievement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.achievement (id, exercise, level, progression, score, sessionid, "timestamp", student_id, progress) FROM stdin;
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 44, true);


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, mail, name, password, section) FROM stdin;
2	test@test.com	test	aaa	PRIMARIO
4	amaury.ollagnier@gmail.com	Amaury Ollagnier	teresa	DEFAULT
7	isabelle.s.robin@gmail.com	Isabelle Robin	teresa	DEFAULT
1	test.isa@test.com	test.isa	blabla	ACCELERACION
20	luisafernanda@gmail.com	luisa_cordoba2006	luisafernanda	OCTAVO_2
21	ldsrxnjulian803@hotmail.com	julian sucerquia vasquez 	linputos2	OCTAVO_2
22	murillopereaanyimeliza@gmail.com	anyi meliza murillo perea 	vanesa04112003	OCTAVO_2
23	diego05141@gmail.com	 DIEGO ALEJANDRO PINO MOSQUERA 	diegoalejandropinomosquera	OCTAVO_2
24	linamurillo2005@gmail.com	lina murillo perea	1025650735	OCTAVO_2
26	santiagosepulveda0401@gmail.com	santiago sepulveda	santiago0402	OCTAVO_2
27	kevinandres125@gmail.com	Keveninandres	kevin88	OCTAVO_2
28	katerineoquendo@gmail.com	Katerine oquendo zamarra	kate1118	OCTAVO_2
29	brayanstivenbatioja@gmail.com	Batioja	braya ncamila18	OCTAVO_2
30	eo9125173@gmail.com	estefania ochoa	mechitas012	OCTAVO_2
31	camiloarias@gmail.com	Cristian camilo arias guerra 	cristian1001	OCTAVO_2
32	jorgemolina2000@gmail.com	jorge macias molina	jorge@123	OCTAVO_2
33	nataliatapasco@gmail.con	natalia	martin2018	SEPTIMO_2
34	sebastiantoro@gmail.com	sebastian toro	firulais	OCTAVO_2
35	luisarestrepo20120@gmail.com	luisa fernanda restrepo	andresteamo	OCTAVO_2
36	josemanuelmoreno123112@gmail.com	jose manuel moreno ascanio	17258804	OCTAVO_2
37	brayanbatiojaperez@gmail.com	Brayan	brayancamila18	OCTAVO_2
38	diego2005@gmail.com	diego	diego@123	OCTAVO_2
39	julianaespinosa1052005@gmail.com	juliana valentina castro	amorcitho	OCTAVO_2
40	yulianar@gmail.co.com	Yuliana buritica restrepo 	18032018	OCTAVO_2
41	valentinaperes@gmail.con	valentina	valentina16	OCTAVO_2
42	jp460112@gmail.com	juan perez	juanperez	OCTAVO_2
43	cristianrv2005@gmail	cristian andres rave rivera	2527111109	OCTAVO_2
44	sara.zuleta@gmail.com	Sara Zuleta	sarapaulina	OCTAVO_2
\.


--
-- Name: achievement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement
    ADD CONSTRAINT achievement_pkey PRIMARY KEY (id);


--
-- Name: student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: uk_f2hsq7isnhve4m45f50as6h2e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT uk_f2hsq7isnhve4m45f50as6h2e UNIQUE (mail);


--
-- Name: fkqsuwa4k7yr751y1da5y1ioyl9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement
    ADD CONSTRAINT fkqsuwa4k7yr751y1da5y1ioyl9 FOREIGN KEY (student_id) REFERENCES public.student(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

