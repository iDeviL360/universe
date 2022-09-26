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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    column2 integer NOT NULL,
    column3 integer NOT NULL,
    column43 integer,
    column41233 integer,
    description3 text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id integer,
    is_habitable boolean,
    description text NOT NULL,
    description2 text,
    description3 text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    distance_to_earth integer,
    age integer,
    gravity numeric,
    is_habitable boolean,
    star_id integer,
    description2 text,
    description3 text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: random_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random_table (
    random_table_id integer NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
    description3 text
);


ALTER TABLE public.random_table OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    description text NOT NULL,
    description2 text,
    description3 text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Description', 1, 1, 1, 1, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Description', 1, 1, 1, 1, NULL);
INSERT INTO public.galaxy VALUES (3, 'M88', 'Description', 1, 1, 1, 1, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 1', 'Description', 1, 1, 1, 1, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 2', 'Description', 1, 1, 1, 1, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 3', 'Description', 1, 1, 1, 1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Titan', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (28, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (30, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (31, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (32, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (33, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (34, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (35, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (36, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (37, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (38, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (39, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (40, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);
INSERT INTO public.moon VALUES (41, 'Moon 1', NULL, NULL, 'asdasd', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Saturn', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, 'Planet', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: random_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random_table VALUES (1, 'random 1', 'asdas', NULL);
INSERT INTO public.random_table VALUES (2, 'random 2', 'asdas', NULL);
INSERT INTO public.random_table VALUES (3, 'random 3', 'asdas', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 'adasd', NULL, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, 'adasd', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Centauri B', NULL, 'adasd', NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star 1', NULL, 'adasd', NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star 2', NULL, 'adasd', NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star 3', NULL, 'adasd', NULL, NULL);
INSERT INTO public.star VALUES (7, 'Star 4', NULL, 'adasd', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 41, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_description3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description3_key UNIQUE (description3);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description3_key UNIQUE (description3);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_description3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description3_key UNIQUE (description3);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: random_table random_table_description3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_description3_key UNIQUE (description3);


--
-- Name: random_table random_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random_table
    ADD CONSTRAINT random_table_pkey PRIMARY KEY (random_table_id);


--
-- Name: star star_description3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description3_key UNIQUE (description3);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

