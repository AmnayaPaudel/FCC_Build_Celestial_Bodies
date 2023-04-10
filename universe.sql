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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    entity_id integer NOT NULL,
    name character varying(60),
    shape text,
    size integer,
    has_life boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    entity_id integer NOT NULL,
    name character varying(60),
    shape text,
    size text,
    mass_milliard_solar_masses integer,
    age_in_billion numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    entity_id integer NOT NULL,
    name character varying(60),
    parent_planet text,
    shape text,
    size integer,
    mass_in_kt numeric,
    age numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    entity_id integer NOT NULL,
    name character varying(60),
    shape text,
    size_in_km integer,
    mass_in_mtonne integer,
    age numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    entity_id integer NOT NULL,
    name character varying(60),
    shape text,
    size_solar_radii integer,
    mass_solar_masses integer,
    age_in_billion numeric,
    temperature_in_kelvin integer,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 1, 'Vesta', 'Irregular', 525000, false);
INSERT INTO public.asteroid VALUES (2, 2, 'Eros', 'Elongated', 13000, false);
INSERT INTO public.asteroid VALUES (3, 3, 'Apophis', 'Elongated', 448, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 1, 'Milky Way', 'Barred Spiral', 'Large', 1000, 13.6);
INSERT INTO public.galaxy VALUES (2, 2, 'Andromeda', 'Spiral', 'Large', 1500, 12);
INSERT INTO public.galaxy VALUES (3, 3, 'Triangulum', 'Spiral', 'Small', 25, 10);
INSERT INTO public.galaxy VALUES (4, 4, 'Whirlpool', 'Spiral (Distorted)', 'Medium', 160, 0.7);
INSERT INTO public.galaxy VALUES (5, 5, 'Sombrero', 'Disk', 'Large', 800, 10);
INSERT INTO public.galaxy VALUES (6, 6, 'Large Magellanic', 'Irregular', 'Small', 10, 1.75);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 'Earth', 'Spherical', 3474, 73500000, 4.5);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', 'Mars', 'Irregular', 22, 10, 4.3);
INSERT INTO public.moon VALUES (3, 3, 'Deimos', 'Mars', 'Irregular', 12, 1.5, 4.3);
INSERT INTO public.moon VALUES (4, 4, 'Ganymede', 'Jupiter', 'Spherical', 5262, 2631000, 4.5);
INSERT INTO public.moon VALUES (5, 5, 'Callisto', 'Jupiter', 'Spherical', 4821, 1076000, 4.5);
INSERT INTO public.moon VALUES (6, 6, 'Europa', 'Jupiter', 'Spherical', 3122, 48000, 4.5);
INSERT INTO public.moon VALUES (7, 7, 'Io', 'Jupiter', 'Spherical', 3643, 89000, 4.5);
INSERT INTO public.moon VALUES (8, 8, 'Titan', 'Saturn', 'Spherical', 5150, 134500, 4.5);
INSERT INTO public.moon VALUES (9, 9, 'Enceladus', 'Saturn', 'Spherical', 504, 0.2, 4.5);
INSERT INTO public.moon VALUES (10, 10, 'Mimas', 'Saturn', 'Spherical', 396, 0.37, 4.5);
INSERT INTO public.moon VALUES (11, 11, 'Rhea', 'Saturn', 'Spherical', 1528, 2.3, 4.5);
INSERT INTO public.moon VALUES (12, 12, 'Dione', 'Saturn', 'Spherical', 1123, 11, 4.5);
INSERT INTO public.moon VALUES (13, 13, 'Tethys', 'Saturn', 'Spherical', 1062, 6.2, 4.5);
INSERT INTO public.moon VALUES (14, 14, 'Iapetus', 'Saturn', 'Spherical', 1470, 19.2, 4.5);
INSERT INTO public.moon VALUES (15, 15, 'Miranda', 'Uranus', 'Irregular', 471, 0.065, 4.5);
INSERT INTO public.moon VALUES (16, 16, 'Ariel', 'Uranus', 'Spherical', 1158, 13.5, 4.5);
INSERT INTO public.moon VALUES (17, 17, 'Umbriel', 'Uranus', 'Spherical', 1169, 9.3, 4.5);
INSERT INTO public.moon VALUES (18, 18, 'Oberon', 'Uranus', 'Spherical', 1522, 30, 4.5);
INSERT INTO public.moon VALUES (19, 19, 'Titania', 'Uranus', 'Spherical', 1578, 35, 4.5);
INSERT INTO public.moon VALUES (20, 20, 'Triton', 'Neptune', 'Spherical', 2710, 2140, 4.5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Mercury', 'Spheroid', 4880, 55, 4.5);
INSERT INTO public.planet VALUES (2, 2, 'Venus', 'Oblate Spheroid', 12104, 815, 4.5);
INSERT INTO public.planet VALUES (3, 3, 'Earth', 'Oblate Spheroid', 12742, 5970, 4.5);
INSERT INTO public.planet VALUES (4, 4, 'Mars', 'Oblate Spheroid', 6779, 1070, 4.5);
INSERT INTO public.planet VALUES (5, 5, 'Jupiter', 'Oblate Spheroid', 139822, 1898000, 4.5);
INSERT INTO public.planet VALUES (6, 6, 'Saturn', 'Oblate Spheroid', 116460, 568000, 4.5);
INSERT INTO public.planet VALUES (7, 7, 'Uranus', 'Oblate Spheroid', 50724, 86800, 4.5);
INSERT INTO public.planet VALUES (8, 8, 'Neptune', 'Oblate Spheroid', 49244, 102000, 4.5);
INSERT INTO public.planet VALUES (9, 9, 'Pluto', 'Irregular', 2377, 1, 4.6);
INSERT INTO public.planet VALUES (10, 10, 'Ceres', 'Spheroid', 939, 60, 4.6);
INSERT INTO public.planet VALUES (11, 11, 'Haumea', 'Ellipsoid', 2322, 270, 4.5);
INSERT INTO public.planet VALUES (12, 12, 'Makemake', 'Spheroid', 1430, 300, 4.5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sirius', 'Spherical', 2, 2, 0.35, 9940, true, 1);
INSERT INTO public.star VALUES (2, 2, 'Betelgeuse', 'Asymmetric', 887, 17, 8.25, 3500, false, 3);
INSERT INTO public.star VALUES (3, 3, 'Vega', 'Spherical', 2, 2, 0.5, 9600, true, 2);
INSERT INTO public.star VALUES (4, 4, 'Alpha Centauri', 'Spherical', 1, 1, 6.75, 5800, true, 4);
INSERT INTO public.star VALUES (5, 5, 'Sun', 'Spherical', 1, 1, 4.6, 5500, true, 1);
INSERT INTO public.star VALUES (6, 6, 'Antares', 'Spherical', 883, 18, 12, 3500, true, 1);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy entity_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT entity_id UNIQUE (entity_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_parent_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

