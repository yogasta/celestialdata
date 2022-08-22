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
    galaxy_size numeric,
    is_galaxy boolean NOT NULL,
    galaxy_type boolean NOT NULL
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
    size integer,
    shape text,
    color text,
    planet_id integer
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
-- Name: placeholder; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.placeholder (
    placeholder_id integer NOT NULL,
    name character varying NOT NULL,
    color text
);


ALTER TABLE public.placeholder OWNER TO freecodecamp;

--
-- Name: placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.placeholder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.placeholder_id_seq OWNER TO freecodecamp;

--
-- Name: placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.placeholder_id_seq OWNED BY public.placeholder.placeholder_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    size integer,
    shape text,
    color text,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_size integer,
    star_color text,
    star_shape character varying,
    galaxy_id integer
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
-- Name: placeholder placeholder_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder ALTER COLUMN placeholder_id SET DEFAULT nextval('public.placeholder_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1570, true, true);
INSERT INTO public.galaxy VALUES (2, 'Sun', 10, false, false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 4000, true, true);
INSERT INTO public.galaxy VALUES (4, 'Good Egg', 1000, true, true);
INSERT INTO public.galaxy VALUES (5, 'Universe', 15000, false, false);
INSERT INTO public.galaxy VALUES (6, 'Gusty Garden', 700, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 10, 'Round', 'Grey', 1);
INSERT INTO public.moon VALUES (2, 'Titan', 100, 'Round', 'Purple', 8);
INSERT INTO public.moon VALUES (3, 'Teton', 109, 'Round', 'Red', 6);
INSERT INTO public.moon VALUES (4, 'Egg', 100, 'Egg-shaped', 'White', 10);
INSERT INTO public.moon VALUES (5, 'Tetanus', 102, 'Round', 'Red', 11);
INSERT INTO public.moon VALUES (6, 'Toadcity', 100, 'Mushroom', 'White-Red', 4);
INSERT INTO public.moon VALUES (7, 'Momento', 10, 'Round', 'Grey', 12);
INSERT INTO public.moon VALUES (8, 'Mickey', 100, 'Round', 'Black', 3);
INSERT INTO public.moon VALUES (9, 'Darkness', 10, 'Round', 'Vantablack', 2);
INSERT INTO public.moon VALUES (10, 'Cloudlfare', 100, 'Round', 'Orange', 9);
INSERT INTO public.moon VALUES (11, 'Oof', 10, 'Round', 'White', 9);
INSERT INTO public.moon VALUES (12, 'Dkonga', 100, 'Round', 'Brown', 7);
INSERT INTO public.moon VALUES (13, 'Why', 10, 'Round', 'Blue', 11);
INSERT INTO public.moon VALUES (14, 'Gusty', 100, 'Cloud', 'White', 2);
INSERT INTO public.moon VALUES (15, 'Help', 10, 'Distress', 'Red', 1);
INSERT INTO public.moon VALUES (16, 'Mun', 100, 'Round', 'Blue', 12);
INSERT INTO public.moon VALUES (17, 'MEPLS', 10, 'Round', 'Grey', 2);
INSERT INTO public.moon VALUES (18, 'Pluto', 100, 'Dog', 'Brown', 4);
INSERT INTO public.moon VALUES (19, 'Ego', 10, 'Round', 'Green', 3);
INSERT INTO public.moon VALUES (20, 'Bruh', 100, 'Bruh', 'Bruh', 3);


--
-- Data for Name: placeholder; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.placeholder VALUES (1, 'Me', 'Red');
INSERT INTO public.placeholder VALUES (2, 'You', 'Green');
INSERT INTO public.placeholder VALUES (3, 'I', 'Phone');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 20, 'Round', 'Blue', 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 10, 'Round', 'Red', 3);
INSERT INTO public.planet VALUES (3, 'Andromedus', 200, 'Face', 'White', 3);
INSERT INTO public.planet VALUES (4, 'Venus', 10, 'Round', 'Orange', 4);
INSERT INTO public.planet VALUES (5, 'Mars', 20, 'Round', 'Red', 5);
INSERT INTO public.planet VALUES (6, 'Yoshi Egg', 5, 'Egg', 'Green', 2);
INSERT INTO public.planet VALUES (7, 'Sus', 20, 'Imposter shaped', 'Red', 6);
INSERT INTO public.planet VALUES (8, 'Chicken', 12, 'Chicken', 'White', 6);
INSERT INTO public.planet VALUES (9, 'Neptune', 100, 'Round', 'Blue', 6);
INSERT INTO public.planet VALUES (10, 'Saturn', 120, 'Round', 'Brown', 3);
INSERT INTO public.planet VALUES (11, 'Uranus', 90, 'Round', 'Green', 4);
INSERT INTO public.planet VALUES (12, 'Bowser', 300, 'Bowsered', 'Ugly', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpha Centauri', 200, 'Red', 'Round', 3);
INSERT INTO public.star VALUES (3, 'Centaurus', 300, 'Blue', 'Round', 3);
INSERT INTO public.star VALUES (4, 'Knoxdwarf', 250, 'Green', 'Star', 1);
INSERT INTO public.star VALUES (5, 'Christmas', 10, 'White', 'Star', 1);
INSERT INTO public.star VALUES (6, 'Yoshi', 15, 'Green', 'Egg', 6);
INSERT INTO public.star VALUES (1, 'Sun', 100, 'Red', 'Round', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.placeholder_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: placeholder placeholder_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT placeholder_name_key UNIQUE (name);


--
-- Name: placeholder placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT placeholder_pkey PRIMARY KEY (placeholder_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

