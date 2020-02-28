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
550	Dactylographie	0	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:49:17.845	535	0
551	Dactylographie	1	76	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:49:20.432	468	100
552	Dactylographie	1	28	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:49:20.689	478	100
553	Dactylographie	2	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:49:20.986	519	0
554	Dactylographie	0	0	node0gmh2j2g9qzpm14oe3k5cm08mj24	2020-02-18 08:49:22.015	520	0
555	Dactylographie	2	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:49:25.981	492	0
556	Dactylographie	3	100	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:49:46.426	428	100
557	Dactylographie	2	0	node0x1dqqhdpq9rb11br051skhetu19	2020-02-18 08:49:47.893	478	0
558	Dactylographie	0	94	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:49:49.969	535	100
559	Dactylographie	4	0	node017kh6jlcpq6gf1gw3d3qa7fozp47	2020-02-18 08:49:59.789	428	0
560	Dactylographie	3	99	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:50:01.779	429	100
561	Dactylographie	1	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:50:05.687	535	0
562	Dactylographie	2	0	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:50:12.044	468	0
563	Dactylographie	5	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:50:19.265	523	0
564	Dactylographie	4	0	node0nsprtk8ah26q1juragevudqyj16	2020-02-18 08:50:20.644	429	0
565	Dactylographie	2	16	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:50:21.91	476	100
566	Dactylographie	2	90	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:50:28.523	519	100
567	Dactylographie	1	89	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:50:37.058	535	100
568	Dactylographie	0	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:50:42.071	519	0
569	Dactylographie	3	0	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:50:42.935	432	100
570	Dactylographie	3	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:50:44.351	476	0
571	Dactylographie	2	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:50:48.535	535	0
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
586	Dactylographie	2	90	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:51:56.427	535	100
587	Dactylographie	0	86	node016efjjd64qo581l91iqgrs6aqx8	2020-02-18 08:52:00.485	432	100
588	Dactylographie	2	0	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:52:02.054	492	0
589	Dactylographie	3	0	node0wkonknr6qmwa1kyfpythhggzu37	2020-02-18 08:52:19.051	455	100
590	Dactylographie	3	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:52:19.751	535	0
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
613	Dactylographie	3	66	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:53:56.771	535	100
615	Dactylographie	2	23	node017xmkf1uagvw01u1160eg5c15a2	2020-02-18 08:54:00.336	492	100
616	Dactylographie	1	82	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 08:54:08.121	597	100
617	Dactylographie	0	0	node01xzh149sr13vbcgaarcqjj2e026	2020-02-18 08:54:09.045	523	0
618	Dactylographie	4	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:54:11.149	535	0
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
641	Dactylographie	4	59	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:55:45.034	535	100
642	Dactylographie	1	0	node01izwtb9dv72rf1kgoj5gspqaez3	2020-02-18 08:55:45.369	614	0
643	Dactylographie	4	0	node01ce8w7ms15w2q3s21kr5kh3au17	2020-02-18 08:55:45.983	519	0
644	Dactylographie	2	11	node04azmexg67ekb1vn88ewwauesz41	2020-02-18 08:55:48.51	468	100
645	Dactylographie	0	0	node02w8hw3g13vy61ij7rq7tduaue44	2020-02-18 08:55:49.406	601	0
646	Dactylographie	3	0	node0y43kylt96djv1tstbyyuqzb3a43	2020-02-18 08:55:51.533	476	100
648	Dactylographie	0	95	node016g0fxev11z1c12ctqqop56e8s33	2020-02-18 08:55:53.255	464	100
649	Dactylographie	5	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 08:55:57.039	535	0
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
729	Dactylographie	5	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:03:30.582	535	100
730	Dactylographie	0	72	node0vwjvne73sqm01j69qg6357sr438	2020-02-18 09:03:44.508	716	100
731	Dactylographie	6	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:03:46.273	535	0
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
825	Dactylographie	6	0	node012pr0nveno5cf1avesfk4gy58z40	2020-02-18 09:12:41.031	535	100
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
876	Dactylographie	0	0	node055mm8xe066m4wj7iiwenjoev54	2020-02-26 10:45:39.859	875	0
877	Dactylographie	0	96	node055mm8xe066m4wj7iiwenjoev54	2020-02-26 10:46:06.217	875	100
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
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1164, true);


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
99	camilagomez271219@gmil.com	Camila Gomez	29072005	OCTAVO_2
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
211	paulina1999tangarife@gmail.com	Paulina Quintero 	1021804115	NOVENO
351	danielruiz  2002	daniel  estiben	daniel ruiz	OCTAVO_2
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
323	vasquezjulian803@gmail.com	julian sucerquia	linputos2	OCTAVO_2
329	juanp23@gmail.com	juan carlos perez	2003juan	OCTAVO_2
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
456	editheliana2005@smdcolegio.com	EDITH ELIANA ESTRADA VALLE	eliana2005	SEXTO_2
461	jovaniricardo@smdgelegio.com	jovani ricardo ortega	yovani12345	SEXTO_2
464	sebastian@gmail.com	sebas chavarria	yonca te amo	SEXTO_2
468	eduardoperdomo@smdcolejio.com	eduardoperdomo	3023947884	SEXTO_2
469	dannypaola@smdcolegio.com	dannypaola	PAOLA	SEXTO_2
473	jhorfarypalacios@smdcolegiocom	Jhorfary Palacios Castro	liliana	SEXTO_2
476	edwuarorozco@gmail.com	edwuar orozco	edwuar7	SEXTO_2
478	GIRLEZAAGUIRRE@SMD.COLEGIO.COM	GIRLEZA LISSETH AGUIRRE AREIZA	OLGATEAMO	SEXTO_2
485	yodelisantos@smd.colegio	yodeli santos	yodeli	SEXTO_2
492	TALIAGMEZ@SMDCOLEGIO.COM	TALIA GOMEZ	TALIA	SEXTO_2
519	estefaniaalzate@smd.colegio.com	estefania alzate	estefania55	SEXTO_2
520	fabianburitica@smdcolegio.com	fabian buritica restrepo	fabian2006	SEXTO_2
523	anyflorez@smdcolegio.com	any luz florez borja	123456789	SEXTO_2
535	jhorfarypalacios@smdcolegio.com	Jhorfary palacios castro	liliana	SEXTO_2
546	juanpablorestrepoduarte@smdgolrgio.com	juan pablo restrepo duarte	leyditqm	SEXTO_2
572	alumnosextodos@smdcolegio.com	carlosmariomuñosnuñes	nacionallds	SEXTO_2
597	andrestorres@smd.com	andressantiagotorresgoez	andrestorres	PRIMARIO
601	juanpabloduarte@smdgolegio.com	juan pablo duarte	leyditqm	SEXTO_2
602	Yefersondionicio@gmail.con	yeferson gomes	santaclos	SEXTO_2
605	danielcaisedo@gmail.comSMDcom	danieldavidcaisedo	danieldavidcaisedo copete	SEXTO_2
614	YONATANOCHOA@SMDCOLEGIO.COM	YONATANOCHOA	OCHOA	SEXTO_2
685	brayanbrou1407@gmail.com	brayanbrowster	yulisofia	SEXTO_2
710	editheliana2005@cmdcolegio.com	edith eliana estrada valle	eliana2005	SEXTO_2
716	fredispalacios@smdcolegio.com	fredispalaciospalacios	nacional	SEXTO_2
734	jhondrey@smd colejio.com	jhon drey sepulbedad	fornite	SEXTO_2
736	eduardoperdo@smdcolegio.com	eduardoperdomo	3023947884	SEXTO_2
742	luisfernandomosqueramena@smdcolegio.com	luisfernandomosqueramena	fernando	SEXTO_2
752	colegiobasico@smdcolegio.com	estivenborja	123456	SEXTO_2
779	andrescuesta@smdgolegio.com	andresfelipecuestagarsia	darlenis12345	SEXTO_2
822	taliagomez@smdcolegio.com	talia gomez	talia123	SEXTO_2
850	leilichavera@smdcolegio.com	leily vanesa chaverra	teresa	SEXTO_2
864	dannyflorez@smdcolegio.com	danny paola	paola123	SEXTO_2
429	alexanderramirez@smd.com	cleiber alexander amirez pulgarin	alex123	SEXTO_2
442	andrestorres@smdcolegio	andressantiagotorresgoez	andretorrre	SEXTO_2
786	brayanbrow1407@gmail.com	brayanbrowsterd	yulisofia	SEXTO_2
440	taliagomez@smd.colegio	Yisney Talia Gomez Bedoya	natalia	SEXTO_2
447	Brayanzapata@SMDcolegio.com	Brayan Zapata	brayan	SEXTO_2
450	natahkayeguez@smd.com	Natahka Yeguez	natasha@32157	SEXTO_2
452	ESTEFANIAALZATE@SMD.COLEGIO.COM	Estefania Alzate Franco	estefania22	SEXTO_2
455	diegoandreszapata@smdgolegio.com	Diego Andres Arango Zapata	diego	SEXTO_2
875	anonymous@gmail.com	Anonymous		DEFAULT
880	yisedzapata@gmail.com	yised zapata	1025645653	SEXTO_1
882	nicolas@palaciosmai	nicolas moreno	mosquera	SEXTO_1
885	gregory.romero@gmail.com	gregory.romero	31240661	SEXTO_1
891	camila.menaaqmier@gmail.com	camilamena	mamiteamo	SEXTO_1
897	nicolas@palaciosimai	nicolas el papacito	mosquera	SEXTO_1
916	maryuriposso@gmail.com	Maryuri	16junio2008	SEXTO_1
918	jhonjader.palomeque@gmail.com	jhon  palomeqe	1023639680	SEXTO_1
931	anaricardo@gmail.com	Ana victoria Ricardo Amante	092007	SEXTO_1
914	jonathan.esteiner@gmail.com	jonathan	12345	SEXTO_1
1038	joseph.yostin@gmail.com	joseph yostin caballero perez	porno07	SEXTO_1
1042	karina.garcia@gmail.com	karina garcia	karina	SEXTO_1
1045	karen.minota@gmail.com	karen minota	karenluisa	PRIMARIO
1046	manuela.toro@gmail.com	manuela toro ruiz	manuela	SEXTO_1
1051	juanjoseurrea.@gimail,com	juan jose urrea usuga	juanjose	SECONDARIO
1057	valentina.oquendo@gmail.com	Diany valentina oquendo blando	valentina.vanessa	SEXTO_1
1058	YHONNDRI.ARAUJO@GMAIL.COM	YHONNDRI ARAUJO	17.COM	SEXTO_1
1059	nicolas.cardenas@gmail.com	nicolas david jimenez cardenas	2311210	SEXTO_1
1063	laura.gutierrez@gmail.com	laura gutierrez	lauraliam	SEXTO_1
1080	torres.paola@gmail.com	paola  andrea  torres  giraldo	1234687	SEXTO_1
1085	alex.ibarra@gmail.com	john alexander ibarra galvis	1013342359	SEXTO_1
1091	anlibeth.hermes@gmail.com	anlibeth hermes	200801	SEXTO_1
1097	ximena.toro@gmail.com	ximena toro ruiz	ximena	SEXTO_1
1100	valeria.gutierrez@gimail.com	valeria andrea gutirrez de avila	marilin	SEXTO_1
1105	guisao.quintero@gmail.com	berenicelopez	mariacarmelina	SEXTO_1
1107	mariana.avendano@gmail.com	mariana avendano	jose mariano	SEXTO_1
1113	yenifer.montoya@gmail.com	yenifer yulieht perez montoya	paulina y yenifer 123	SEXTO_1
1115	daniela.palacio@gmail.com	daniela  palacios 	daniela	SEXTO_1
1117	jhonfredy.perea@gmail.com	jhonfredy perea	soveniperea	PRIMARIO
1122	nicol.zapata@gmail.com	nicol yahaira zapata mosquera 	isaacc	SEXTO_1
1123	juanjoseurrea@gimail.com	juan jose urrea usuga	juanjose	SECONDARIO
1125	darwin.perez@gmail.com	darwin stiven bejumea perez	perez.pere	SEXTO_1
1132	isaac.garcia@gmail.com	isaacgarcia	2007	SEXTO_1
1139	manuela.rengifo@gmail.com	yulieth manuela rengifo quiroz	manuela	SEXTO_1
1140	kelly.vanegas@gmail.com	kellysisleyvanegastuberquia	adriana	SEXTO_1
1145	joseph.caballero@gmail.com	joseph caballero 	mejora	SEXTO_1
1151	yostin.perez@gmail.com	yostin perez lopez	pornolomejor	SEXTO_1
1152	lienyerson.gil@gmail.com	lienyerson gutierrez	lienyerson	SEXTO_1
1155	wendy.borja@gmail.com	wendy borja	wendy	SEXTO_1
1162	brayan.tangarife@gmail.com	brayan estiven tangarife	brayan61	SEXTO_1
1161	HENRY.SEPULVEDA@Gmail.com	HENRYSEPULVEDA	2008	SEXTO_1
1164	camila.serna@gmail.com	sernaalzate	3126751619 camilagustavo	SEXTO_1
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

