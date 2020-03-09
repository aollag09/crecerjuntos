--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.21
-- Dumped by pg_dump version 9.5.21

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
    score integer NOT NULL,
    sessionid character varying(255),
    "timestamp" timestamp without time zone,
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

COPY public.achievement (id, exercise, level, score, sessionid, "timestamp", student_id, progress) FROM stdin;
46	Dactylographie	0	0	node0pmu8u4edd5i36mqgb37h7pnx0	2020-02-03 00:00:00	4	0
47	Dactylographie	0	0	node0pmu8u4edd5i36mqgb37h7pnx0	2020-02-03 00:00:00	4	0
48	Dactylographie	1	0	node0pmu8u4edd5i36mqgb37h7pnx0	2020-02-03 00:00:00	4	0
49	Dactylographie	0	0	node0pmu8u4edd5i36mqgb37h7pnx0	2020-02-03 00:00:00	4	0
50	Dactylographie	0	0	node0s8h3db6naqk91vhf82r2y5a781	2020-02-03 00:00:00	4	0
51	Dactylographie	0	0	node05el40477dehr13g2etn86dlh60	2020-02-03 00:00:00	28	0
52	Dactylographie	0	0	node01592w8y37c7rs1e5a82eyp85zo1	2020-02-03 00:00:00	40	0
53	Dactylographie	0	0	node02h6e9hdul8pt1djbposx8vsct3	2020-02-03 00:00:00	32	0
54	Dactylographie	0	91	node01592w8y37c7rs1e5a82eyp85zo1	2020-02-03 00:00:00	40	100
55	Dactylographie	1	0	node01592w8y37c7rs1e5a82eyp85zo1	2020-02-03 00:00:00	40	0
56	Dactylographie	0	82	node02h6e9hdul8pt1djbposx8vsct3	2020-02-03 00:00:00	32	100
57	Dactylographie	0	0	node01jj36v3bj6epv269xuuj1tua42	2020-02-03 00:00:00	36	0
58	Dactylographie	1	79	node01592w8y37c7rs1e5a82eyp85zo1	2020-02-03 00:00:00	40	100
59	Dactylographie	1	0	node02h6e9hdul8pt1djbposx8vsct3	2020-02-03 00:00:00	32	0
60	Dactylographie	2	0	node01592w8y37c7rs1e5a82eyp85zo1	2020-02-03 00:00:00	40	0
61	Dactylographie	0	87	node01jj36v3bj6epv269xuuj1tua42	2020-02-03 00:00:00	36	100
62	Dactylographie	1	85	node02h6e9hdul8pt1djbposx8vsct3	2020-02-03 00:00:00	32	100
63	Dactylographie	1	0	node01jj36v3bj6epv269xuuj1tua42	2020-02-03 00:00:00	36	0
64	Dactylographie	2	0	node02h6e9hdul8pt1djbposx8vsct3	2020-02-03 00:00:00	32	0
65	Dactylographie	2	99	node01592w8y37c7rs1e5a82eyp85zo1	2020-02-03 00:00:00	40	100
66	Dactylographie	1	86	node01jj36v3bj6epv269xuuj1tua42	2020-02-03 00:00:00	36	100
67	Dactylographie	0	0	node0107bqs10kjiyhv6adbpzsepxx5	2020-02-03 00:00:00	27	0
68	Dactylographie	3	0	node01592w8y37c7rs1e5a82eyp85zo1	2020-02-03 00:00:00	40	0
69	Dactylographie	0	0	node0mq8gf5b1s95s1izq21ex0pl276	2020-02-03 00:00:00	22	0
70	Dactylographie	0	0	node05el40477dehr13g2etn86dlh60	2020-02-03 00:00:00	31	0
71	Dactylographie	2	0	node01jj36v3bj6epv269xuuj1tua42	2020-02-03 00:00:00	36	0
72	Dactylographie	0	95	node0107bqs10kjiyhv6adbpzsepxx5	2020-02-03 00:00:00	27	100
74	Dactylographie	1	0	node0107bqs10kjiyhv6adbpzsepxx5	2020-02-03 00:00:00	27	0
75	Dactylographie	0	83	node0mq8gf5b1s95s1izq21ex0pl276	2020-02-03 00:00:00	22	100
76	Dactylographie	2	48	node02h6e9hdul8pt1djbposx8vsct3	2020-02-03 00:00:00	32	100
77	Dactylographie	0	77	node05el40477dehr13g2etn86dlh60	2020-02-03 00:00:00	31	100
78	Dactylographie	1	0	node0mq8gf5b1s95s1izq21ex0pl276	2020-02-03 00:00:00	22	0
79	Dactylographie	2	0	node02h6e9hdul8pt1djbposx8vsct3	2020-02-03 00:00:00	32	0
84	Word	0	0	node0hfit8r5tedik1i1po6vzkio4w1	2020-02-03 00:00:00	43	0
85	Dactylographie	0	0	node0e6lxjh7uixmpzr580j1o5b338	2020-02-03 00:00:00	39	0
86	Dactylographie	0	0	node01mj5hyiejlaf0vxrxkrliqrq310	2020-02-03 00:00:00	37	0
88	Dactylographie	1	0	node0g1ea92t1nksd6pjd3cdlxug712	2020-02-03 00:00:00	27	0
89	Dactylographie	0	91	node0e6lxjh7uixmpzr580j1o5b338	2020-02-03 00:00:00	39	100
90	Dactylographie	0	94	node01mj5hyiejlaf0vxrxkrliqrq310	2020-02-03 00:00:00	37	100
91	Dactylographie	1	0	node0e6lxjh7uixmpzr580j1o5b338	2020-02-03 00:00:00	39	0
92	Dactylographie	0	0	node0fzd7fgho9d8omasnlusg6uiv5	2020-02-03 00:00:00	31	0
93	Dactylographie	1	0	node01mj5hyiejlaf0vxrxkrliqrq310	2020-02-03 00:00:00	37	0
94	Dactylographie	1	89	node0g1ea92t1nksd6pjd3cdlxug712	2020-02-03 00:00:00	27	100
95	Dactylographie	0	0	node0hfit8r5tedik1i1po6vzkio4w1	2020-02-03 00:00:00	4	0
96	Dactylographie	2	0	node0g1ea92t1nksd6pjd3cdlxug712	2020-02-03 00:00:00	27	0
98	Dactylographie	0	99	node0fzd7fgho9d8omasnlusg6uiv5	2020-02-03 00:00:00	31	100
100	Dactylographie	1	79	node0e6lxjh7uixmpzr580j1o5b338	2020-02-03 00:00:00	39	100
101	Dactylographie	2	0	node0e6lxjh7uixmpzr580j1o5b338	2020-02-03 00:00:00	39	0
103	Dactylographie	1	0	node0fzd7fgho9d8omasnlusg6uiv5	2020-02-03 00:00:00	31	0
142	Dactylographie	0	0	node010xnqjici1g6264j6lql23s7e0	2020-02-06 13:08:26.052	4	0
143	Dactylographie	0	61	node010xnqjici1g6264j6lql23s7e0	2020-02-06 13:09:31.499	4	100
149	CSFirst	0	0	node01t6kxt9gbmxb31krrx704w7t3j2	2020-02-10 08:21:17.446	4	0
153	CSFirst	0	0	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 09:28:44.159	4	0
154	CSFirst	0	60	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 09:29:17.892	4	100
156	CSFirst	0	0	node019m2lauupeojf1bz3qw4be4xji8	2020-02-10 10:05:45.088	155	0
157	CSFirst	0	0	node019m2lauupeojf1bz3qw4be4xji8	2020-02-10 10:06:09.432	155	0
160	Dactylographie	0	0	node01uftns1w1rfvyxphe5tweqd0h10	2020-02-10 10:06:56.412	159	0
161	CSFirst	0	0	node01uftns1w1rfvyxphe5tweqd0h10	2020-02-10 10:07:09.747	159	0
162	CSFirst	0	0	node05xmzx2n1dym61ijcfo2hqajg29	2020-02-10 10:07:10.286	158	0
165	Dactylographie	2	0	node01b0zftefax412w01z5ibidoas3	2020-02-10 10:08:01.818	163	0
172	Dactylographie	2	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:09:08.177	169	0
174	Dactylographie	2	0	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:09:13.873	170	0
176	CSFirst	0	0	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:09:23.136	167	0
177	Dactylographie	2	0	node08gxh4mxu3c1r1brm1r02zc5fm20	2020-02-10 10:09:31.175	173	0
178	CSFirst	0	0	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:09:35.3	168	0
179	CSFirst	0	0	node01b0zftefax412w01z5ibidoas3	2020-02-10 10:09:43.285	163	0
183	Dactylographie	0	0	node08gxh4mxu3c1r1brm1r02zc5fm20	2020-02-10 10:10:01.452	173	0
184	Dactylographie	0	0	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:10:02.671	167	0
185	Dactylographie	0	0	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:10:03.217	175	0
186	Dactylographie	0	0	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:10:03.818	170	0
187	Dactylographie	0	100	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:10:26.412	175	100
189	Dactylographie	0	99	node08gxh4mxu3c1r1brm1r02zc5fm20	2020-02-10 10:10:29.281	173	100
190	Dactylographie	0	0	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:10:32.289	168	0
191	Dactylographie	0	94	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:10:32.718	167	100
194	Dactylographie	0	93	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:10:37.471	170	100
195	Dactylographie	1	0	node08gxh4mxu3c1r1brm1r02zc5fm20	2020-02-10 10:10:47.795	173	0
196	Dactylographie	0	0	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:10:48.911	182	0
197	Dactylographie	2	0	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:10:52.184	170	0
199	Dactylographie	2	0	node01avhvxdz0isz8qu0ffxme37d27	2020-02-10 10:10:52.855	188	0
200	Dactylographie	0	0	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:10:52.959	171	0
201	Dactylographie	1	0	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:11:01.398	175	0
202	Dactylographie	1	0	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:11:04.271	167	0
203	CSFirst	0	0	node01rqy64ozjbolnb5e8jx9mi4sw24	2020-02-10 10:11:13.649	198	0
204	Dactylographie	1	92	node08gxh4mxu3c1r1brm1r02zc5fm20	2020-02-10 10:11:14.639	173	100
205	Dactylographie	0	94	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:11:20.934	182	100
206	Dactylographie	0	96	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:11:22.297	171	100
207	Dactylographie	1	89	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:11:29.76	175	100
208	Dactylographie	1	93	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:11:31.724	167	100
209	Dactylographie	2	-3	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:11:37.194	169	100
210	Dactylographie	1	0	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:11:43.084	171	0
212	Dactylographie	2	0	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:11:44.509	175	0
213	Dactylographie	1	0	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:11:46.506	182	0
215	Dactylographie	2	0	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:11:53.255	167	0
216	Dactylographie	2	36	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:12:00.055	170	100
217	CSFirst	0	0	node0lww7kcuv21831vfoj2d1udu2118	2020-02-10 10:12:06.956	192	0
218	Dactylographie	1	95	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:12:11.781	182	100
219	Dactylographie	2	0	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:12:15.927	170	0
220	Dactylographie	2	0	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:12:16.392	214	0
221	Dactylographie	0	-129	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:12:18.055	168	100
222	Dactylographie	1	82	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:12:19.006	171	100
224	Dactylographie	2	0	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:12:31.939	182	0
225	Dactylographie	0	0	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:12:33.866	181	0
226	CSFirst	0	0	node01avhvxdz0isz8qu0ffxme37d27	2020-02-10 10:12:38.282	188	0
227	Dactylographie	0	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:12:39.355	169	0
228	Dactylographie	2	98	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:12:39.964	175	100
229	Dactylographie	2	0	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:12:40.123	171	0
230	Dactylographie	0	0	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:12:46.815	158	0
231	Dactylographie	3	0	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:12:52.26	175	0
232	Dactylographie	2	86	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:12:52.976	167	100
233	CSFirst	0	0	node01nmf7tdbqt105ynzrjshcggij12	2020-02-10 10:12:55.871	211	0
234	CSFirst	0	0	node01dyip29z38ehz1pqgrvezxo4qj15	2020-02-10 10:12:58.258	223	0
235	Dactylographie	1	0	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:13:02.178	168	0
236	Dactylographie	0	97	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:13:03.031	181	100
237	Dactylographie	0	97	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:13:09.042	169	100
238	Dactylographie	3	0	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:13:09.225	167	0
239	Dactylographie	2	96	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:13:18.143	170	100
240	Dactylographie	0	0	node0yu53wngbj1wu3c4m364m0urm23	2020-02-10 10:13:18.33	180	0
241	Dactylographie	1	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:13:21.27	169	0
242	Dactylographie	1	0	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:13:24.261	181	0
243	Dactylographie	0	85	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:13:28.433	158	100
244	Dactylographie	2	88	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:13:29.004	214	100
245	Dactylographie	1	0	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:13:31.5	170	0
246	Dactylographie	1	83	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:13:39.579	168	100
247	Dactylographie	1	99	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:13:42.987	169	100
248	Dactylographie	0	91	node0yu53wngbj1wu3c4m364m0urm23	2020-02-10 10:13:53.94	180	100
249	Dactylographie	1	89	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:13:55.717	181	100
250	Dactylographie	1	0	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:13:57.907	158	0
251	Dactylographie	1	93	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:13:58.986	170	100
252	Dactylographie	2	48	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:14:09.413	182	100
253	Dactylographie	2	54	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:14:09.515	171	100
254	Dactylographie	1	0	node0yu53wngbj1wu3c4m364m0urm23	2020-02-10 10:14:10.963	180	0
255	Dactylographie	3	0	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:14:11.123	170	0
256	Dactylographie	1	99	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:14:19.393	158	100
257	Dactylographie	2	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:14:25.211	169	0
258	Dactylographie	2	0	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:14:25.281	181	0
259	Dactylographie	3	0	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:14:25.968	171	0
260	Dactylographie	0	0	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:14:29.638	214	0
261	Dactylographie	3	0	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:14:37.207	182	0
262	Dactylographie	1	91	node0yu53wngbj1wu3c4m364m0urm23	2020-02-10 10:14:40.937	180	100
263	Dactylographie	2	0	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:14:41.123	158	0
264	Dactylographie	2	0	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:14:49.741	168	0
265	Dactylographie	2	0	node0yu53wngbj1wu3c4m364m0urm23	2020-02-10 10:14:53.314	180	0
266	Dactylographie	3	-8	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:14:55.375	167	100
267	Dactylographie	0	96	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:14:58.383	214	100
268	Dactylographie	1	0	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:15:10.196	214	0
269	Dactylographie	4	0	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:15:13.368	167	0
270	Dactylographie	0	0	node01s3e3qc3zw7qmgpfis6azyrur26	2020-02-10 10:15:14.405	193	0
271	Dactylographie	2	0	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:15:18.716	173	0
272	Word	0	0	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:15:23.56	182	0
273	Dactylographie	2	70	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:15:32.347	181	100
274	Dactylographie	2	86	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:15:38.661	169	100
275	Dactylographie	1	88	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:15:42.711	214	100
276	Dactylographie	0	98	node01s3e3qc3zw7qmgpfis6azyrur26	2020-02-10 10:15:42.956	193	100
277	Dactylographie	3	0	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:15:56.802	214	0
278	Dactylographie	2	93	node0yu53wngbj1wu3c4m364m0urm23	2020-02-10 10:15:59.883	180	100
279	Dactylographie	3	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:16:00.334	169	0
280	Dactylographie	3	0	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:16:00.96	181	0
281	Dactylographie	2	73	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:16:04.053	168	100
282	Dactylographie	2	60	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:16:04.408	158	100
283	CSFirst	0	0	node011ln1fhnl8wx5kq4a67mhzcic17	2020-02-10 10:16:07.825	170	0
284	Dactylographie	1	0	node01s3e3qc3zw7qmgpfis6azyrur26	2020-02-10 10:16:08.665	193	0
285	Dactylographie	2	0	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:16:18.308	158	0
286	Dactylographie	2	87	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:16:20.93	173	100
287	CSFirst	0	0	node06c1v0fn2s61z11bv7a78pmk7n19	2020-02-10 10:16:22.901	182	0
288	Dactylographie	3	0	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:16:24.076	168	0
289	Dactylographie	3	8	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:16:26.899	171	100
290	Dactylographie	3	0	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:16:30.811	173	0
291	Dactylographie	3	0	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:16:34.715	181	0
292	CSFirst	0	0	node01nnnrn2e6pies19550gu4jds2313	2020-02-10 10:16:35.322	175	0
293	CSFirst	0	0	node0yu53wngbj1wu3c4m364m0urm23	2020-02-10 10:16:35.637	180	0
294	Dactylographie	4	0	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:16:38.802	171	0
295	CSFirst	0	0	node0hyr4erbcz1ho849pkdx6ofdt14	2020-02-10 10:16:39.859	168	0
296	Dactylographie	1	85	node01s3e3qc3zw7qmgpfis6azyrur26	2020-02-10 10:16:40.808	193	100
297	CSFirst	0	0	node01f2cobmowozfj1nx95n1maff9h16	2020-02-10 10:16:54.61	167	0
298	Dactylographie	2	0	node01s3e3qc3zw7qmgpfis6azyrur26	2020-02-10 10:17:05.087	193	0
299	Dactylographie	2	57	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:17:40.185	158	100
300	Dactylographie	3	43	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:17:41.991	169	100
301	CSFirst	0	0	node01udri0fo1z9qrwa7way0z5c1h22	2020-02-10 10:17:42.186	181	0
302	CSFirst	0	0	node01aqeho04xt76o1uxy9wmnltv4c25	2020-02-10 10:17:55.427	214	0
303	Dactylographie	3	0	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:17:57.458	158	0
304	Dactylographie	3	65	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:17:59.754	173	100
305	Dactylographie	3	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:18:06.499	169	0
306	Dactylographie	2	84	node01s3e3qc3zw7qmgpfis6azyrur26	2020-02-10 10:18:18.739	193	100
307	Dactylographie	3	0	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:18:19.665	173	0
308	Dactylographie	4	-9	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:18:47.57	171	100
309	CSFirst	0	0	node01uftns1w1rfvyxphe5tweqd0h10	2020-02-10 10:18:52.702	159	0
310	CSFirst	0	0	node01s3e3qc3zw7qmgpfis6azyrur26	2020-02-10 10:19:01.701	193	0
311	Dactylographie	3	91	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:19:16.02	169	100
312	CSFirst	0	0	node01orjagnetuw4tjdl555oarbm511	2020-02-10 10:19:19.106	171	0
313	Dactylographie	4	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:19:42.365	169	0
314	Dactylographie	3	37	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:20:00.553	173	100
315	Dactylographie	3	0	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:20:09.272	173	0
316	CSFirst	0	0	node01t8v9fhhydv241s7f13c1tcu2d28	2020-02-10 10:20:29.788	173	0
318	CSFirst	0	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:21:27.548	169	0
317	Dactylographie	3	-65	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:20:47.379	158	100
319	CSFirst	0	0	node0mareddk6tnyx90sjuzf5vdu6	2020-02-10 10:21:28.425	158	0
320	CSFirst	0	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:25:47.25	169	0
321	CSFirst	0	0	node01lvk2rxa3pllvvdhsziv42bau21	2020-02-10 10:26:14.615	169	0
322	CSFirst	0	0	node0jlm52ueilh81urex2i28ovjo0	2020-02-10 13:00:06.075	4	0
324	CSFirst	0	0	node0set3oy1nspwg1ot4q0o81szqp10	2020-02-10 13:30:16.838	323	0
325	CSFirst	0	0	node0178m9svxpcjy21w9yyebbqkl1k11	2020-02-10 13:30:37.823	26	0
326	Dactylographie	0	0	node018njg7tgso1y1hgofm40hbwf816	2020-02-10 13:30:40.748	28	0
328	CSFirst	0	0	node0pegekw8kzru315vvxgnwv8rkv7	2020-02-10 13:31:28.741	31	0
330	Dactylographie	0	0	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:32:06.435	329	0
332	CSFirst	0	0	node0q48y2ha1tsug1lzmg8olcy0yq14	2020-02-10 13:32:27.144	23	0
333	Dactylographie	0	98	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:32:35.162	329	100
337	CSFirst	0	0	node017d32svu4vq881164av930mh8x23	2020-02-10 13:33:50.252	331	0
338	CSFirst	0	0	node01vcvash8q8dfs1q71xmrsufqp613	2020-02-10 13:33:54.149	35	0
339	Dactylographie	0	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:33:54.72	336	0
340	Dactylographie	1	0	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:33:56.013	329	0
341	Dactylographie	1	94	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:34:22.745	329	100
342	Dactylographie	2	0	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:34:31.747	329	0
343	CSFirst	0	0	node01rigzaygup06nhp8awfyt1l4r4	2020-02-10 13:34:51.951	37	0
345	CSFirst	0	0	node0q48y2ha1tsug1lzmg8olcy0yq14	2020-02-10 13:35:25.566	23	0
346	Dactylographie	2	89	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:35:31.377	329	100
347	Dactylographie	0	0	node0l367d1xj0a6bjkslh3wh4hvs20	2020-02-10 13:35:39.632	344	0
348	CSFirst	0	0	node0v99u41hgunb2ovl4gcdli9ce21	2020-02-10 13:36:05.05	24	0
349	Dactylographie	0	27	node0l367d1xj0a6bjkslh3wh4hvs20	2020-02-10 13:36:55.903	344	100
350	Dactylographie	4	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:36:55.986	336	0
352	CSFirst	0	0	node0ye3pxz0mrd401s5u5xebjv2qs25	2020-02-10 13:36:59.999	327	0
353	CSFirst	0	0	node04ns1bn0mnzh9f8z0cenfesy830	2020-02-10 13:37:15.826	32	0
354	CSFirst	0	0	node0set3oy1nspwg1ot4q0o81szqp10	2020-02-10 13:37:29.736	323	0
355	CSFirst	0	0	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:37:35.432	329	0
356	Dactylographie	6	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:37:35.89	336	0
357	Word	1	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:37:49.551	336	0
358	CSFirst	0	0	node0bn1h8slrit5j1henqhxp0u9ga12	2020-02-10 13:37:52.386	351	0
359	Dactylographie	2	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:38:03.416	336	0
360	CSFirst	0	0	node0l367d1xj0a6bjkslh3wh4hvs20	2020-02-10 13:38:28.214	344	0
361	CSFirst	0	0	node0ye3pxz0mrd401s5u5xebjv2qs25	2020-02-10 13:38:47.595	327	0
362	CSFirst	0	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:38:54.397	336	0
364	Dactylographie	2	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:39:33.664	336	0
365	CSFirst	0	0	node01gjs5jq7hhgrnuj8h79zg9z1e22	2020-02-10 13:40:06.663	336	0
366	CSFirst	0	0	node0cm8fygd4vroeju5dfs7enlqp9	2020-02-10 13:40:29.763	34	0
367	CSFirst	0	0	node0139lqlwcgc9n8sxh957mjshbx8	2020-02-10 13:40:35.983	363	0
368	CSFirst	0	0	node0set3oy1nspwg1ot4q0o81szqp10	2020-02-10 13:41:57.397	323	0
369	CSFirst	0	0	node01scruzbmdtr50lyt2a1bpoguk18	2020-02-10 13:42:07.064	22	0
370	CSFirst	0	0	node018njg7tgso1y1hgofm40hbwf816	2020-02-10 13:45:33.245	28	0
371	CSFirst	0	0	node01oz6ocqecojn6260cpqh3m44u17	2020-02-10 13:47:37.422	30	0
372	CSFirst	0	0	node01bfl4bbrkf8pdhdqldsg7nnbn15	2020-02-10 13:57:52.912	329	0
373	CSFirst	0	0	node0cm8fygd4vroeju5dfs7enlqp9	2020-02-10 13:59:43.677	34	0
374	CSFirst	0	0	node08b3kdf8svnu01ihgkz3dm739635	2020-02-11 08:31:26.398	7	0
375	CSFirst	0	0	node08b3kdf8svnu01ihgkz3dm739635	2020-02-11 08:31:54.536	7	0
376	CSFirst	1	0	node01xiq4f7iyv3sm1hyvcviag2pnz32	2020-02-13 09:09:03.418	4	0
377	CSFirst	1	0	node01xiq4f7iyv3sm1hyvcviag2pnz32	2020-02-13 09:09:20.822	4	0
378	CSFirst	1	0	node0sbtlc1pwc8hv140vplvou6kl953	2020-02-13 10:12:26.406	158	0
379	CSFirst	1	0	node0ol7lyds0h12g1wrln0bkhznqq58	2020-02-13 10:13:14.331	169	0
381	CSFirst	1	0	node0mt0t2sbedawk1gxfvoe9xckr968	2020-02-13 10:13:56.49	181	0
382	Word	1	0	node010hie7sjw49s8d6gqeiozs9h152	2020-02-13 10:14:40.393	159	0
384	CSFirst	1	0	node0xcces4mifoaum3cqfe5xjkr761	2020-02-13 10:15:04.366	168	0
385	Word	1	0	node010hie7sjw49s8d6gqeiozs9h152	2020-02-13 10:15:09.978	159	0
386	CSFirst	1	0	node0rpg7is3ywpzxscejr9qncakv70	2020-02-13 10:15:16.528	383	0
387	CSFirst	1	0	node0hfphtnecjnrb16l86r3hwvzwf59	2020-02-13 10:15:29.439	182	0
388	CSFirst	1	0	node0midgpgsg24e4186cklc2sokox56	2020-02-13 10:15:36.803	173	0
390	CSFirst	1	0	node010hie7sjw49s8d6gqeiozs9h152	2020-02-13 10:15:52.729	159	0
391	CSFirst	1	0	node0hfphtnecjnrb16l86r3hwvzwf59	2020-02-13 10:15:52.825	182	0
392	CSFirst	1	0	node01774ksk5smx7wjtb80p540j9m62	2020-02-13 10:16:16.703	167	0
393	Dactylographie	1	0	node01dkirwu4fxmqf1fc3fshnilvsf44	2020-02-13 10:16:16.973	389	0
395	CSFirst	1	0	node01b1k5dx1f1z46ifthgqgrtq4m64	2020-02-13 10:16:39.763	394	0
396	CSFirst	1	0	node07dvo07alokqajyqm242izq7j67	2020-02-13 10:16:45.292	214	0
397	CSFirst	1	0	node010hie7sjw49s8d6gqeiozs9h152	2020-02-13 10:16:45.469	159	0
399	Dactylographie	1	0	node01dkirwu4fxmqf1fc3fshnilvsf44	2020-02-13 10:17:08.534	389	0
398	Dactylographie	1	88	node01dkirwu4fxmqf1fc3fshnilvsf44	2020-02-13 10:16:49.764	389	100
406	CSFirst	1	0	node01bdpxy9rnvzzm1w3t3qvhf899o60	2020-02-13 10:18:07.089	155	0
400	CSFirst	1	0	node0wv5ehxqg7ts9m5kuk3a5853372	2020-02-13 10:17:10.996	171	0
402	CSFirst	1	0	node0p9iply121fj21nlpir7tgf3gw57	2020-02-13 10:17:29.655	170	0
405	CSFirst	1	0	node01ps5eyzkyiwnkqk9di4wuvqoa63	2020-02-13 10:17:56.45	166	0
404	CSFirst	1	0	node0rpg7is3ywpzxscejr9qncakv70	2020-02-13 10:17:53.019	383	0
407	CSFirst	1	0	node01dkirwu4fxmqf1fc3fshnilvsf44	2020-02-13 10:18:10.347	389	0
408	CSFirst	1	0	node05p1ciedcw5291cq9evg50bgar40	2020-02-13 10:18:12.028	403	0
409	CSFirst	1	0	node0mmqbzj01yta01igovbidic6jy65	2020-02-13 10:18:12.783	401	0
412	CSFirst	1	0	node018qb7ai7o9j6wzds8sku739af66	2020-02-13 10:19:45.175	163	0
413	CSFirst	1	0	node01c3b50dmcu0eqe79x3uq131pq46	2020-02-13 10:19:53.239	411	0
414	CSFirst	1	0	node0z891u84s1vjhjy0iz67dpwm050	2020-02-13 10:19:55.72	410	0
416	CSFirst	1	0	node0j3qydfecl7vx1wngznts54az271	2020-02-13 10:21:42.051	415	0
417	CSFirst	1	0	node0j3qydfecl7vx1wngznts54az271	2020-02-13 10:21:53.618	415	0
418	CSFirst	1	0	node01ps5eyzkyiwnkqk9di4wuvqoa63	2020-02-13 10:22:35.49	166	0
419	CSFirst	1	0	node01bdpxy9rnvzzm1w3t3qvhf899o60	2020-02-13 10:23:06.044	155	0
420	CSFirst	1	0	node01b1k5dx1f1z46ifthgqgrtq4m64	2020-02-13 10:29:27.79	394	0
421	CSFirst	1	0	node06h0xtgwvpxf2q9lxlq7jzsy974	2020-02-13 10:30:50.071	394	0
422	CSFirst	1	0	node01nm6zaa73c1rv141sqtiopttii75	2020-02-13 10:31:47.478	214	0
423	CSFirst	1	0	node01wvhgzmqnjq17lcvvlszvjoj188	2020-02-13 11:04:47.912	394	0
424	CSFirst	1	0	node0bmpdkt89vguo1nj8er9ie1awe99	2020-02-13 14:59:59.643	23	0
433	Dactylographie	0	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:37:58.566	430	0
435	Dactylographie	0	88	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:38:35.481	430	100
437	Dactylographie	0	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:38:46.253	432	0
438	Dactylographie	0	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:38:51.03	434	0
439	Dactylographie	1	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:38:56.577	430	0
441	Dactylographie	0	81	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:39:32.078	432	100
443	Dactylographie	1	69	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:39:47.518	430	100
444	Dactylographie	0	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:40:00.487	434	0
445	Dactylographie	2	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:40:02.025	430	0
446	Dactylographie	1	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:40:05.372	432	0
448	Dactylographie	0	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:40:32.277	434	0
449	Dactylographie	1	90	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:40:35.597	432	100
451	Dactylographie	0	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:40:52.925	447	0
453	Dactylographie	0	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 08:40:59.536	442	0
454	Dactylographie	2	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:41:03.931	432	0
457	Dactylographie	2	74	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:41:24.17	430	100
458	Dactylographie	0	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:41:32.872	455	0
459	Dactylographie	3	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:41:38.602	430	0
460	Dactylographie	0	74	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:41:40.394	447	100
462	Dactylographie	0	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:41:52.812	456	0
463	Dactylographie	0	67	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 08:41:53.726	442	100
465	Dactylographie	1	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:42:10.151	447	0
466	Dactylographie	0	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:42:10.253	461	0
467	Dactylographie	0	64	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:42:33.53	455	100
470	Dactylographie	1	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:42:46.448	455	0
471	Dactylographie	2	41	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:42:48.925	432	100
472	Dactylographie	0	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:43:01.628	429	0
474	Dactylographie	2	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:43:17.489	432	0
475	Dactylographie	1	88	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:43:19.291	455	100
477	Dactylographie	1	44	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:43:20.55	447	100
479	Dactylographie	2	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:43:45.177	455	0
480	Dactylographie	2	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:43:50.476	447	0
481	Dactylographie	0	68	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:43:57.269	429	100
482	Dactylographie	1	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:44:10.769	429	0
483	Dactylographie	0	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:44:20.444	464	0
484	Dactylographie	0	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:44:27.442	478	0
486	Dactylographie	1	92	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:44:39.077	429	100
487	Dactylographie	0	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:44:39.18	461	100
488	Dactylographie	1	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:44:50.642	461	0
489	Dactylographie	0	0	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:44:54.206	468	0
490	Dactylographie	2	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:44:57.085	429	0
491	Dactylographie	0	88	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:44:57.775	464	100
493	Dactylographie	2	8	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:45:10.86	432	100
494	Dactylographie	1	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:45:12.437	464	0
495	Dactylographie	2	39	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:45:13.537	455	100
496	Dactylographie	2	65	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:45:19.391	447	100
497	Dactylographie	0	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:45:20.539	492	0
498	Dactylographie	2	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:45:25.198	432	0
499	Dactylographie	0	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:45:29.969	476	0
500	Dactylographie	3	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:45:30.412	455	0
501	Dactylographie	0	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:45:32.598	428	0
502	Dactylographie	3	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:45:38.132	447	0
503	Dactylographie	0	0	node03rxqaztt9q651rul48q7at8yp12	2020-02-18 08:45:58.507	485	0
504	Dactylographie	1	47	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:45:59.466	461	100
505	Dactylographie	1	67	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:46:03.526	464	100
506	Dactylographie	0	91	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:46:08.394	428	100
507	Dactylographie	2	82	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:46:11.728	429	100
508	Dactylographie	0	71	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:46:18.066	476	100
509	Dactylographie	1	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:46:18.238	428	0
510	Dactylographie	2	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:46:24.852	464	0
511	Dactylographie	2	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:46:36.832	461	0
512	Dactylographie	3	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:46:37.864	429	0
513	Dactylographie	1	99	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:46:40.031	428	100
514	Dactylographie	0	4	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:46:46.696	468	100
515	Dactylographie	2	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:46:49.671	428	0
516	Dactylographie	1	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:46:57.505	476	0
517	Dactylographie	3	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:47:04.184	430	100
518	Dactylographie	0	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:47:07.168	478	100
521	Dactylographie	0	0	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:47:14.615	468	0
522	Dactylographie	2	35	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:47:16.594	432	100
524	Dactylographie	4	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:47:17.775	430	0
525	Dactylographie	0	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:47:26.894	492	100
526	Dactylographie	1	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:47:29.435	523	0
527	Dactylographie	3	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:47:31.566	432	0
528	Dactylographie	0	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:47:35.231	519	0
529	Dactylographie	0	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:47:40.262	492	0
530	Dactylographie	1	77	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:47:40.963	476	100
531	Dactylographie	1	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:47:48.111	478	0
532	Dactylographie	2	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:48:01.682	476	0
533	Dactylographie	0	94	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:48:07.356	519	100
534	Dactylographie	0	69	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:48:09.161	468	100
536	Dactylographie	0	85	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:48:21.35	492	100
537	Dactylographie	1	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:48:32.623	519	0
538	Dactylographie	2	55	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:48:33.596	428	100
539	Dactylographie	1	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:48:34.991	492	0
540	Dactylographie	1	0	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:48:36.813	468	0
541	Dactylographie	2	18	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:48:39.445	464	100
542	Dactylographie	3	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:48:42.862	428	0
543	Dactylographie	0	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:48:45.254	523	0
544	Dactylographie	3	3	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:48:50.886	429	100
545	Dactylographie	3	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:48:56.856	464	0
547	Dactylographie	1	89	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:49:04.431	519	100
548	Dactylographie	3	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:49:07.829	429	0
549	Dactylographie	1	82	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:49:13.838	492	100
551	Dactylographie	1	76	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:49:20.432	468	100
552	Dactylographie	1	28	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:49:20.689	478	100
553	Dactylographie	2	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:49:20.986	519	0
554	Dactylographie	0	0	node0gmh2j2g9qzpm14oe3k5cm08mj24	2020-02-18 08:49:22.015	520	0
555	Dactylographie	2	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:49:25.981	492	0
556	Dactylographie	3	100	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:49:46.426	428	100
557	Dactylographie	2	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:49:47.893	478	0
559	Dactylographie	4	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:49:59.789	428	0
560	Dactylographie	3	99	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:50:01.779	429	100
562	Dactylographie	2	0	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:50:12.044	468	0
563	Dactylographie	5	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:50:19.265	523	0
564	Dactylographie	4	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:50:20.644	429	0
565	Dactylographie	2	16	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:50:21.91	476	100
566	Dactylographie	2	90	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:50:28.523	519	100
568	Dactylographie	0	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:50:42.071	519	0
569	Dactylographie	3	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:50:42.935	432	100
570	Dactylographie	3	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:50:44.351	476	0
573	Dactylographie	0	99	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:51:10.036	519	100
574	Dactylographie	0	0	node03rxqaztt9q651rul48q7at8yp12	2020-02-18 08:51:10.288	485	100
575	Dactylographie	1	0	node03rxqaztt9q651rul48q7at8yp12	2020-02-18 08:51:23.204	485	0
576	Dactylographie	0	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:51:23.681	432	0
577	Dactylographie	3	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:51:26.563	519	0
578	Dactylographie	4	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:51:27.021	430	100
579	Dactylographie	0	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 08:51:29.747	572	0
580	Dactylographie	4	67	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:51:33.241	428	100
581	Dactylographie	2	50	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:51:34.906	478	100
582	Dactylographie	5	0	node01qxc1trjkqqio1gxfa3oz0x3gd9	2020-02-18 08:51:46.543	430	0
583	Dactylographie	2	4	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:51:47.291	492	100
584	Dactylographie	3	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:51:49.731	478	0
585	Dactylographie	5	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:51:55.163	428	0
587	Dactylographie	0	86	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:52:00.485	432	100
588	Dactylographie	2	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:52:02.054	492	0
589	Dactylographie	3	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:52:19.051	455	100
591	Dactylographie	2	26	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:52:24.321	468	100
592	Dactylographie	6	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:52:27.14	523	0
593	Dactylographie	2	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:52:27.217	432	0
594	Dactylographie	5	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:52:37.372	523	0
595	Dactylographie	3	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:52:40.089	455	0
596	Dactylographie	1	37	node03rxqaztt9q651rul48q7at8yp12	2020-02-18 08:52:46.278	485	100
598	Dactylographie	0	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:52:51.64	523	0
599	Dactylographie	4	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:52:59.006	429	100
600	Dactylographie	2	0	node03rxqaztt9q651rul48q7at8yp12	2020-02-18 08:52:59.749	485	0
603	Dactylographie	2	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:53:16.602	461	100
604	Dactylographie	4	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:53:21.823	429	0
606	Dactylographie	2	0	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:53:28.786	468	0
607	Dactylographie	1	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 08:53:30.155	597	0
608	Dactylographie	0	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:53:33.31	461	0
609	Dactylographie	3	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:53:33.607	464	100
610	Dactylographie	0	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:53:39.636	602	0
611	Dactylographie	4	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:53:50.798	464	0
612	Dactylographie	0	61	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:53:54.005	523	100
615	Dactylographie	2	23	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:54:00.336	492	100
616	Dactylographie	1	82	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 08:54:08.121	597	100
617	Dactylographie	0	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:54:09.045	523	0
619	Dactylographie	2	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:54:11.494	492	0
620	Dactylographie	2	54	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:54:13.44	432	100
621	Dactylographie	1	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 08:54:19.679	597	0
622	Dactylographie	0	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:54:30.907	614	0
623	Dactylographie	3	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:54:32.824	432	0
624	Dactylographie	0	60	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:54:35.783	461	100
625	Dactylographie	0	91	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:54:42.499	523	100
626	Dactylographie	0	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 08:54:42.803	605	0
627	Dactylographie	0	60	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:54:43.288	602	100
628	Dactylographie	1	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:54:48.609	461	0
629	Dactylographie	3	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:54:56.316	478	100
630	Dactylographie	1	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:54:58.028	523	0
631	Dactylographie	4	69	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:55:00.389	429	100
632	Dactylographie	4	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:55:04.46	478	0
633	Word	0	0	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 08:55:04.956	601	0
634	Dactylographie	1	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:55:10.814	602	0
635	Dactylographie	5	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:55:15.857	429	0
636	Dactylographie	0	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:55:22.141	464	0
637	Dactylographie	0	53	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:55:26.716	614	100
638	Dactylographie	1	92	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:55:26.77	523	100
639	Dactylographie	3	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:55:32.239	519	100
640	Dactylographie	3	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:55:42.633	455	100
642	Dactylographie	1	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:55:45.369	614	0
643	Dactylographie	4	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:55:45.983	519	0
644	Dactylographie	2	11	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:55:48.51	468	100
645	Dactylographie	0	0	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 08:55:49.406	601	0
646	Dactylographie	3	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:55:51.533	476	100
648	Dactylographie	0	95	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:55:53.255	464	100
650	Dactylographie	1	69	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:55:57.219	602	100
651	Dactylographie	3	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:56:13.579	602	0
652	Dactylographie	1	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:56:22.91	464	0
653	Dactylographie	1	79	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:56:23.914	614	100
654	Dactylographie	2	18	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:56:24.958	492	100
655	Word	0	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 08:56:32.114	461	0
656	Dactylographie	3	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:56:37.275	492	0
657	Dactylographie	2	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:56:43.279	614	0
658	Dactylographie	3	0	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:56:43.95	468	0
659	Dactylographie	0	0	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 08:56:57.452	572	0
660	Dactylographie	1	74	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:57:06.536	464	100
661	Dactylographie	0	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 08:57:15.955	605	100
662	Dactylographie	4	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:57:29.152	455	0
663	Word	0	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:57:34.958	464	0
664	Dactylographie	0	14	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 08:57:37.038	601	100
665	Dactylographie	5	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:57:43.846	428	100
666	Dactylographie	0	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 08:57:44.505	605	0
667	Dactylographie	6	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:57:51.136	464	0
668	Dactylographie	0	47	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 08:58:10.416	572	100
669	Dactylographie	5	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:58:16.52	464	0
670	Dactylographie	1	0	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 08:58:18.517	601	0
671	Dactylographie	2	60	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:58:20.132	614	100
672	Dactylographie	1	0	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 08:58:27.714	572	0
673	Dactylographie	0	83	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 08:58:28.146	605	100
674	Dactylographie	2	0	node03rxqaztt9q651rul48q7at8yp12	2020-02-18 08:58:30.497	485	100
675	Dactylographie	2	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:58:37.881	523	0
676	Dactylographie	3	0	node03rxqaztt9q651rul48q7at8yp12	2020-02-18 08:58:44.985	485	0
677	Dactylographie	3	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:58:46.01	614	0
678	Dactylographie	0	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:58:51.913	431	0
679	Dactylographie	4	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:59:00.137	478	100
680	Dactylographie	1	81	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 08:59:06.183	572	100
681	Dactylographie	0	100	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:59:10.551	431	100
682	Dactylographie	1	64	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 08:59:14.875	601	100
683	Dactylographie	2	0	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 08:59:16.713	572	0
684	Dactylographie	1	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 08:59:19.163	605	0
686	Dactylographie	1	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:59:23.033	431	0
687	Dactylographie	5	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:59:30.001	478	0
688	Dactylographie	0	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 08:59:39.732	685	0
689	Dactylographie	1	100	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:59:42.52	431	100
690	Dactylographie	2	0	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 08:59:43.451	601	0
691	Dactylographie	4	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:59:48.96	519	100
692	Dactylographie	1	88	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 08:59:52.11	605	100
693	Dactylographie	2	86	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:59:52.507	523	100
694	Dactylographie	0	0	node0gmh2j2g9qzpm14oe3k5cm08mj24	2020-02-18 08:59:53.31	520	0
695	Dactylographie	2	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:59:54.041	431	0
696	Dactylographie	5	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 09:00:00.395	519	0
697	Dactylographie	2	90	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 09:00:16.444	572	100
698	Dactylographie	1	0	node0gmh2j2g9qzpm14oe3k5cm08mj24	2020-02-18 09:00:17.271	520	0
699	Dactylographie	0	79	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 09:00:21.853	685	100
700	Dactylographie	3	0	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 09:00:33.751	572	0
701	Dactylographie	1	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 09:00:36.687	685	0
702	Dactylographie	2	91	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:00:39.522	431	100
703	Dactylographie	3	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:00:49.673	431	0
704	Dactylographie	2	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:01:14.251	605	0
705	Dactylographie	1	68	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 09:01:29.434	685	100
706	Dactylographie	3	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 09:01:35.362	492	100
707	Dactylographie	2	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 09:01:39.728	685	0
708	Dactylographie	3	99	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:01:48.043	431	100
709	Dactylographie	3	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 09:01:50.056	492	0
711	Dactylographie	0	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:02:09.667	710	0
712	Dactylographie	5	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 09:02:14.876	461	0
713	Dactylographie	0	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:02:19.876	614	0
714	Dactylographie	2	0	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 09:02:24.36	601	100
715	Dactylographie	0	100	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:02:34.776	710	100
717	Dactylographie	1	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:02:47.167	710	0
718	Dactylographie	0	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:02:50.933	716	0
719	Dactylographie	0	89	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:02:57.862	614	100
720	Dactylographie	5	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:03:08.065	429	100
721	Dactylographie	3	0	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 09:03:10.034	601	0
722	CSFirst	2	0	node01ex5nn7lrw6dqmfurbzmk8jsp7	2020-02-18 09:03:13.671	461	0
723	Dactylographie	1	93	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:03:14.36	710	100
724	Dactylographie	4	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:03:14.994	431	0
725	Dactylographie	2	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:03:15.517	614	0
726	Dactylographie	2	52	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 09:03:25.861	685	100
727	Dactylographie	6	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:03:26.943	429	0
728	Dactylographie	2	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:03:26.964	710	0
730	Dactylographie	0	72	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:03:44.508	716	100
732	Dactylographie	1	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:04:12.084	716	0
733	Dactylographie	4	97	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:04:15.056	431	100
735	Dactylographie	5	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:04:24.226	431	0
737	Dactylographie	0	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:04:36.437	734	0
738	Dactylographie	2	70	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:04:46.778	710	100
739	CSFirst	0	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 09:04:48.668	464	0
740	Dactylographie	2	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:04:57.428	605	100
741	CSFirst	0	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 09:05:04.347	464	0
743	Dactylographie	0	98	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:05:05.065	734	100
744	Dactylographie	1	65	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:05:05.324	716	100
745	Dactylographie	0	0	node01x7n14u558got14y4z6u8ictm49	2020-02-18 09:05:10.32	736	0
746	Dactylographie	0	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:05:13.12	742	0
747	Dactylographie	3	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 09:05:13.411	492	100
748	Dactylographie	3	0	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 09:05:17.693	572	100
749	Dactylographie	3	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:05:19.234	710	0
750	Dactylographie	3	0	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 09:05:20.866	464	0
751	Dactylographie	1	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:05:25.677	734	0
753	Dactylographie	2	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:05:35.314	716	0
754	Dactylographie	3	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:05:36.227	710	0
755	Dactylographie	0	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:05:38.844	427	0
756	Dactylographie	4	0	node0vkonfx02ywrr1jr7fptpc0bdc20	2020-02-18 09:05:38.92	572	0
757	Dactylographie	0	0	node0gmh2j2g9qzpm14oe3k5cm08mj24	2020-02-18 09:05:47.771	752	0
758	Dactylographie	0	83	node01x7n14u558got14y4z6u8ictm49	2020-02-18 09:05:49.852	736	100
759	Dactylographie	1	91	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:05:55.6	734	100
760	Dactylographie	0	100	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:06:05.45	427	100
761	Dactylographie	1	0	node01x7n14u558got14y4z6u8ictm49	2020-02-18 09:06:11.765	736	0
762	Dactylographie	2	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:06:16.884	734	0
763	Dactylographie	2	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:06:21.102	605	0
764	Dactylographie	0	52	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:06:21.563	742	100
765	Dactylographie	1	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:06:22.901	427	0
766	Dactylographie	0	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:06:32.327	450	0
767	Dactylographie	1	86	node01x7n14u558got14y4z6u8ictm49	2020-02-18 09:06:42.272	736	100
768	Dactylographie	1	0	node0gmh2j2g9qzpm14oe3k5cm08mj24	2020-02-18 09:06:45.345	752	0
769	Dactylographie	3	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:06:45.785	710	0
770	Dactylographie	1	94	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:06:49.308	427	100
771	Dactylographie	1	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:06:56.48	742	0
772	Dactylographie	2	0	node01x7n14u558got14y4z6u8ictm49	2020-02-18 09:06:58.636	736	0
773	Dactylographie	2	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:07:00.03	427	0
774	Dactylographie	0	80	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:07:18.56	450	100
775	Dactylographie	2	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:07:24.996	614	100
776	Dactylographie	2	83	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:07:33.401	734	100
777	Dactylographie	1	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:07:33.414	450	0
778	Dactylographie	1	82	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:07:34.307	742	100
780	Dactylographie	0	0	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:07:46.518	779	0
781	Dactylographie	2	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:07:53.692	742	0
782	Dactylographie	1	100	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:07:54.399	450	100
783	Dactylographie	3	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:07:56.075	734	0
784	Dactylographie	2	52	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:07:56.128	605	100
785	Dactylographie	2	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:07:57.502	614	0
787	Dactylographie	0	98	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:08:09.932	779	100
788	Dactylographie	2	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:08:12.434	716	100
789	Dactylographie	5	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 09:08:13.468	519	100
790	Dactylographie	2	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:08:19.143	450	0
791	Dactylographie	2	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:08:19.945	605	0
792	Dactylographie	1	0	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:08:20.024	779	0
793	Dactylographie	2	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:08:35.833	716	0
794	Dactylographie	6	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 09:08:44.188	519	0
795	Dactylographie	1	87	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:08:51.876	779	100
796	Dactylographie	2	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:08:55.784	427	100
797	Dactylographie	5	60	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:08:56.78	431	100
798	Dactylographie	2	96	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:09:14.036	450	100
799	Dactylographie	3	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:09:20.413	427	0
800	Dactylographie	3	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:09:21.023	710	100
801	Dactylographie	3	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:09:23.695	450	0
802	Dactylographie	6	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:09:27.139	431	0
803	Dactylographie	4	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:09:36.972	710	0
804	Dactylographie	2	35	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:09:51.672	742	100
805	Dactylographie	2	0	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:09:55.49	779	0
806	Dactylographie	2	17	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:10:02.843	614	100
807	Dactylographie	3	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:10:03.265	742	0
808	Dactylographie	2	27	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:10:13.605	605	100
809	Dactylographie	3	99	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:10:18.924	450	100
810	Dactylographie	2	0	node01x7n14u558got14y4z6u8ictm49	2020-02-18 09:10:19.482	736	100
811	Dactylographie	3	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:10:22.838	734	100
812	Dactylographie	4	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:10:30.585	450	0
813	Dactylographie	4	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:10:36.198	734	0
814	Dactylographie	3	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:10:44.038	614	0
815	Dactylographie	2	13	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:10:58.442	716	100
816	Dactylographie	3	52	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:11:06.237	427	100
817	Dactylographie	4	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:11:11.656	605	0
818	Dactylographie	4	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:11:17.867	427	0
819	Dactylographie	2	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:11:30.825	716	0
820	Dactylographie	2	40	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:11:37.729	779	100
821	Dactylographie	3	0	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:11:46.169	779	0
823	Dactylographie	4	88	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:11:59.403	450	100
824	Dactylographie	5	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:12:10.573	450	0
826	Dactylographie	4	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:12:57.652	710	100
827	Dactylographie	3	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:13:03.682	742	100
828	Dactylographie	5	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:13:14.513	710	0
829	Dactylographie	4	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 09:13:17.202	742	0
830	Dactylographie	3	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 09:13:24.026	519	0
831	Dactylographie	4	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:13:39.08	734	100
832	Dactylographie	0	0	node0p9g63uzgcwzk76558cnlitqm54	2020-02-18 09:13:40.469	520	0
833	Dactylographie	5	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 09:13:47.578	734	0
834	Dactylographie	3	0	node01p4i3wlh7taa13frmzswf4juo45	2020-02-18 09:13:57.293	605	0
835	Dactylographie	2	0	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 09:13:59.458	786	0
836	Dactylographie	4	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:14:00.845	427	100
837	Dactylographie	2	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:14:07.496	716	100
838	Dactylographie	0	90	node0p9g63uzgcwzk76558cnlitqm54	2020-02-18 09:14:16.01	520	100
839	Dactylographie	5	0	node0swwiiz3jcc12191hywo4etgdu51	2020-02-18 09:14:16.174	427	0
840	Dactylographie	3	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:14:20.151	710	0
841	Dactylographie	3	0	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:14:25.024	779	0
842	Dactylographie	3	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:14:31.055	716	0
843	Dactylographie	6	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 09:14:32.26	431	0
844	Dactylographie	1	0	node0p9g63uzgcwzk76558cnlitqm54	2020-02-18 09:14:38.202	520	0
845	Dactylographie	3	74	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 09:14:47.67	519	100
846	Dactylographie	6	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 09:15:11.465	519	0
847	Dactylographie	2	81	node010pvg2dxrn7u2yah0evwqtwhz15	2020-02-18 09:15:17.09	786	100
848	Dactylographie	1	79	node0p9g63uzgcwzk76558cnlitqm54	2020-02-18 09:15:19.144	520	100
849	Dactylographie	6	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 09:15:28.415	519	0
851	Dactylographie	2	0	node0p9g63uzgcwzk76558cnlitqm54	2020-02-18 09:15:47.248	520	0
852	Dactylographie	3	59	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:15:57.173	710	100
853	Dactylographie	0	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:16:02.683	850	0
854	Dactylographie	3	17	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:16:31.256	779	100
855	Dactylographie	4	0	node01vgaflgbxvr8o1brkm1cb6kh1q50	2020-02-18 09:16:47.59	779	0
856	Dactylographie	0	81	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:16:47.938	850	100
857	Dactylographie	4	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 09:17:06.727	710	0
858	Dactylographie	2	78	node0p9g63uzgcwzk76558cnlitqm54	2020-02-18 09:17:09.618	520	100
859	Dactylographie	1	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:17:12.994	850	0
860	Dactylographie	3	0	node0p9g63uzgcwzk76558cnlitqm54	2020-02-18 09:17:33.766	520	0
861	Dactylographie	5	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 09:17:45.329	478	100
862	Dactylographie	6	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 09:17:54.84	478	0
863	Dactylographie	1	79	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:17:54.949	850	100
865	Dactylographie	2	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:18:14.333	850	0
866	Dactylographie	3	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:18:41.652	716	100
867	Dactylographie	5	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:18:44.373	450	100
868	Dactylographie	6	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 09:18:53.964	450	0
869	Dactylographie	4	0	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:18:55.938	716	0
870	Dactylographie	3	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 09:19:39.357	614	100
871	CSFirst	1	0	node015g06o0sj54pi16sc3rpmhxma2184	2020-02-19 08:30:36.637	169	0
872	Dactylographie	3	0	node018pgtrp573ayc16ufn1w99o2vz179	2020-02-19 08:30:52.664	181	0
873	CSFirst	0	0	node06etw98pyl6qt1btavts388mso183	2020-02-19 08:31:17.416	410	0
874	CSFirst	2	0	node018pgtrp573ayc16ufn1w99o2vz179	2020-02-19 08:31:52.759	181	0
878	Dactylographie	1	0	node01p3d83m73mt5blk65gupwe10915	2020-02-26 11:17:57.997	4	0
879	Dactylographie	1	67	node01p3d83m73mt5blk65gupwe10915	2020-02-26 11:18:44.57	4	100
881	Dactylographie	0	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:22:33.575	880	0
883	Dactylographie	0	88	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:23:09.487	880	100
884	Dactylographie	1	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:23:36.671	880	0
886	Dactylographie	1	95	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:24:02.341	880	100
887	Dactylographie	2	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:25:09.821	880	0
888	Dactylographie	0	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:25:25.998	885	0
889	Dactylographie	2	99	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:26:05.179	880	100
890	Dactylographie	0	85	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:26:06.572	885	100
892	Dactylographie	0	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:26:25.748	891	0
893	Dactylographie	1	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:26:44.852	885	0
894	Dactylographie	3	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:26:53.476	880	0
895	Dactylographie	0	86	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:27:05.782	891	100
896	Dactylographie	1	79	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:27:25.166	885	100
898	Dactylographie	3	100	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:27:57.369	880	100
899	Dactylographie	1	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:27:57.899	891	0
900	Dactylographie	2	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:28:20.798	885	0
901	Dactylographie	1	84	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:28:34.645	891	100
902	Dactylographie	4	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:28:36.114	880	0
903	Dactylographie	2	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:28:46.82	891	0
904	Dactylographie	0	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:29:11.836	897	0
905	Dactylographie	0	84	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:29:52.863	897	100
906	Dactylographie	2	58	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:30:02.021	885	100
907	Dactylographie	1	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:30:09.773	897	0
908	Dactylographie	4	10	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:30:32.168	880	100
909	Dactylographie	1	81	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:30:48.299	897	100
910	Dactylographie	4	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:30:51.296	880	0
911	Dactylographie	2	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:30:56.579	897	0
912	Dactylographie	2	28	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:30:57.181	891	100
913	Dactylographie	0	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:31:05.292	885	0
915	Dactylographie	2	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:31:24.677	891	0
917	Dactylographie	0	96	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:31:34.645	885	100
919	Dactylographie	0	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:31:53.445	914	0
920	Dactylographie	1	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:31:59.389	885	0
921	Dactylographie	1	92	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:32:28.216	885	100
922	Dactylographie	2	61	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:32:35.625	897	100
923	Dactylographie	4	63	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:32:37.165	880	100
924	Dactylographie	3	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:32:46.962	897	0
925	Dactylographie	2	73	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:32:52.013	891	100
926	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:33:04.542	891	0
927	Dactylographie	5	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:33:14.094	880	0
928	Dactylographie	3	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:33:39.864	885	0
929	Dactylographie	2	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:34:04.38	891	0
930	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:34:22.374	891	0
932	Dactylographie	3	31	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:34:51.903	897	100
933	Dactylographie	2	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:35:02.97	897	0
934	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:35:19.461	891	0
935	Dactylographie	1	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:35:46.589	916	0
936	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:35:50.43	891	0
937	Dactylographie	3	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:36:22.977	885	100
938	Dactylographie	2	59	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:36:40.476	897	100
939	Dactylographie	3	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:36:51.034	885	0
940	Dactylographie	2	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:36:53.838	897	0
941	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:36:53.975	891	0
942	Dactylographie	1	48	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:36:56.762	916	100
943	Dactylographie	1	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:37:25.507	916	0
944	Dactylographie	0	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:37:32.563	931	0
945	Dactylographie	1	59	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:38:17.883	916	100
946	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:38:24.711	891	0
947	Dactylographie	2	58	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:38:33.288	897	100
948	Dactylographie	3	53	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:38:34.063	885	100
949	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:38:40.768	891	0
950	Dactylographie	2	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:38:51.541	897	0
951	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:38:58.715	916	0
952	Dactylographie	2	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:39:16.901	885	0
953	Dactylographie	0	10	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:39:24.966	931	100
954	Dactylographie	0	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:39:49.896	931	0
955	Dactylographie	0	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:40:23.912	914	0
956	Dactylographie	3	58	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:40:28.984	891	100
957	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:40:39.664	891	0
958	Dactylographie	0	77	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:40:39.784	931	100
959	Dactylographie	2	38	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:40:42.466	897	100
960	Dactylographie	2	56	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:40:52.928	885	100
961	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:41:04.312	891	0
962	Dactylographie	0	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:41:10.34	918	0
963	Dactylographie	3	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:41:14.418	897	0
964	Dactylographie	1	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:41:24.503	931	0
965	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:41:25.992	891	0
966	Dactylographie	5	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:41:37.96	880	100
967	Dactylographie	0	51	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:41:39.586	914	100
968	Dactylographie	4	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:41:48.174	885	0
970	Dactylographie	0	73	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:42:03.847	918	100
974	Word	0	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:42:26.694	885	0
977	Dactylographie	0	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:42:55.08	918	0
979	Dactylographie	1	88	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:43:05.14	931	100
980	Dactylographie	0	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:43:19.621	916	0
981	Dactylographie	3	33	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:43:21.151	897	100
984	Dactylographie	2	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:43:29.867	931	0
985	Dactylographie	1	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:43:33.18	918	0
989	Dactylographie	0	77	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:44:09.25	916	100
969	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:41:58.736	891	0
971	Dactylographie	1	74	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:42:09.748	931	100
972	Dactylographie	1	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:42:18.642	914	0
973	Dactylographie	6	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:42:26.152	880	0
975	Dactylographie	1	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:42:32.799	931	0
976	Dactylographie	5	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:42:54.219	885	0
978	Dactylographie	1	82	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:42:57.105	914	100
982	Dactylographie	2	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:43:25.682	914	0
983	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:43:28.593	891	0
986	Dactylographie	3	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:43:36.609	897	0
987	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:43:50.641	891	0
988	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:44:08.121	891	0
990	Dactylographie	1	68	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:44:25.221	918	100
991	Dactylographie	1	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:44:31.395	916	0
992	Dactylographie	1	89	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:45:03.136	916	100
993	Dactylographie	3	66	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:45:16.926	897	100
994	Dactylographie	1	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:45:26.012	918	0
995	Dactylographie	0	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:45:44.296	897	0
996	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:45:49.242	916	0
997	Dactylographie	1	69	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:46:10.932	918	100
998	Dactylographie	0	90	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:46:19.349	897	100
999	Dactylographie	2	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:46:23.912	918	0
1000	Dactylographie	4	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:46:44.773	897	0
1001	Dactylographie	4	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:47:09.893	897	0
1002	Dactylographie	2	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:47:45.432	931	100
1003	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:47:59.043	891	100
1004	Dactylographie	2	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:48:05.228	931	0
1005	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:48:24.011	891	0
1006	Dactylographie	2	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:48:25.348	914	100
1007	Dactylographie	0	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:48:41.699	914	0
1008	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:49:15.553	916	100
1009	Dactylographie	0	92	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:49:16.607	914	100
1010	Dactylographie	2	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:49:36.165	914	0
1011	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:49:44.46	891	0
1012	Dactylographie	2	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:50:08.016	918	100
1013	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:50:20.477	916	0
1014	Dactylographie	4	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:50:53.649	897	100
1015	Dactylographie	2	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:51:12.683	918	0
1016	Dactylographie	4	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:51:17.22	897	0
1017	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:51:53.06	891	0
1018	Dactylographie	2	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:52:04.941	931	100
1019	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:52:08.883	891	0
1020	Dactylographie	2	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:52:23.25	931	0
1021	Dactylographie	2	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:52:43.312	914	100
1022	Dactylographie	2	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:53:31.502	914	0
1023	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:53:37.278	916	100
1024	Dactylographie	6	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 11:53:42.821	880	100
1025	Dactylographie	1	0	node01p3d83m73mt5blk65gupwe10915	2020-02-26 11:53:55.224	4	0
1026	Dactylographie	4	15	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:54:01.341	897	100
1027	Dactylographie	5	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:54:47.02	885	100
1028	Dactylographie	4	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:55:00.095	897	0
1029	Dactylographie	2	61	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:55:04.683	914	100
1030	Dactylographie	3	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:55:32.341	914	0
1031	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:55:35.437	891	100
1032	Dactylographie	4	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:56:04.817	897	0
1033	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:56:15.622	891	0
1034	Dactylographie	6	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:56:28.787	885	0
1035	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:56:29.924	916	0
1036	Dactylographie	4	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:56:43.852	885	0
1037	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 11:57:25.928	916	0
1039	Dactylographie	2	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:57:39.739	885	0
1040	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 11:57:51.869	891	0
1041	Dactylographie	4	61	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:58:03.964	897	100
1043	Dactylographie	2	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:58:33.571	931	100
1048	Dactylographie	5	0	node06mmyrl0gnqonwkdc1eh3olfr28	2020-02-26 11:59:11.621	897	0
1050	Dactylographie	3	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:59:28.186	918	0
1052	Dactylographie	3	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 11:59:40.85	914	100
1056	Dactylographie	3	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 12:00:13.573	914	0
1061	Dactylographie	0	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 12:00:45.867	885	0
1064	Dactylographie	3	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 12:00:57.637	914	0
1066	Dactylographie	1	0	node0104xm7dk65a9i1xfrb2yytevgp26	2020-02-26 12:01:03.9	1051	0
1068	Dactylographie	0	0	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:01:07.236	1057	0
1070	Dactylographie	5	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 12:01:12.222	891	0
1072	Dactylographie	5	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 12:01:34.885	891	0
1073	Dactylographie	1	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:01:36.599	1063	0
1076	Dactylographie	5	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 12:01:50.67	880	0
1078	Dactylographie	0	58	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:01:53.863	1057	100
1081	Dactylographie	1	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 12:02:13.078	885	0
1083	Dactylographie	0	0	node0bxe3uhelrq5f18elkqu8z375s14	2020-02-26 12:02:19.365	1058	0
1088	Dactylographie	1	82	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:02:54.162	1057	100
1090	Dactylographie	2	0	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:03:10.987	1057	0
1092	Dactylographie	1	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:03:18.266	1063	0
1093	Dactylographie	0	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 12:03:26.691	1091	0
1099	Dactylographie	2	78	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:04:30.394	1057	100
1103	Dactylographie	0	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:05:01.939	1063	0
1104	Dactylographie	3	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 12:05:17.424	914	100
1106	Dactylographie	0	100	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:05:26.543	1063	100
1110	Dactylographie	1	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:05:59.296	1063	0
1119	Dactylographie	0	0	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:06:56.304	1057	0
1124	Dactylographie	0	99	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:07:20.479	1057	100
1127	Dactylographie	0	0	node012yhqmdrzqpdy84j6vdgdil8j34	2020-02-26 12:07:32.03	1117	0
1129	Dactylographie	3	0	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:07:37.497	1057	0
1131	Dactylographie	3	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 12:07:44.973	918	100
1134	Dactylographie	0	0	node088pdijh6iqo01kdpt8hlttgqy12	2020-02-26 12:07:49.224	1113	0
1135	Dactylographie	3	0	node0104xm7dk65a9i1xfrb2yytevgp26	2020-02-26 12:07:57.774	1123	0
1138	Dactylographie	0	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 12:08:22.267	1132	0
1142	Dactylographie	0	81	node088pdijh6iqo01kdpt8hlttgqy12	2020-02-26 12:08:34.129	1113	100
1143	Dactylographie	1	67	node0b7lfmq2y5x511d2ijw4qi9puc13	2020-02-26 12:08:39.159	1100	100
1146	Dactylographie	3	0	node0b7lfmq2y5x511d2ijw4qi9puc13	2020-02-26 12:08:52.872	1100	0
1044	Dactylographie	2	0	node01j179c6tsfek71edf20kkke7x618	2020-02-26 11:58:52.767	931	0
1047	Dactylographie	2	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 11:59:09.659	918	100
1049	Dactylographie	5	0	node012yhqmdrzqpdy84j6vdgdil8j34	2020-02-26 11:59:19.048	1045	0
1053	Dactylographie	2	0	node012yhqmdrzqpdy84j6vdgdil8j34	2020-02-26 11:59:48.859	1045	0
1054	Word	0	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 11:59:55.704	885	0
1055	Dactylographie	0	0	node0104xm7dk65a9i1xfrb2yytevgp26	2020-02-26 12:00:12.689	1051	0
1060	Dactylographie	0	0	node0bxe3uhelrq5f18elkqu8z375s14	2020-02-26 12:00:41.525	1058	0
1062	Dactylographie	0	89	node0104xm7dk65a9i1xfrb2yytevgp26	2020-02-26 12:00:49.674	1051	100
1065	Dactylographie	5	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 12:00:57.936	891	0
1067	Dactylographie	2	81	node012yhqmdrzqpdy84j6vdgdil8j34	2020-02-26 12:01:05.023	1045	100
1069	Dactylographie	2	0	node0xzf6ltyna4l31uvelxzmxf3w017	2020-02-26 12:01:10.489	916	100
1071	Dactylographie	0	97	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 12:01:14.356	885	100
1074	Dactylographie	1	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:01:36.628	1063	0
1075	Dactylographie	1	0	node012yhqmdrzqpdy84j6vdgdil8j34	2020-02-26 12:01:45.229	1045	0
1077	Dactylographie	1	0	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 12:01:52.108	885	0
1079	Dactylographie	0	42	node0bxe3uhelrq5f18elkqu8z375s14	2020-02-26 12:01:55.585	1058	100
1082	Dactylographie	1	0	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:02:18.816	1057	0
1084	Dactylographie	1	84	node012yhqmdrzqpdy84j6vdgdil8j34	2020-02-26 12:02:20.407	1045	100
1086	Dactylographie	1	96	node0ztco26qkm4ow6b3i5o6av8g116	2020-02-26 12:02:37.08	885	100
1087	Dactylographie	0	0	node012yhqmdrzqpdy84j6vdgdil8j34	2020-02-26 12:02:50.445	1045	0
1089	Dactylographie	1	25	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:02:59.178	1063	100
1094	Dactylographie	0	55	node0bxe3uhelrq5f18elkqu8z375s14	2020-02-26 12:03:26.985	1058	100
1095	Dactylographie	1	94	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:03:44.672	1063	100
1096	Dactylographie	0	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:04:06.322	1063	0
1098	Dactylographie	0	0	node0gx6vl9qpruwp1h4pe49h0vki122	2020-02-26 12:04:26.581	1091	0
1101	Dactylographie	0	78	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:04:48.545	1063	100
1102	Dactylographie	2	0	node0b7lfmq2y5x511d2ijw4qi9puc13	2020-02-26 12:04:55.606	1100	0
1108	Dactylographie	4	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 12:05:36.89	914	0
1109	Dactylographie	4	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 12:05:44.829	891	0
1111	Dactylographie	1	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:06:26.301	1063	0
1112	Dactylographie	2	54	node0b7lfmq2y5x511d2ijw4qi9puc13	2020-02-26 12:06:31.346	1100	100
1114	Dactylographie	0	0	node098zg0sm5dms59prklafwrhr810	2020-02-26 12:06:37.804	1057	0
1116	Dactylographie	5	0	node088pdijh6iqo01kdpt8hlttgqy12	2020-02-26 12:06:48.374	1113	0
1118	Dactylographie	0	0	node0b7lfmq2y5x511d2ijw4qi9puc13	2020-02-26 12:06:54.329	1100	0
1120	Dactylographie	1	90	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:06:56.823	1063	100
1121	Dactylographie	2	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:07:09.856	1063	0
1126	Dactylographie	6	0	node01ikvpffimolqb1tdvg6l5hb1xr29	2020-02-26 12:07:25.476	914	0
1128	Dactylographie	0	79	node0b7lfmq2y5x511d2ijw4qi9puc13	2020-02-26 12:07:37.2	1100	100
1130	Dactylographie	6	0	node01dwyhv9ukuiv21h1alyy88y94i35	2020-02-26 12:07:41.924	1125	0
1133	Dactylographie	1	0	node0b7lfmq2y5x511d2ijw4qi9puc13	2020-02-26 12:07:48.849	1100	0
1136	Dactylographie	5	0	node0imwydboq2k6s10i9n7sw0709a25	2020-02-26 12:08:06.291	918	0
1137	Dactylographie	2	90	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:08:19.698	1063	100
1141	Dactylographie	3	0	node04i4n4ojyk05v1vf4j36lirbfk27	2020-02-26 12:08:29.207	1063	0
1144	Dactylographie	1	0	node088pdijh6iqo01kdpt8hlttgqy12	2020-02-26 12:08:43.102	1113	0
1147	Dactylographie	0	0	node0lcw0x8wuhjld19yajjw1ppbhp11	2020-02-26 12:09:24.661	1139	0
1148	Dactylographie	1	76	node088pdijh6iqo01kdpt8hlttgqy12	2020-02-26 12:09:27.943	1113	100
1149	Dactylographie	2	0	node088pdijh6iqo01kdpt8hlttgqy12	2020-02-26 12:09:36.177	1113	0
1150	Dactylographie	3	0	node0104xm7dk65a9i1xfrb2yytevgp26	2020-02-26 12:10:01.642	1123	0
1153	Dactylographie	0	80	node0lcw0x8wuhjld19yajjw1ppbhp11	2020-02-26 12:10:11.529	1139	100
1154	Dactylographie	0	0	node01dwyhv9ukuiv21h1alyy88y94i35	2020-02-26 12:10:14.545	1125	0
1156	Dactylographie	1	0	node0lcw0x8wuhjld19yajjw1ppbhp11	2020-02-26 12:10:38.481	1139	0
1157	Dactylographie	3	0	node011p22p0vg7w492drjqdkbbgh421	2020-02-26 12:11:24.99	1155	0
1158	Dactylographie	1	67	node0lcw0x8wuhjld19yajjw1ppbhp11	2020-02-26 12:11:31.633	1139	100
1159	Dactylographie	0	0	node0x9467kuhprvr122d6u5z9gbrz33	2020-02-26 12:11:33.196	1115	0
1160	Dactylographie	2	0	node0lcw0x8wuhjld19yajjw1ppbhp11	2020-02-26 12:11:41.91	1139	0
1163	Dactylographie	0	65	node0x9467kuhprvr122d6u5z9gbrz33	2020-02-26 12:12:34.419	1115	100
1166	Word	1	0	node01iuumteqaepctgdg50rzhsi7o0	2020-03-03 12:06:35.457	4	0
1167	Fake News	0	0	node01iuumteqaepctgdg50rzhsi7o0	2020-03-03 12:09:31.962	4	0
1168	Fake News	0	100	node01iuumteqaepctgdg50rzhsi7o0	2020-03-03 12:10:10.134	4	100
1169	Fake News	0	0	node01ehxi0c6597e2cw4a54elwv3p0	2020-03-04 07:58:19.559	4	0
1170	Fake News	0	50	node01ehxi0c6597e2cw4a54elwv3p0	2020-03-04 07:58:24.977	4	100
1171	Word	1	0	node01977ljz3it7lxz2o3sd6s9wv81	2020-03-04 08:00:24.604	1165	0
1172	Word	1	0	node017sixk9zftcm4zdgux1t64d1h6	2020-03-04 08:27:06.368	1165	0
1173	Word	1	0	node0124x8n6ufs28r1li6mrdnb5dqw14	2020-03-04 08:27:20.842	1165	0
1174	Word	1	0	node01ol5ia27lgij3qkx06ozuotkf20	2020-03-04 08:27:27.258	1165	0
1175	Word	1	0	node01eqyofv885bpx1x56g6e22b0lm13	2020-03-04 08:27:37.27	1165	0
1176	Word	1	0	node01ouiqnqzl3yyer15dyeh4wldj18	2020-03-04 08:27:44.734	1165	0
1177	Word	1	0	node01rs0ajzv54i617n210dtty4ov16	2020-03-04 08:27:49.939	1165	0
1178	Word	1	0	node018a08fynny4dtbhio0sucmew310	2020-03-04 08:28:08.193	1165	0
1179	Word	1	0	node09vwpmygzp856dindtztgsil319	2020-03-04 08:28:21.024	1165	0
1180	Word	1	0	node0lj4qk166sxn6nffi8ds0jho423	2020-03-04 08:28:23.789	1165	0
1181	Word	1	0	node06a1mv4ck80wn1wgnyml0053ui4	2020-03-04 08:28:30.039	1165	0
1182	Word	1	0	node0ow7pb8lgvdsj1ihh4l8df2i6o21	2020-03-04 08:29:05.321	1165	0
1183	Word	1	0	node01gcq7101i158drp26kfwqyej611	2020-03-04 08:29:08.146	223	0
1184	Word	1	0	node0x1ljp3l1ydod1m9qg40oyif97	2020-03-04 08:29:38.748	1165	0
1185	Word	1	0	node01gcq7101i158drp26kfwqyej611	2020-03-04 08:29:57.92	223	0
1187	Word	1	0	node01lxn41qlbktbv1ns8lup8vikha26	2020-03-04 08:30:20.086	1165	0
1188	Word	1	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 08:30:38.062	1165	0
1189	Word	1	0	node0rssppoinwa41f0y0oni4gqbm2	2020-03-04 08:30:38.707	1186	0
1190	Word	1	0	node0p0xu47a3fj8y83ckstky2a4c29	2020-03-04 08:30:40.17	1165	0
1191	Word	1	0	node016fee7fpwjawgq37cvktl1p4928	2020-03-04 08:30:43.154	1165	0
1192	Word	1	0	node01ehxi0c6597e2cw4a54elwv3p0	2020-03-04 08:30:52.337	167	0
1193	Word	1	0	node01679arcv07kpigwz96d9vkwmf12	2020-03-04 08:31:10.418	1165	0
1194	Word	1	0	node0v0pxqz0zhzblokoacij16xqw15	2020-03-04 08:32:40.869	171	0
1195	Word	1	0	node01dr5no4fp1el1wf7r5qkpvop48	2020-03-04 08:32:51.904	1165	0
1196	Word	1	0	node02zih3wv0n678cnxwdqvkqmty31	2020-03-04 08:32:58.62	1165	0
1197	Word	1	0	node01d23vdtkr8bkf1egbc494sozvl32	2020-03-04 08:37:59.724	211	0
1198	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 11:23:42.785	1042	0
1199	Dactylographie	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:24:37.983	1091	0
1200	Dactylographie	0	100	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:25:04.907	1091	100
1201	Dactylographie	1	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:25:25.559	1091	0
1202	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:25:37.884	1123	0
1203	Fake News	0	0	node02q8w7nc42ylck4ihcmeaz6dm89	2020-03-04 11:25:39.514	1165	0
1204	Dactylographie	1	62	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:26:17.49	1091	100
1205	Dactylographie	1	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:26:25.51	1091	0
1206	Dactylographie	1	100	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:26:45.209	1091	100
1207	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:26:47.591	1123	0
1208	Dactylographie	2	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:26:57.196	1091	0
1210	Fake News	0	0	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 11:27:28.201	916	0
1211	Fake News	0	0	node0l7grv6iwdzbmwvdbf68sterp81	2020-03-04 11:27:39.748	1209	0
1212	Dactylographie	2	86	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:28:08.861	1091	100
1213	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:28:35.889	1162	0
1214	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 11:28:45.21	1139	0
1216	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 11:29:18.332	1091	0
1217	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:29:28.091	1107	0
1218	Fake News	0	0	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 11:29:41.087	916	0
1219	Fake News	0	0	node018o1rv2dpt17p2i64qinqlqcv79	2020-03-04 11:29:47.955	1122	0
1220	Fake News	0	0	node02q8w7nc42ylck4ihcmeaz6dm89	2020-03-04 11:30:04.045	1165	0
1221	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:30:05.004	1045	0
1222	Dactylographie	5	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:30:14.964	897	0
1223	Fake News	0	0	node012ocrvdzqjkd61dtp9j8hpu4yx61	2020-03-04 11:30:27.931	1046	0
1224	CSFirst	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:30:33.973	1045	0
1227	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:31:23.807	897	0
1228	Dactylographie	0	0	node08ph3khs9wj4d1jlfsia0s8j9a58	2020-03-04 11:31:29.29	1225	0
1229	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 11:31:31.45	1100	0
1230	Fake News	0	50	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:31:36.985	897	100
1231	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:31:38.092	1045	0
1232	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:31:42.396	914	0
1233	Fake News	0	0	node0kjpuy3eqleket9cra9202smc90	2020-03-04 11:31:47.827	1226	0
1234	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:32:00.805	897	0
1235	Dactylographie	0	92	node08ph3khs9wj4d1jlfsia0s8j9a58	2020-03-04 11:32:03.797	1225	100
1236	Dactylographie	1	0	node08ph3khs9wj4d1jlfsia0s8j9a58	2020-03-04 11:32:14.46	1225	0
1237	Dactylographie	1	93	node08ph3khs9wj4d1jlfsia0s8j9a58	2020-03-04 11:32:41.366	1225	100
1238	Fake News	0	30	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:32:59.591	897	100
1239	Dactylographie	2	0	node0wgwa3fvn1ele1fochwnxzi37591	2020-03-04 11:33:01.373	1113	0
1240	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:33:05.793	1164	0
1241	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:33:54.617	897	0
1242	Fake News	0	30	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:34:08.953	897	100
1243	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:34:25.878	1165	0
1244	Fake News	0	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 11:34:33.542	1215	0
1245	Dactylographie	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:34:36.413	1132	0
1246	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:34:42.119	897	0
1247	Fake News	0	0	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 11:34:42.419	916	0
1248	Fake News	0	0	node01gcd1x4i9ies31o0ptk5t8ex6u96	2020-03-04 11:35:01.969	918	0
1249	Fake News	0	50	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 11:35:12.896	1139	100
1250	Fake News	0	60	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 11:35:14.238	1100	100
1251	Fake News	0	0	node0wgwa3fvn1ele1fochwnxzi37591	2020-03-04 11:35:16.524	1113	0
1252	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:35:22.419	1162	0
1253	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:35:25.166	1132	0
1254	Fake News	0	80	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:35:48.633	1123	100
1255	Fake News	0	30	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:36:11.197	1107	100
1256	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 11:36:17.343	1100	0
1257	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:36:37.533	1107	0
1258	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:36:48.66	891	0
1259	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 11:36:53.982	1139	0
1260	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:37:15.527	891	0
1261	Fake News	0	80	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:37:19.411	1132	100
1262	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:37:36.881	1123	0
1263	Fake News	0	60	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:38:09.868	1123	100
1264	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:38:11.335	1165	0
1265	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:38:29.179	1132	0
1266	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:38:31.447	897	0
1267	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:38:34.783	1123	0
1268	Fake News	0	0	node06vas1tvwxm3l1a5biff7jnwmg84	2020-03-04 11:38:38.795	1165	0
1269	Fake News	0	90	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:38:47.253	897	100
1270	Fake News	0	0	node0a0ly7gfq5g6v1iwmq3dgwi68z103	2020-03-04 11:39:15.674	1045	0
1271	Fake News	0	60	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:39:16.769	1123	100
1273	Fake News	0	80	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:39:24.739	1132	100
1274	Fake News	0	0	node01grgaqwubuugwcgwha7hqcxun99	2020-03-04 11:39:43.828	1272	0
1275	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:40:03.645	1132	0
1276	Word	0	0	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:40:22.659	880	0
1277	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:40:31.262	1123	0
1278	Fake News	0	40	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:40:35.7	1132	100
1279	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:41:00.767	1132	0
1280	Fake News	0	0	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:41:08.074	880	0
1281	Fake News	0	40	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:41:11.389	1132	100
1282	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:41:38.515	1107	0
1283	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:41:50.523	897	0
1284	Fake News	0	50	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:41:53.623	1107	100
1285	Fake News	0	50	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:41:59.846	897	100
1286	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:42:06.574	1132	0
1287	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:42:08.232	1107	0
1288	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:42:14.179	897	0
1289	Fake News	0	50	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:42:25.645	897	100
1291	Fake News	0	70	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:42:35.881	1123	100
1292	Fake News	0	0	node0mf9f97susc8tuwujugrq0yis104	2020-03-04 11:42:36.804	1290	0
1293	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:42:45.958	897	0
1294	Fake News	0	50	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:42:55.957	897	100
1295	Fake News	0	30	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:43:08.253	1132	100
1296	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:43:08.948	897	0
1297	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:43:19.3	1165	0
1298	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:43:20.706	1123	0
1299	Fake News	0	20	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:43:22.159	897	100
1300	Fake News	0	40	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:44:47.327	880	100
1301	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:45:24.168	897	0
1302	Fake News	0	60	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:45:36.169	897	100
1303	Fake News	0	0	node0a0ly7gfq5g6v1iwmq3dgwi68z103	2020-03-04 11:45:38.632	1045	0
1304	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:45:48.718	897	0
1305	Fake News	0	70	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:45:55.873	897	100
1306	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:46:09.696	897	0
1307	Fake News	0	30	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:46:16.122	897	100
1308	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:46:31.733	897	0
1309	Fake News	0	50	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:46:42.745	897	100
1310	Fake News	0	70	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:46:47.536	1123	100
1311	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:46:48.64	897	0
1312	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:46:56.076	885	0
1313	Fake News	0	60	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:46:56.202	897	100
1314	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:47:01.497	897	0
1315	Fake News	0	60	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:47:10.404	897	100
1316	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:47:12.883	1123	0
1317	Fake News	0	70	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:47:45.223	885	100
1318	Fake News	0	40	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:47:55.796	891	100
1319	Fake News	0	70	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:47:56.24	914	100
1320	Fake News	0	0	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:47:58.873	880	0
1321	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:48:09.308	891	0
1322	Fake News	0	40	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:48:17.923	891	100
1323	Fake News	0	70	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:48:35.753	880	100
1324	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:48:35.82	891	0
1325	Fake News	0	0	node0198qtsaz9takh1p0gc5ovfv6bm105	2020-03-04 11:48:49.205	1058	0
1326	Fake News	0	60	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:48:52.603	891	100
1327	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:48:58.85	885	0
1328	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:49:08.877	891	0
1329	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:49:12.501	914	0
1330	Fake News	0	70	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:49:21.013	891	100
1331	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:49:23.324	897	0
1332	Fake News	0	40	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:49:23.86	914	100
1333	Fake News	0	0	node0198qtsaz9takh1p0gc5ovfv6bm105	2020-03-04 11:49:29.169	1058	0
1334	Fake News	0	40	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:49:33.246	897	100
1335	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:49:36.533	891	0
1336	Fake News	0	90	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:49:41.345	885	100
1337	Fake News	0	40	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:49:44.958	891	100
1338	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:50:32.735	914	0
1339	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:50:39.974	885	0
1340	Fake News	0	50	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:51:41.693	885	100
1341	Fake News	0	0	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:52:23.411	880	0
1342	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:52:24.466	1107	0
1343	Fake News	0	50	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:52:49.857	880	100
1344	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:52:55.092	897	0
1345	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:53:00.241	885	0
1346	Fake News	0	60	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:53:01.95	914	100
1347	Fake News	0	50	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:53:03.86	897	100
1348	Fake News	0	40	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:53:13.762	1045	100
1349	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:53:23.37	914	0
1350	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:53:31.471	1045	0
1351	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:53:33.508	897	0
1352	Fake News	0	50	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:53:34.082	914	100
1353	Fake News	0	40	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:53:48.544	1045	100
1354	Fake News	0	40	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:53:49.49	1164	100
1355	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:54:00.285	914	0
1356	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:54:03.878	891	0
1357	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:54:05.576	1045	0
1358	Fake News	0	70	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:54:11.16	885	100
1359	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:54:19.514	1164	0
1360	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:54:22.315	885	0
1361	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:54:25.141	891	0
1362	Fake News	0	50	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:54:27.495	885	100
1363	Fake News	0	40	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:54:27.589	1165	100
1364	Fake News	0	40	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:54:38.049	1164	100
1365	Fake News	0	40	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:54:38.349	914	100
1366	Fake News	0	40	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:54:39.691	1045	100
1367	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:54:47.962	885	0
1368	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:54:49.158	1165	0
1369	Fake News	0	50	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:54:54.207	885	100
1370	Fake News	0	50	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:54:55.89	891	100
1371	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:54:59.703	1045	0
1372	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:55:01.61	1164	0
1373	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:55:04.188	914	0
1374	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:55:12.647	891	0
1375	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:55:13.499	885	0
1376	Fake News	0	60	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:55:17.487	1123	100
1377	Fake News	0	70	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:55:21.913	885	100
1378	Fake News	0	30	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:55:28.41	1162	100
1379	Fake News	0	60	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:55:29.443	1045	100
1380	Fake News	0	70	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:55:30.205	891	100
1381	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:55:34.688	885	0
1382	Fake News	0	50	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:55:39.617	1164	100
1383	CSFirst	1	0	node01subnwjgkkpkr1dvj3e444qqwq80	2020-03-04 11:55:42.097	880	0
1384	Fake News	0	60	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:55:43.134	897	100
1385	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:55:47.185	1123	0
1386	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:55:50.331	1164	0
1387	Fake News	0	0	node08m8onjvasi5s1vhb2pir5ow3f106	2020-03-04 11:55:52.951	1085	0
1388	CSFirst	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:55:55.305	891	0
1389	Fake News	0	30	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 11:55:56.416	885	100
1390	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:55:56.767	1162	0
1391	Fake News	0	50	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:56:04.598	1165	100
1392	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:56:16.136	1045	0
1393	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 11:56:17.131	891	0
1394	Fake News	0	50	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:56:19.733	1123	100
1395	Fake News	0	50	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:56:28.673	1164	100
1396	Fake News	0	60	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:56:31.289	1162	100
1397	Fake News	0	40	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:56:32.842	914	100
1398	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:56:35.148	1165	0
1399	Fake News	0	30	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:56:36.081	1045	100
1400	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:56:50.504	1045	0
1401	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:56:53.617	914	0
1402	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:56:55.603	1123	0
1403	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:57:02.57	1164	0
1404	Fake News	0	60	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:57:08.789	1045	100
1405	Fake News	0	60	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:57:09.198	914	100
1406	Fake News	0	40	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:57:10.705	1164	100
1407	Fake News	0	50	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:57:18.265	1165	100
1408	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:57:24.168	1162	0
1409	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:57:25.405	1165	0
1410	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:57:30.035	914	0
1411	Word	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:57:31.67	1045	0
1412	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:57:32.906	1164	0
1413	Fake News	0	50	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:57:37.678	914	100
1414	Fake News	0	40	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:57:41.504	1165	100
1415	Fake News	0	70	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:57:43.521	1123	100
1416	Dactylographie	0	0	node0wgwa3fvn1ele1fochwnxzi37591	2020-03-04 11:57:45.425	1113	0
1417	Fake News	0	50	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:57:47.945	1164	100
1418	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:57:49.104	1165	0
1419	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:57:55.99	914	0
1420	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:58:12.689	1164	0
1421	Fake News	0	50	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:58:13.188	914	100
1422	Fake News	0	60	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:58:17.637	1165	100
1423	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:58:17.666	1045	0
1424	Fake News	0	50	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:58:19.916	1162	100
1425	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:58:20.414	1123	0
1427	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:58:43.333	897	0
1428	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:58:43.394	1162	0
1429	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:58:44.09	1165	0
1430	Fake News	0	50	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:58:45.459	1045	100
1431	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:59:02.231	914	0
1432	Fake News	0	50	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:59:03.575	1165	100
1433	Fake News	0	60	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:59:05.832	1164	100
1434	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:59:05.886	1045	0
1435	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:59:10.924	1123	0
1436	Fake News	0	40	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:59:11.67	914	100
1437	Fake News	0	40	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 11:59:15.623	897	100
1438	Fake News	0	40	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 11:59:15.838	1042	100
1439	Fake News	0	60	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 11:59:18.191	1139	100
1440	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:59:18.279	1165	0
1441	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:59:18.41	1164	0
1442	Fake News	0	70	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 11:59:19.63	1107	100
1443	Fake News	0	60	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 11:59:19.746	1100	100
1444	Fake News	0	30	node01miatvl4f160mtz6zlszupva273	2020-03-04 11:59:21.303	1045	100
1445	Fake News	0	40	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:59:25.04	1162	100
1446	Fake News	0	70	node01grgaqwubuugwcgwha7hqcxun99	2020-03-04 11:59:25.703	1272	100
1447	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:59:29.194	914	0
1448	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 11:59:34.275	1165	0
1449	Fake News	0	60	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:59:34.463	1164	100
1450	Fake News	0	20	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 11:59:38.392	1123	100
1451	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 11:59:40.203	1162	0
1452	Fake News	0	60	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 11:59:45.2	914	100
1453	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 11:59:51.722	1164	0
1454	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 11:59:53.86	1100	0
1455	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 11:59:59.563	1139	0
1456	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:00:00.749	914	0
1457	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:00:04.107	1123	0
1458	Fake News	0	40	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:00:07.384	1164	100
1459	Fake News	0	40	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:00:08.554	1162	100
1460	Fake News	0	30	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:00:14.433	914	100
1461	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 12:00:15.461	1107	0
1462	Fake News	0	50	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:00:16.632	1139	100
1463	Fake News	0	0	node0kjpuy3eqleket9cra9202smc90	2020-03-04 12:00:17.655	1226	0
1464	Fake News	0	50	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:00:18.178	1100	100
1465	Fake News	0	50	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 12:00:20.711	1107	100
1466	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:00:22.342	1162	0
1467	Fake News	0	30	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:00:30.778	1165	100
1468	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:00:31.91	1100	0
1469	Fake News	0	50	node08m8onjvasi5s1vhb2pir5ow3f106	2020-03-04 12:00:32.415	1085	100
1470	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:00:35.095	1139	0
1471	Fake News	0	50	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:00:37.043	1162	100
1472	Fake News	0	50	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:00:38.163	1100	100
1473	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 12:00:39.785	1107	0
1474	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:00:42.814	1165	0
1475	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:00:45.776	914	0
1476	Fake News	0	80	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:00:48.112	1139	100
1477	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:00:52.753	1042	0
1478	Fake News	0	40	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:00:55.926	1165	100
1479	Fake News	0	60	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 12:00:56.687	1107	100
1480	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:00:57.251	1162	0
1481	Fake News	0	80	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:00:58.748	1123	100
1482	Fake News	0	40	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:01:01.639	914	100
1483	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:01:08.783	1100	0
1484	Dactylographie	3	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 12:01:17.287	885	0
1485	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:01:19.768	1165	0
1486	Fake News	0	70	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:01:23.346	1100	100
1487	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 12:01:25.483	1107	0
1488	Dactylographie	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 12:01:26.63	897	0
1489	Fake News	0	50	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:01:26.702	1162	100
1490	Fake News	0	70	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 12:01:34.113	1107	100
1491	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:01:34.444	1123	0
1492	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:01:39.101	1100	0
1493	Fake News	0	30	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:01:42.103	1165	100
1494	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:01:46.903	1162	0
1495	Fake News	0	70	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:01:51.62	1100	100
1496	CSFirst	3	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:01:58.548	1165	0
1497	Fake News	0	0	node01nl6q3aa49rd51dwndpk7kffz293	2020-03-04 12:01:58.747	1107	0
1498	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:02:02.628	1100	0
1499	Dactylographie	0	88	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 12:02:04.546	897	100
1500	Fake News	0	0	node08m8onjvasi5s1vhb2pir5ow3f106	2020-03-04 12:02:14.603	1085	0
1501	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:02:15.107	1042	0
1502	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:02:17.901	1165	0
1503	Fake News	0	40	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:02:19.226	1162	100
1504	Fake News	0	70	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:02:19.347	1100	100
1505	Fake News	0	50	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:02:19.747	1123	100
1506	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:02:31.806	1100	0
1507	Fake News	0	60	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:02:34.731	1165	100
1508	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:02:49.972	1162	0
1509	Fake News	0	60	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:02:51.876	1100	100
1510	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 12:02:55.964	1045	0
1511	Fake News	0	50	node01miatvl4f160mtz6zlszupva273	2020-03-04 12:02:59.287	1045	100
1512	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:02:59.339	1123	0
1513	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:03:03.139	1100	0
1514	Dactylographie	3	0	node01gcd1x4i9ies31o0ptk5t8ex6u96	2020-03-04 12:03:06.575	918	0
1515	Dactylographie	3	0	node01gcd1x4i9ies31o0ptk5t8ex6u96	2020-03-04 12:03:06.59	918	0
1516	Fake News	0	30	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:03:17.485	1162	100
1517	Fake News	0	80	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:03:18.235	1100	100
1518	Dactylographie	0	0	node0wgwa3fvn1ele1fochwnxzi37591	2020-03-04 12:03:21.232	1113	100
1519	Fake News	0	70	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:03:22.19	1042	100
1520	Dactylographie	4	0	node01gcd1x4i9ies31o0ptk5t8ex6u96	2020-03-04 12:03:22.258	918	0
1521	CSFirst	1	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:03:25.698	914	0
1522	Fake News	0	80	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:03:29.659	1123	100
1523	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:03:33.151	1162	0
1524	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 12:03:33.464	1045	0
1525	Fake News	0	50	node01miatvl4f160mtz6zlszupva273	2020-03-04 12:03:37.767	1045	100
1526	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:03:39.278	914	0
1527	Fake News	0	30	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:03:56.283	1162	100
1528	Fake News	0	30	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:03:59.733	914	100
1529	Fake News	0	60	node0198qtsaz9takh1p0gc5ovfv6bm105	2020-03-04 12:04:03.027	1058	100
1530	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:04:11.115	1162	0
1531	Fake News	0	50	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 12:04:15.3	891	100
1532	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:04:18.168	1164	0
1533	Fake News	0	50	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:04:21.648	1162	100
1534	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:04:23.901	1165	0
1535	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 12:04:25.14	891	0
1536	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:04:30.939	914	0
1537	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:04:32.824	1042	0
1538	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:04:35.887	1162	0
1539	Fake News	0	60	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 12:04:38.436	891	100
1540	Fake News	0	60	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:04:42.955	914	100
1541	Fake News	0	0	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 12:04:47.371	891	0
1542	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:04:51.418	1165	0
1543	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:04:54.246	1123	0
1544	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:04:56.551	1100	0
1545	Fake News	0	70	node01w55qvux0vujlgmlbvb5p854102	2020-03-04 12:04:57.653	891	100
1546	Fake News	0	50	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:05:00.894	1165	100
1547	Fake News	0	60	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:05:04.293	1100	100
1548	Fake News	0	20	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:05:08.469	1162	100
1549	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:05:10.344	1139	0
1550	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:05:17.509	1165	0
1551	Fake News	0	40	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 12:05:17.795	916	100
1552	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:05:20.263	1100	0
1553	Fake News	0	20	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:05:23.501	1139	100
1554	Fake News	0	60	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:05:24.515	1042	100
1555	Fake News	0	30	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:05:28.637	1165	100
1556	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:05:32.077	914	0
1557	Fake News	0	40	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:05:32.845	1100	100
1558	Fake News	0	70	node0mf9f97susc8tuwujugrq0yis104	2020-03-04 12:05:35.803	1290	100
1559	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:05:38.45	1139	0
1560	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:05:43.683	1042	0
1561	Fake News	0	0	node0xzoqzzfbbhekq9948fihw5xl66	2020-03-04 12:05:44.986	885	0
1562	Fake News	0	60	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:05:46.516	1123	100
1563	Fake News	0	0	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 12:05:47.586	916	0
1564	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:05:47.943	1100	0
1565	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:05:49.524	1162	0
1566	Fake News	0	0	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:05:49.836	1165	0
1567	Fake News	0	60	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:05:51.656	1139	100
1568	Fake News	0	50	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:05:57.523	1215	100
1569	Fake News	0	60	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:06:04.148	1164	100
1570	Fake News	0	50	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:06:04.989	1100	100
1571	Fake News	0	70	node028jufeepjold1iqsjto2610o1101	2020-03-04 12:06:06.809	1165	100
1572	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:06:10.059	1139	0
1573	Fake News	0	0	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:06:14.303	1058	0
1574	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:06:18.207	1100	0
1575	Fake News	0	50	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 12:06:19.502	916	100
1576	Fake News	0	50	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:06:21.976	1162	100
1577	Dactylographie	5	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:06:23.143	1123	0
1578	Fake News	0	70	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:06:23.44	1139	100
1579	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:06:33.012	1139	0
1580	Fake News	0	40	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:06:34.11	1042	100
1581	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:06:40.809	1100	0
1582	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:06:42.497	1162	0
1583	Fake News	0	80	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:06:45.665	1139	100
1584	CSFirst	0	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:06:49.877	1215	0
1585	Fake News	0	50	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:06:51.631	914	100
1586	CSFirst	0	0	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 12:06:53.165	916	0
1587	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:06:55.663	1042	0
1588	Fake News	0	60	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:06:57.274	1162	100
1589	Dactylographie	5	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:07:04.355	914	0
1590	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:07:06.216	1123	0
1591	Fake News	0	50	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:07:11.451	1058	100
1592	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:07:16.288	1162	0
1593	CSFirst	1	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:07:18.841	1215	0
1594	Dactylographie	3	0	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 12:07:23.131	916	0
1595	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:07:30.798	1164	0
1596	Fake News	0	30	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:07:31.307	1162	100
1597	Fake News	0	40	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:07:31.895	1100	100
1598	Fake News	0	60	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:07:35.069	1123	100
1599	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:07:35.311	1139	0
1600	Fake News	0	50	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:07:36.721	1042	100
1601	Fake News	0	0	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:07:38.654	1058	0
1602	Fake News	0	60	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:07:43.075	1164	100
1603	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:07:45.378	1162	0
1604	Fake News	0	0	node016i1922uqwo1mxk7uyttl6bcj78	2020-03-04 12:07:50.836	914	0
1605	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:07:51.057	1100	0
1606	Fake News	0	40	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:07:55.502	1139	100
1607	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:07:57.441	1042	0
1608	Fake News	0	40	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:08:00.102	1162	100
1609	Fake News	0	50	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:08:03.326	1100	100
1610	Dactylographie	0	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:08:03.948	1215	0
1611	Fake News	0	50	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:08:06.947	1058	100
1612	Fake News	0	50	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:08:07.397	1042	100
1613	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:08:10.699	1139	0
1614	Fake News	0	30	node08m8onjvasi5s1vhb2pir5ow3f106	2020-03-04 12:08:11.129	1085	100
1615	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:08:12.316	1162	0
1616	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:08:13.069	1123	0
1617	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:08:16.897	1100	0
1618	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:08:17.444	1164	0
1619	Fake News	0	0	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:08:22.087	1058	0
1620	Dactylographie	0	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:08:22.556	1215	0
1621	Fake News	0	60	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:08:28.025	1162	100
1622	Fake News	0	60	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:08:28.982	1139	100
1623	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:08:30.134	1042	0
1624	Fake News	0	50	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:08:37.967	1123	100
1625	Fake News	0	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:08:38.031	1100	0
1626	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:08:41.045	1139	0
1627	Fake News	0	40	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:08:48.716	1042	100
1628	Fake News	0	80	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:08:49.37	1058	100
1629	Dactylographie	0	97	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:08:52.406	1215	100
1630	Dactylographie	2	0	node0mf9f97susc8tuwujugrq0yis104	2020-03-04 12:08:55.35	1290	0
1631	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:08:57.715	1123	0
1632	Dactylographie	2	0	node01grgaqwubuugwcgwha7hqcxun99	2020-03-04 12:08:59.769	1272	0
1633	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:09:02.112	1162	0
1634	Dactylographie	1	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:09:05.976	1215	0
1635	Fake News	0	0	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:09:13.379	1058	0
1636	Fake News	0	60	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:09:15.241	1139	100
1637	Dactylographie	4	0	node0mf9f97susc8tuwujugrq0yis104	2020-03-04 12:09:17.825	1290	0
1638	Fake News	0	0	node01miatvl4f160mtz6zlszupva273	2020-03-04 12:09:21.107	1045	0
1639	Fake News	0	0	node08m8onjvasi5s1vhb2pir5ow3f106	2020-03-04 12:09:21.19	1085	0
1640	Fake News	0	60	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:09:22.849	1123	100
1641	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:09:31.608	1042	0
1642	Dactylographie	2	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:09:36.049	1139	0
1643	Fake News	0	50	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:09:37.44	1164	100
1644	Dactylographie	1	87	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:09:39.255	1215	100
1645	Fake News	0	40	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:09:41.312	1058	100
1646	Fake News	0	60	node08m8onjvasi5s1vhb2pir5ow3f106	2020-03-04 12:09:43.123	1085	100
1647	Fake News	0	30	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:09:43.341	1162	100
1648	Fake News	0	30	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:09:51.931	1042	100
1649	Dactylographie	2	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:09:53.723	1215	0
1650	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:09:55.391	1162	0
1651	Fake News	0	0	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 12:10:00.803	897	0
1652	Fake News	0	30	node0dkgcgyxokdy1e97cp57n5c1z63	2020-03-04 12:10:08.863	897	100
1653	Fake News	0	60	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:10:13.858	1091	100
1654	Fake News	0	0	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:10:14.703	1058	0
1655	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:10:15.946	1042	0
1656	Dactylographie	2	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:10:16.262	1215	0
1657	Fake News	0	50	node01s9c3bcwiw2sr1cw8uivbgpzwu107	2020-03-04 12:10:22.036	1058	100
1658	Fake News	0	0	node010v7xh3a5wmgz13ljs8brqatsq83	2020-03-04 12:10:30.113	1139	0
1659	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:10:34.62	1042	0
1660	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:10:44.949	1164	0
1661	Fake News	0	50	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:10:54.232	1162	100
1662	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:11:02.521	1091	0
1663	Dactylographie	0	0	node0mf9f97susc8tuwujugrq0yis104	2020-03-04 12:11:03.295	1290	0
1664	Fake News	0	60	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:11:14.381	1042	100
1665	Fake News	0	0	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:11:19.916	1123	0
1666	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:11:26.702	1162	0
1667	Fake News	0	70	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:11:32.697	1091	100
1668	Dactylographie	1	0	node01gcd1x4i9ies31o0ptk5t8ex6u96	2020-03-04 12:11:38.375	918	0
1669	Dactylographie	2	77	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:11:39.536	1215	100
1670	Fake News	0	50	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:11:40.779	1162	100
1671	Dactylographie	2	0	node01grgaqwubuugwcgwha7hqcxun99	2020-03-04 12:11:42.892	1272	100
1672	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:11:44.841	1091	0
1673	Dactylographie	3	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:11:50.945	1215	0
1674	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:11:55.351	1162	0
1675	Fake News	0	0	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:12:04.999	1042	0
1676	Fake News	0	40	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:12:09.088	1091	100
1677	Dactylographie	0	39	node0mf9f97susc8tuwujugrq0yis104	2020-03-04 12:12:11.092	1290	100
1678	Fake News	0	30	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:12:12.308	1162	100
1679	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:12:24.785	1091	0
1680	Fake News	0	0	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 12:12:26.366	916	0
1681	Fake News	0	0	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:12:32.64	1162	0
1682	Fake News	0	0	node0l7grv6iwdzbmwvdbf68sterp81	2020-03-04 12:12:33.071	1209	0
1683	Dactylographie	3	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:12:36.377	1215	0
1684	Fake News	0	40	node01tt7094v1sg5k12mk9jz5kbqya86	2020-03-04 12:12:36.66	1123	100
1685	Dactylographie	1	0	node0mf9f97susc8tuwujugrq0yis104	2020-03-04 12:12:45.32	1290	0
1686	Fake News	0	60	node040wj7wxrk9m91bywp9nks8h4e27	2020-03-04 12:12:49.964	1042	100
1687	Fake News	0	80	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:13:03.682	1091	100
1688	Dactylographie	3	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:13:14.99	1215	0
1689	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:13:27.626	1091	0
1690	Dactylographie	3	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:13:31.624	1215	0
1691	Fake News	0	50	node0l7grv6iwdzbmwvdbf68sterp81	2020-03-04 12:13:31.938	1209	100
1692	Fake News	0	70	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:13:49.595	1091	100
1693	Fake News	0	40	node0xtvmlq19zhqz1ths3jha1z3bp82	2020-03-04 12:13:51.315	1162	100
1694	Fake News	0	50	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:14:04.566	1164	100
1695	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:14:15.069	1091	0
1696	Dactylographie	0	0	node0l7grv6iwdzbmwvdbf68sterp81	2020-03-04 12:14:44.555	1209	0
1697	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:14:53.545	1164	0
1698	Fake News	0	60	node01dgtixl5etmoo1bkk9g0hihimd67	2020-03-04 12:15:05.195	916	100
1699	Fake News	0	60	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:15:11.249	1100	100
1700	Dactylographie	1	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:15:27.547	1100	0
1701	Dactylographie	3	26	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:15:41.779	1215	100
1702	CSFirst	1	0	node01er0wsqq66iwdwuwoscs4y24n97	2020-03-04 12:15:45.275	1100	0
1703	Fake News	0	40	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:15:51.118	1164	100
1704	Dactylographie	4	0	node0pkjesnvtxy6p16ia6x1mzwm2x76	2020-03-04 12:15:53.353	1215	0
1705	Fake News	0	70	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:15:54.066	1091	100
1706	Fake News	0	0	node01g3x8hpv0bff0a3jjtworvipp72	2020-03-04 12:16:09.054	1164	0
1707	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:16:13.388	1091	0
1708	Fake News	0	70	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:17:15.679	1091	100
1709	Fake News	0	0	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:17:26.411	1091	0
1710	Fake News	0	50	node016aoekercg2wub3vutiy5lgsg65	2020-03-04 12:18:08.323	1091	100
1711	CSFirst	2	0	node06dhbqzicgx1a11qll75kcu13u20	2020-03-05 08:36:08.034	30	0
1712	Dactylographie	0	0	node0uo23ulko3ccx1mnmtpbqfiunc11	2020-03-05 08:36:13.183	37	0
1715	CSFirst	2	0	node0v3hzflts08431avn99bp9sgxf5	2020-03-05 08:36:57.966	1713	0
1716	CSFirst	2	0	node030exjznuqsul1kdtm3w2metjz21	2020-03-05 08:37:06.479	44	0
1717	CSFirst	2	0	node013c49nq8iypjmvq1anlutr1rp13	2020-03-05 08:37:36.038	31	0
1718	CSFirst	2	0	node0uo23ulko3ccx1mnmtpbqfiunc11	2020-03-05 08:37:46.679	37	0
1719	CSFirst	2	0	node01n61ghklqb88iwhof84edhck018	2020-03-05 08:37:47.757	28	0
1720	CSFirst	2	0	node01alswncdv1it81vtdmyt49oi3y25	2020-03-05 08:38:04.969	99	0
1721	CSFirst	2	0	node016g8bd5u8dj171rjv92t47ss8816	2020-03-05 08:39:04.299	39	0
1722	CSFirst	2	0	node0112d5lw8er6z3j1pgfzstuiwy17	2020-03-05 08:39:05.943	27	0
1723	CSFirst	2	0	node0wbbvnk07adk5c5bmci59g8lr22	2020-03-05 08:39:18.992	20	0
1724	CSFirst	2	0	node0v3hzflts08431avn99bp9sgxf5	2020-03-05 08:39:22.724	1713	0
1725	CSFirst	2	0	node01ao693fwx5nhg1ge8gpwaj80nl15	2020-03-05 08:40:18.431	22	0
1727	Dactylographie	1	0	node01vl4qegljaihdgbkc08bt91is28	2020-03-05 08:40:40.075	35	0
1728	CSFirst	2	0	node0v3hzflts08431avn99bp9sgxf5	2020-03-05 08:40:52.213	1713	0
1729	Dactylographie	1	99	node01vl4qegljaihdgbkc08bt91is28	2020-03-05 08:41:01.799	35	100
1731	CSFirst	2	0	node01182nj3qlr3mq17qkrg4e76ibf6	2020-03-05 08:41:08.217	34	0
1732	Dactylographie	0	0	node01vl4qegljaihdgbkc08bt91is28	2020-03-05 08:41:24.2	35	0
1733	CSFirst	2	0	node01lhmpa9vlli3a16o64pptsghil30	2020-03-05 08:41:38.453	26	0
1734	CSFirst	2	0	node0bwyp78y18m7g1k1ioq7e8ftw729	2020-03-05 08:41:42.094	1726	0
1735	CSFirst	2	0	node01sw9pz87sud3l1mxjso4rrojm19	2020-03-05 08:41:45.992	40	0
1736	CSFirst	2	0	node01myt1garjhmjibu6zggt4tpva10	2020-03-05 08:41:51.021	1730	0
1737	CSFirst	2	0	node01vl4qegljaihdgbkc08bt91is28	2020-03-05 08:41:51.345	35	0
1738	CSFirst	2	0	node01lhmpa9vlli3a16o64pptsghil30	2020-03-05 08:42:03.268	26	0
1739	CSFirst	2	0	node0haxdracx5cej1psmmgl0pm86a4	2020-03-05 08:42:10.125	24	0
1740	CSFirst	2	0	node07sy07gxeereuf374fhimdbmu9	2020-03-05 08:42:21.33	36	0
1741	CSFirst	2	0	node01ao693fwx5nhg1ge8gpwaj80nl15	2020-03-05 08:42:33.495	22	0
1743	CSFirst	2	0	node07sy07gxeereuf374fhimdbmu9	2020-03-05 08:43:10.135	36	0
1744	CSFirst	2	0	node0bwyp78y18m7g1k1ioq7e8ftw729	2020-03-05 08:43:35.459	1726	0
1745	CSFirst	2	0	node0j9hbiay71ckl3rv5fo00tbpi12	2020-03-05 08:46:22.999	1742	0
1746	CSFirst	2	0	node01n61ghklqb88iwhof84edhck018	2020-03-05 08:51:12.828	28	0
1747	CSFirst	2	0	node0j9hbiay71ckl3rv5fo00tbpi12	2020-03-05 08:58:29.578	1742	0
1748	CSFirst	2	0	node01n61ghklqb88iwhof84edhck018	2020-03-05 09:04:41.218	28	0
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1749, true);


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, mail, name, password, section) FROM stdin;
4	amaury.ollagnier@gmail.com	Amaury Ollagnier	teresa	DEFAULT
7	isabelle.s.robin@gmail.com	Isabelle Robin	teresa	DEFAULT
181	luznelyflorez@gmail.com	Izabel Cristina Murillo Orozco	karinayluz	NOVENO
44	sara.zuleta@gmail.com	Sara Zuleta	sarapaulina	OCTAVO_2
20	luisafernanda@gmail.com	Luisa Cordoba	luisafernanda	OCTAVO_2
21	ldsrxnjulian803@hotmail.com	Julian Sucerquia Vasquez	linputos2	OCTAVO_2
22	murillopereaanyimeliza@gmail.com	Anyi Meliza Murillo Perea	vanesa04112003	OCTAVO_2
26	santiagosepulveda0401@gmail.com	Santiago Sepulveda	santiago0402	OCTAVO_2
24	linamurillo2005@gmail.com	Lina Murillo Perea	1025650735	OCTAVO_2
27	kevinandres125@gmail.com	Kevin Andres	kevin88	OCTAVO_2
28	katerineoquendo@gmail.com	Katerine Oquendo Zamarra	kate1118	OCTAVO_2
29	brayanstivenbatioja@gmail.com	Brayan Stiven Batioja	braya ncamila18	OCTAVO_2
30	eo9125173@gmail.com	Estefania Ochoa	mechitas012	OCTAVO_2
31	camiloarias@gmail.com	Cristian Camilo Arias Guerra	cristian1001	OCTAVO_2
32	jorgemolina2000@gmail.com	Jorge Macias Molina	jorge@123	OCTAVO_2
39	julianaespinosa1052005@gmail.com	Juliana Valentina Castro	amorcitho	OCTAVO_2
40	yulianar@gmail.co.com	Yuliana Buritica Restrepo 	18032018	OCTAVO_2
38	diego2005@gmail.com	Diego	diego@123	OCTAVO_2
34	sebastiantoro@gmail.com	Sebastian Toro	firulais	OCTAVO_2
35	luisarestrepo20120@gmail.com	Luisa Ernanda Restrepo	andresteamo	OCTAVO_2
36	josemanuelmoreno123112@gmail.com	Jose Manuel Moreno Ascanio	17258804	OCTAVO_2
37	brayanbatiojaperez@gmail.com	Brayan Batioja Perez	brayancamila18	OCTAVO_2
41	valentinaperes@gmail.con	Valentina Peres	valentina16	OCTAVO_2
42	jp460112@gmail.com	Juan Perez	juanperez	OCTAVO_2
33	nataliatapasco@gmail.con	Natalia Tapasco	martin2018	OCTAVO_2
73	oe9125173@gmail.com	Estefania Ochoa 	mechitas012	OCTAVO_2
104	cristianrv2006@gmail	Andres Rivera	25271111090	OCTAVO_2
182	yefesongrax@gmail.com	Yeferson Graciano	fre1ddy23	NOVENO
43	cristianrv2005@gmail	Cristian Andres Rave Rivera	2527111109	OCTAVO_2
23	diego05141@gmail.com	Diego Alejandro Pino Mosquera	diegoalejandropinomosquera	OCTAVO_2
167	gutierrezsaravalentina3@gmail.com	Sara Valentina Gutierrez	caritaseriaculitorecochero	NOVENO
169	marlon596mosqueranavia@gmail.com	Marlon Mosquera Navia	596marlon	NOVENO
171	juandamartinez272004@gmail.com	Juanda Martinez	3045270256	NOVENO
173	Wendymena55@gmail.com	Wendy Mena	3005367806	NOVENO
180	Yadisp104@gmail.com	Yadis Perez	yadis1234	NOVENO
198	sarasuare808@gmail.com	Sara Suarez	manuela	NOVENO
166	mateolopez51	Mateo Lopez		NOVENO
175	mateolopez52	Mateo Lopez	mateo78	NOVENO
188	restrepodairon4@gmail.com	Dairon Restrepo	dairon2002	NOVENO
192	andradevalenciacarlosandres@gmail.com	Carlos Andrade	carlos1077421667	NOVENO
193	motoyauribeyenniferpaola@gmail.com	Paola Montoya	vargasduque	NOVENO
214	vivianamuñoz@gmail.com	Viviana Usuga	viviana	NOVENO
223	daysmesa@gmail.com	Days Mesa	1032248536	NOVENO
168	giraldoariasjuandavid46@gmail.com	Juan David Giraldo Arias	amorporelrap	NOVENO
158	estebangallego2105@gmail.com	Esteban Gallego	jj.ee.vv.	NOVENO
344	CRISTIANRV2005@GMAIL	Cristian Andres Rave Rivera	2527111109	OCTAVO_2
163	urreadayana60@gmail.com	Dayana Urrea	dayana	NOVENO
336	valentinaperes@gmail.com	Valentina Peres	valentina16	OCTAVO_2
159	victorserna28@gmail.com	Victor Serna	victormanuel123	NOVENO
380	wendymena@gmail.com	Wendy Mena	3005367806	NOVENO
155	carmonamatin@gmail.com	Martin Carmona	losdelsur15	NOVENO
394	yadisp104@gmail.com	Yadis Perez	yadis1234	NOVENO
415	davinson10lp@gmail.com	Davinson Lopez	2312610	NOVENO
401	daysmesa@gmail	Daysmesa	1032248536	NOVENO
389	carlos20003@gmail.com	Rihana Andrade	carlos1077421667	NOVENO
403	3046335642	Luis Alvarez	luisalvarez	NOVENO
410	yeisonmejia123@gmail.com	Yeison Mejia	1033180049	NOVENO
411	sarasuare817@gmail.com	Sara Suarez	manuela	NOVENO
170	30076683	Andres de la Ossa	julianateamo	NOVENO
164	Andres #14	Andres de la ossa		NOVENO
327	juanda@gmail.com	Juanda	juandalopez	OCTAVO_2
331	ddavi3059@gemail.com	Tuberquia David	TEAMOMUCVH	OCTAVO_2
363	xymaon123@gmail.com	Kevin Andres Andrade	kevin1234	OCTAVO_2
383	Cristianroldan1818@gmail.com	Cristian Roldan	3217575368	OCTAVO_2
427	angievargas.@smdgcolegio.com	Angie Vargas	angie	SEXTO_2
428	wendycerna@smd.com	Wendy Serna	ana.sofia	SEXTO_2
430	yorfanypalacio.@smdgcolegio.com	Yorfany Palacio	yorfany	SEXTO_2
431	veronicachavez@smd.com	Veronica Chavez	21589710	SEXTO_2
432	julianrojas@smgolegio.com	Julian Fernando Rojas Areiza	anatemo	SEXTO_2
434	MAIGNORRANGEL@SMDCOLEGIO.COM	Maignor Rangle Gonzalez	MAIGNOR.COM	SEXTO_2
436	leilichaverra@smdcolegio.com	Leili Vanesa Chaverra Bermudes	teresa	SEXTO_2
351	danielruiz  2002	Daniel Estiben	daniel ruiz	OCTAVO_2
323	vasquezjulian803@gmail.com	Julian Sucerquia	linputos2	OCTAVO_2
211	paulina1999tangarife@gmail.com	Paulina Quintero	1021804115	NOVENO
329	juanp23@gmail.com	Juan Carlos Perez	2003juan	OCTAVO_2
99	camilagomez271219@gmail.com	Camila Gomez	29072005	OCTAVO_2
473	jhorfarypalacios@smdcolegiocom	Jhorfary Palacios Castro	liliana	SEXTO_2
597	andrestorres@smd.com	andressantiagotorresgoez	andrestorres	PRIMARIO
786	brayanbrow1407@gmail.com	Brayan Browsterd	yulisofia	SEXTO_2
931	anaricardo@gmail.com	Ana Victoria Ricardo Amante	092007	SEXTO_1
440	taliagomez@smd.colegio	Yisney Talia Gomez Bedoya	natalia	SEXTO_2
447	Brayanzapata@SMDcolegio.com	Brayan Zapata	brayan	SEXTO_2
450	natahkayeguez@smd.com	Natahka Yeguez	natasha@32157	SEXTO_2
452	ESTEFANIAALZATE@SMD.COLEGIO.COM	Estefania Alzate Franco	estefania22	SEXTO_2
455	diegoandreszapata@smdgolegio.com	Diego Andres Arango Zapata	diego	SEXTO_2
916	maryuriposso@gmail.com	Maryuri	16junio2008	SEXTO_1
1045	karen.minota@gmail.com	karen minota	karenluisa	PRIMARIO
1051	juanjoseurrea.@gimail,com	juan jose urrea usuga	juanjose	SECONDARIO
1117	jhonfredy.perea@gmail.com	jhonfredy perea	soveniperea	PRIMARIO
1123	juanjoseurrea@gimail.com	juan jose urrea usuga	juanjose	SECONDARIO
1151	yostin.perez@gmail.com	Yostin Perez Lopez	pornolomejor	SEXTO_1
1145	joseph.caballero@gmail.com	Joseph Caballero 	mejora	SEXTO_1
1140	kelly.vanegas@gmail.com	Kelly Sisley Vanega Stuberquia	adriana	SEXTO_1
1139	manuela.rengifo@gmail.com	Yulieth Manuela Rengifo Quiroz	manuela	SEXTO_1
1132	isaac.garcia@gmail.com	Isaac Garcia	2007	SEXTO_1
1125	darwin.perez@gmail.com	Darwin Stiven Bejumea Perez	perez.pere	SEXTO_1
1122	nicol.zapata@gmail.com	Nicol Yahaira Zapata Mosquera 	isaacc	SEXTO_1
1115	daniela.palacio@gmail.com	Daniela  Palacios 	daniela	SEXTO_1
1113	yenifer.montoya@gmail.com	Yenifer Yulieht Perez Montoya	paulina y yenifer 123	SEXTO_1
1107	mariana.avendano@gmail.com	Mariana Avendano	jose mariano	SEXTO_1
1105	guisao.quintero@gmail.com	Berenice Lopez	mariacarmelina	SEXTO_1
1100	valeria.gutierrez@gimail.com	Valeria Andrea Gutirrez de Avila	marilin	SEXTO_1
1097	ximena.toro@gmail.com	Ximena Toro Ruiz	ximena	SEXTO_1
1091	anlibeth.hermes@gmail.com	Anlibeth Hermes	200801	SEXTO_1
1080	torres.paola@gmail.com	Paola  Andrea  Torres  Giraldo	1234687	SEXTO_1
1063	laura.gutierrez@gmail.com	Laura Gutierrez	lauraliam	SEXTO_1
1059	nicolas.cardenas@gmail.com	Nicolas David Jimenez Cardenas	2311210	SEXTO_1
1085	alex.ibarra@gmail.com	John Alexander Ibarra Galvis	10133423	SEXTO_1
1046	manuela.toro@gmail.com	Manuela Toro Ruiz	manuela	SEXTO_1
1042	karina.garcia@gmail.com	Karina Garcia	karina	SEXTO_1
1038	joseph.yostin@gmail.com	Joseph Yostin Caballero Perez	porno07	SEXTO_1
914	jonathan.esteiner@gmail.com	Jonathan Esteiner	12345	SEXTO_1
918	jhonjader.palomeque@gmail.com	Jhon Palomeqe	1023639680	SEXTO_1
891	camila.menaaqmier@gmail.com	Camila Mena	mamiteamo	SEXTO_1
885	gregory.romero@gmail.com	Gregory Romero	31240661	SEXTO_1
882	nicolas@palaciosmai	Nicolas Moreno	mosquera	SEXTO_1
456	editheliana2005@smdcolegio.com	Edith Eliana Estrada Valle	eliana2005	SEXTO_2
461	jovaniricardo@smdgelegio.com	Jovani Ricardo Ortega	yovani12345	SEXTO_2
464	sebastian@gmail.com	Sebas Chavarria	yonca te amo	SEXTO_2
468	eduardoperdomo@smdcolejio.com	Eduardo Perdomo	3023947884	SEXTO_2
469	dannypaola@smdcolegio.com	Danny Paola	PAOLA	SEXTO_2
476	edwuarorozco@gmail.com	Edwuar Orozco	edwuar7	SEXTO_2
478	GIRLEZAAGUIRRE@SMD.COLEGIO.COM	Girelza Lisseth Aguirre Areiza	OLGATEAMO	SEXTO_2
485	yodelisantos@smd.colegio	Yodeli Santos	yodeli	SEXTO_2
492	TALIAGMEZ@SMDCOLEGIO.COM	Talia Gomez	TALIA	SEXTO_2
519	estefaniaalzate@smd.colegio.com	Estefania Alzate	estefania55	SEXTO_2
520	fabianburitica@smdcolegio.com	Fabian Buritica Restrepo	fabian2006	SEXTO_2
523	anyflorez@smdcolegio.com	Any Luz Florez Borja	123456789	SEXTO_2
546	juanpablorestrepoduarte@smdgolrgio.com	Juan Pablo Restrepo Duarte	leyditqm	SEXTO_2
572	alumnosextodos@smdcolegio.com	Carlos Mario Muños Nuñes	nacionallds	SEXTO_2
601	juanpabloduarte@smdgolegio.com	Juan Pablo Duarte	leyditqm	SEXTO_2
602	Yefersondionicio@gmail.con	Yeferson Gomes	santaclos	SEXTO_2
605	danielcaisedo@gmail.comSMDcom	Daniel David Caisedo	danieldavidcaisedo copete	SEXTO_2
614	YONATANOCHOA@SMDCOLEGIO.COM	Yonatan Ochoa	OCHOA	SEXTO_2
685	brayanbrou1407@gmail.com	Brayan Browster	yulisofia	SEXTO_2
710	editheliana2005@cmdcolegio.com	Edith Eliana Estrada Valle	eliana2005	SEXTO_2
716	fredispalacios@smdcolegio.com	Fredis Palacio Spalacios	nacional	SEXTO_2
734	jhondrey@smd colejio.com	Jhon Drey Sepulbedad	fornite	SEXTO_2
736	eduardoperdo@smdcolegio.com	Eduardo Perdomo	3023947884	SEXTO_2
742	luisfernandomosqueramena@smdcolegio.com	Luis Fernando Mosquera Mena	fernando	SEXTO_2
752	colegiobasico@smdcolegio.com	Estiven Borja	123456	SEXTO_2
779	andrescuesta@smdgolegio.com	Andres Felipe Cuesta Garsia	darlenis12345	SEXTO_2
822	taliagomez@smdcolegio.com	Talia Gomez	talia123	SEXTO_2
850	leilichavera@smdcolegio.com	Leily Vanesa Chaverra	teresa	SEXTO_2
864	dannyflorez@smdcolegio.com	Danny Paola	paola123	SEXTO_2
429	alexanderramirez@smd.com	Cleiber Alexander Amirez Pulgarin	alex123	SEXTO_2
442	andrestorres@smdcolegio	Andres Santiago Torres Goez	andretorrre	SEXTO_2
1057	valentina.oquendo@gmail.com	Diany Valentina Oquendo Blando	valentina.vanessa	SEXTO_1
1058	yhonndri.araujo@gmail.com	Yhondri Araujo	17.com	SEXTO_1
1162	brayan.tangarife@gmail.com	Brayan Estiven Tangarife	brayan61	SEXTO_1
1155	wendy.borja@gmail.com	Wendy Borja	wendy	SEXTO_1
880	yisedzapata@gmail.com	Yised Zapata	1025645653	SEXTO_1
1161	HENRY.SEPULVEDA@Gmail.com	Henry Sepulveda	2008	SEXTO_1
1152	lienyerson.gil@gmail.com	Lienyerson Gutierrez	lienyerson	SEXTO_1
897	nicolas@palaciosimai	Nicolas el Papacito	mosquera	SEXTO_1
1165	anonymous@gmail.com	Anonymous		DEFAULT
1186	2003carlos1077421667@gmail.com	Carlos Andrade	carlos1077421667	NOVENO
1209	daniela.palacios@gmail.com	Danielapalacios	daniela	SEXTO_1
1164	camila.serna@gmail.com	Camila Serna	3126751619	SEXTO_1
1215	wendy.montoya@gmail.com	Wendy Vaneza Montoya	wendyvanessa123	SEXTO_1
1225	valentina.gutierrez@gamil.com	Valentina Gutierrez	oquendogutierrez2104	SEXTO_1
1226	blanca.tapias@gmail.com	Blanca Yoheny Chavarria Tapias	futbool y nada mas	PRIMARIO
1272	Valentina.Gutierrez@gmail.com	Valentina Gutierrez	oquendogutierrez2104	SEXTO_1
1290	gimena.@toro.com	Ximena Toro Ruiz	gimena123	SEXTO_1
1713	jorge1234@gmail.com	Jorge Macias	jorge@123	OCTAVO_2
1714	felipe12345@gmail.com	Juan Felipe Arroyave Zuleta	felipejuan12	OCTAVO_2
1726	LOPEZJUANDAVID@GMAIL.COM	Juanda	YESICA12345	OCTAVO_2
1730	felipe2010@gmail.com	Juan Felipe Arroyave Zuleta	felipejuan1234	OCTAVO_2
1742	jheimersmithcordobaalvarez@gmei.com	Jheimer Smith Cordoba Alvarez	3202450038	OCTAVO_2
1749	julianandres158@gmail.com	Julian Serna	123456789julianandres@	OCTAVO_2
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
-- Name: achievement_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement
    ADD CONSTRAINT achievement_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;


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

