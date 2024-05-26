--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(20) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth numeric,
    sientist_id integer
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
    name character varying(20) NOT NULL,
    age_in_millions_of_year integer,
    has_life boolean,
    distance_from_earth numeric,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_year integer,
    has_life boolean,
    distance_from_earth numeric,
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
-- Name: sientist; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sientist (
    name character varying(30) NOT NULL,
    discovery character varying(30) NOT NULL,
    date integer,
    planet_id integer,
    star_id integer,
    galaxy_id integer,
    moon_id integer,
    sientist_id integer NOT NULL
);


ALTER TABLE public.sientist OWNER TO freecodecamp;

--
-- Name: sientist_sientist_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sientist_sientist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sientist_sientist_id_seq OWNER TO freecodecamp;

--
-- Name: sientist_sientist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sientist_sientist_id_seq OWNED BY public.sientist.sientist_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_year integer,
    distance_from_earth numeric,
    type text,
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sientist sientist_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist ALTER COLUMN sientist_id SET DEFAULT nextval('public.sientist_sientist_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Sagittarius Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Virgo Stellar Stream', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Io', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Europa', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (6, 'Callisto', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Amalthea', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Himalia', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (9, 'Elara', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (10, 'Mimas', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (11, 'Enceladus', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'Tethys', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (13, 'Dione', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'Rhea', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'Titan', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'Ariel', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Umbriel', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Titania', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Oberon', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Miranda', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (21, 'Triton', NULL, NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, false, 165890000, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4600, false, 38000000, 1);
INSERT INTO public.planet VALUES (3, 'Mars', 4600, false, 225000000, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 4600, false, 714000000, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 4500, false, 1400000000, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 4500, false, 2600000000, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 4500, false, 7500000000, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 4500, false, 4530000000, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri', 4850, false, 40208000000000, 2);
INSERT INTO public.planet VALUES (10, 'Lalande 21185', 10000, false, 78434000000000, 3);
INSERT INTO public.planet VALUES (11, 'Epsilon Indi Ab', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri c', NULL, NULL, NULL, 2);


--
-- Data for Name: sientist; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sientist VALUES ('Galileo Galilei', 'Jupiter', 1610, 4, NULL, NULL, NULL, 1);
INSERT INTO public.sientist VALUES ('William Lassell', 'Neptune', 1846, 7, NULL, NULL, NULL, 2);
INSERT INTO public.sientist VALUES ('Damasso et al.', 'Proxima Centauri c', 2020, 12, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Messier 54', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Alpheratz', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Sirius', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'Spica', NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'R136a1', NULL, NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: sientist_sientist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sientist_sientist_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: sientist sientist_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist
    ADD CONSTRAINT sientist_name_key UNIQUE (name);


--
-- Name: sientist sientist_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist
    ADD CONSTRAINT sientist_name_key1 UNIQUE (name);


--
-- Name: sientist sientist_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist
    ADD CONSTRAINT sientist_pkey PRIMARY KEY (sientist_id);


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
-- Name: galaxy galaxy_sientist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_sientist_id_fkey FOREIGN KEY (sientist_id) REFERENCES public.sientist(sientist_id);


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
-- Name: sientist sientist_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist
    ADD CONSTRAINT sientist_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: sientist sientist_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist
    ADD CONSTRAINT sientist_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: sientist sientist_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist
    ADD CONSTRAINT sientist_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: sientist sientist_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sientist
    ADD CONSTRAINT sientist_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

