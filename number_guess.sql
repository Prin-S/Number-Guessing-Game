--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE users;
--
-- Name: users; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE users OWNER TO freecodecamp;

\connect users

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (105, 'user_1662473041409', 2, 288);
INSERT INTO public.users VALUES (69, 'user_1662472763481', 2, 509);
INSERT INTO public.users VALUES (68, 'user_1662472763482', 5, 25);
INSERT INTO public.users VALUES (85, 'user_1662472929324', 2, 357);
INSERT INTO public.users VALUES (121, 'user_1662473143481', 2, 642);
INSERT INTO public.users VALUES (104, 'user_1662473041410', 5, 89);
INSERT INTO public.users VALUES (71, 'user_1662472779377', 2, 216);
INSERT INTO public.users VALUES (84, 'user_1662472929325', 5, 95);
INSERT INTO public.users VALUES (70, 'user_1662472779378', 5, 274);
INSERT INTO public.users VALUES (132, 'user_1662473304922', 5, 251);
INSERT INTO public.users VALUES (73, 'user_1662472816595', 2, 571);
INSERT INTO public.users VALUES (87, 'user_1662472939095', 2, 165);
INSERT INTO public.users VALUES (72, 'user_1662472816596', 5, 384);
INSERT INTO public.users VALUES (120, 'user_1662473143482', 5, 219);
INSERT INTO public.users VALUES (86, 'user_1662472939096', 5, 70);
INSERT INTO public.users VALUES (75, 'user_1662472854528', 2, 329);
INSERT INTO public.users VALUES (57, 'Prin', 4, 2);
INSERT INTO public.users VALUES (107, 'user_1662473054803', 2, 653);
INSERT INTO public.users VALUES (74, 'user_1662472854529', 5, 86);
INSERT INTO public.users VALUES (59, 'user_1662472694500', 2, 171);
INSERT INTO public.users VALUES (58, 'user_1662472694501', 5, 95);
INSERT INTO public.users VALUES (77, 'user_1662472871139', 2, 2);
INSERT INTO public.users VALUES (89, 'user_1662472953603', 2, 115);
INSERT INTO public.users VALUES (106, 'user_1662473054804', 5, 37);
INSERT INTO public.users VALUES (76, 'user_1662472871140', 5, 35);
INSERT INTO public.users VALUES (61, 'user_1662472706651', 2, 382);
INSERT INTO public.users VALUES (88, 'user_1662472953604', 5, 261);
INSERT INTO public.users VALUES (60, 'user_1662472706652', 5, 13);
INSERT INTO public.users VALUES (79, 'user_1662472887627', 2, 51);
INSERT INTO public.users VALUES (63, 'user_1662472717477', 2, 241);
INSERT INTO public.users VALUES (78, 'user_1662472887628', 5, 116);
INSERT INTO public.users VALUES (62, 'user_1662472717478', 5, 179);
INSERT INTO public.users VALUES (91, 'user_1662472974204', 2, 296);
INSERT INTO public.users VALUES (81, 'user_1662472901399', 2, 541);
INSERT INTO public.users VALUES (65, 'user_1662472724625', 2, 536);
INSERT INTO public.users VALUES (109, 'user_1662473062423', 2, 45);
INSERT INTO public.users VALUES (80, 'user_1662472901400', 5, 144);
INSERT INTO public.users VALUES (64, 'user_1662472724626', 5, 39);
INSERT INTO public.users VALUES (90, 'user_1662472974205', 5, 132);
INSERT INTO public.users VALUES (123, 'user_1662473150185', 2, 46);
INSERT INTO public.users VALUES (83, 'user_1662472915046', 2, 146);
INSERT INTO public.users VALUES (67, 'user_1662472733699', 2, 14);
INSERT INTO public.users VALUES (82, 'user_1662472915047', 5, 135);
INSERT INTO public.users VALUES (108, 'user_1662473062424', 5, 106);
INSERT INTO public.users VALUES (93, 'user_1662472992820', 2, 102);
INSERT INTO public.users VALUES (66, 'user_1662472733700', 4, 115);
INSERT INTO public.users VALUES (135, 'user_1662473386877', 2, 277);
INSERT INTO public.users VALUES (92, 'user_1662472992821', 5, 174);
INSERT INTO public.users VALUES (122, 'user_1662473150186', 5, 131);
INSERT INTO public.users VALUES (95, 'user_1662473001646', 2, 485);
INSERT INTO public.users VALUES (111, 'user_1662473068357', 2, 214);
INSERT INTO public.users VALUES (124, 'user_1662473173456', 1, 446);
INSERT INTO public.users VALUES (94, 'user_1662473001647', 5, 240);
INSERT INTO public.users VALUES (110, 'user_1662473068358', 5, 183);
INSERT INTO public.users VALUES (97, 'user_1662473009200', 2, 544);
INSERT INTO public.users VALUES (96, 'user_1662473009201', 5, 14);
INSERT INTO public.users VALUES (125, 'user_1662473173457', 3, 371);
INSERT INTO public.users VALUES (113, 'user_1662473076170', 2, 47);
INSERT INTO public.users VALUES (99, 'user_1662473017252', 2, 398);
INSERT INTO public.users VALUES (134, 'user_1662473386878', 5, 97);
INSERT INTO public.users VALUES (98, 'user_1662473017253', 5, 169);
INSERT INTO public.users VALUES (112, 'user_1662473076171', 5, 276);
INSERT INTO public.users VALUES (101, 'user_1662473027170', 2, 220);
INSERT INTO public.users VALUES (100, 'user_1662473027171', 5, 133);
INSERT INTO public.users VALUES (136, 'Walrus', 1, 10);
INSERT INTO public.users VALUES (115, 'user_1662473105219', 2, 186);
INSERT INTO public.users VALUES (127, 'user_1662473180551', 2, 415);
INSERT INTO public.users VALUES (103, 'user_1662473033859', 2, 934);
INSERT INTO public.users VALUES (114, 'user_1662473105220', 5, 3);
INSERT INTO public.users VALUES (102, 'user_1662473033860', 5, 365);
INSERT INTO public.users VALUES (126, 'user_1662473180552', 5, 248);
INSERT INTO public.users VALUES (137, 'Maggi', 2, 9);
INSERT INTO public.users VALUES (117, 'user_1662473113055', 2, 218);
INSERT INTO public.users VALUES (116, 'user_1662473113056', 5, 141);
INSERT INTO public.users VALUES (129, 'user_1662473188867', 2, 137);
INSERT INTO public.users VALUES (119, 'user_1662473135997', 2, 244);
INSERT INTO public.users VALUES (128, 'user_1662473188868', 5, 324);
INSERT INTO public.users VALUES (118, 'user_1662473135998', 5, 128);
INSERT INTO public.users VALUES (139, 'user_1662474191328', 2, 297);
INSERT INTO public.users VALUES (131, 'user_1662473197200', 2, 462);
INSERT INTO public.users VALUES (138, 'user_1662474191329', 5, 185);
INSERT INTO public.users VALUES (130, 'user_1662473197201', 5, 561);
INSERT INTO public.users VALUES (133, 'user_1662473304921', 2, 50);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 139, true);


--
-- Name: users username_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_unique UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

