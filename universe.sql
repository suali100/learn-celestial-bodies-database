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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(12,2) NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    star_types text,
    galaxy_types text,
    distance_from_earth numeric(12,2) NOT NULL,
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
-- Name: mytable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mytable (
    mytable_id integer NOT NULL,
    name character varying(50) NOT NULL,
    column_one text NOT NULL,
    column_two integer,
    column_three boolean
);


ALTER TABLE public.mytable OWNER TO freecodecamp;

--
-- Name: mytable_mytable_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mytable_mytable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mytable_mytable_id_seq OWNER TO freecodecamp;

--
-- Name: mytable_mytable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mytable_mytable_id_seq OWNED BY public.mytable.mytable_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    star_types text,
    distance_from_earth numeric(12,2) NOT NULL,
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_types text,
    distance_from_earth numeric(12,2) NOT NULL,
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
-- Name: mytable mytable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable ALTER COLUMN mytable_id SET DEFAULT nextval('public.mytable_mytable_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Unsere Galaxie', false, true, 13000, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nachbar der Milchstraße', false, true, 10000, 2537000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Eine kleine Galaxie', false, true, 12000, 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Eine Spiralgalaxie', false, true, 10000, 2300000.00);
INSERT INTO public.galaxy VALUES (5, 'Sculptor', 'Eine Zwerggalaxie', false, true, 9000, 1100000.00);
INSERT INTO public.galaxy VALUES (6, 'Leo I', 'Eine elliptische Galaxie', false, true, 8500, 820000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Unser Mond', false, true, 4500, 'Terrestrial', 'Main Sequence', 'Spiral', 0.00, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Einer der Marsmonde', false, true, 4500, 'Terrestrial', 'Main Sequence', 'Spiral', 0.00, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Ein weiterer Marsmond', false, true, 4500, 'Terrestrial', 'Main Sequence', 'Spiral', 0.00, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 'Ein eisiger Jupitermond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Größter Mond des Sonnensystems', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Ein weiterer Jupitermond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 3);
INSERT INTO public.moon VALUES (7, 'Io', 'Ein vulkanischer Jupitermond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 'Ein Saturnmond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Saturnmond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Ein weiterer Saturnmond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Kleiner Saturnmond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 6);
INSERT INTO public.moon VALUES (12, 'Mimas', 'Kleinster Saturnmond', false, true, 4500, 'Gas Giant', 'Main Sequence', 'Spiral', 0.00, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', 'Uranusmond', false, true, 4500, 'Ice Giant', 'Main Sequence', 'Spiral', 0.00, 8);
INSERT INTO public.moon VALUES (14, 'Ariel', 'Uranusmond', false, true, 4500, 'Ice Giant', 'Main Sequence', 'Spiral', 0.00, 8);
INSERT INTO public.moon VALUES (15, 'Umbriel', 'Ein weiterer Uranusmond', false, true, 4500, 'Ice Giant', 'Main Sequence', 'Spiral', 0.00, 8);
INSERT INTO public.moon VALUES (16, 'Triton', 'Größter Mond des Neptun', false, true, 4500, 'Ice Giant', 'Main Sequence', 'Spiral', 0.00, 7);
INSERT INTO public.moon VALUES (17, 'Charon', 'Mond des Zwergplaneten Pluto', false, true, 4500, 'Dwarf Planet', 'Main Sequence', 'Spiral', 0.00, 12);
INSERT INTO public.moon VALUES (18, 'Nereid', 'Ein kleinerer Neptunmond', false, true, 4500, 'Ice Giant', 'Main Sequence', 'Spiral', 0.00, 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 'Mond des Uranus', false, true, 4500, 'Ice Giant', 'Main Sequence', 'Spiral', 0.00, 8);
INSERT INTO public.moon VALUES (20, 'Titania', 'Ein Uranusmond', false, true, 4500, 'Ice Giant', 'Main Sequence', 'Spiral', 0.00, 8);


--
-- Data for Name: mytable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mytable VALUES (1, 'Row 1', 'Description 1', 100, true);
INSERT INTO public.mytable VALUES (2, 'Row 2', 'Description 2', 200, false);
INSERT INTO public.mytable VALUES (3, 'Row 3', 'Description 3', 300, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Unser Heimatplanet', true, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Der rote Planet', false, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gasriese', false, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'Heißer Planet', false, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 'Nächster Planet zur Sonne', false, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Planet mit Ringen', false, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 'Äußerster Planet', false, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 'Kalter Gasriese', false, true, 4500, 'Main Sequence', 0.00, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Planet bei Proxima Centauri', false, true, 4500, 'Red Dwarf', 4.20, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 'Exoplanet ähnlich der Erde', false, true, 6000, 'Yellow Dwarf', 1400.00, 3);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 'Möglicherweise bewohnbar', false, true, 5000, 'Red Dwarf', 20.40, 2);
INSERT INTO public.planet VALUES (12, 'HD 189733 b', 'Ein heißer Jupiter', false, true, 6200, 'Blue Dwarf', 63.00, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Unser Stern', false, true, 4600, 'Spiral', 0.00, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Nächster Stern zur Sonne', false, true, 4500, 'Elliptisch', 4.24, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'Ein heller Stern', false, true, 300, 'Spiral', 8.60, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Ein roter Riese', false, true, 10000, 'Elliptisch', 642.00, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 'Ein blauer Überriese', false, true, 8000, 'Spiral', 860.00, 3);
INSERT INTO public.star VALUES (6, 'Vega', 'Ein heller Stern in Lyra', false, true, 500, 'Elliptisch', 25.00, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: mytable_mytable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mytable_mytable_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: mytable mytable_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable
    ADD CONSTRAINT mytable_name_key UNIQUE (name);


--
-- Name: mytable mytable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mytable
    ADD CONSTRAINT mytable_pkey PRIMARY KEY (mytable_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

