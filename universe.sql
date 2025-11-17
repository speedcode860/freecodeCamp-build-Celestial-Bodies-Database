--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30),
    number_of_stars integer,
    age integer NOT NULL,
    quantity_of_energy numeric(6,2) NOT NULL,
    description text,
    big_bang_theory boolean,
    is_habitant boolean
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
    planet_id integer NOT NULL,
    brightness integer NOT NULL,
    age integer NOT NULL,
    name character varying(30),
    radius numeric(6,2),
    description text,
    is_more_closer boolean
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: more_informations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_informations (
    more_informations_id integer NOT NULL,
    name character varying(30),
    date integer NOT NULL,
    contributors integer NOT NULL
);


ALTER TABLE public.more_informations OWNER TO freecodecamp;

--
-- Name: more_informations_more_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_informations_more_informations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_informations_more_informations_id_seq OWNER TO freecodecamp;

--
-- Name: more_informations_more_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_informations_more_informations_id_seq OWNED BY public.more_informations.more_informations_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    number_of_habitants integer NOT NULL,
    age integer NOT NULL,
    radius numeric(6,2) NOT NULL,
    desription text,
    is_ending boolean
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    radius integer NOT NULL,
    quantity_of_energy numeric(6,2),
    furture_explosion boolean,
    closer boolean,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: more_informations more_informations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_informations ALTER COLUMN more_informations_id SET DEFAULT nextval('public.more_informations_more_informations_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, number_of_stars, age, quantity_of_energy, description, big_bang_theory, is_habitant) FROM stdin;
1	Milky Way	1000000000	13600	9999.99	Our home galaxy	t	t
2	Andromeda	1000000000	10000	8500.50	Nearest large galaxy	t	f
3	Sombrero	800000000	9000	7200.75	Galaxy with bright nucleus	f	f
4	Whirlpool	500000000	7000	6500.20	Famous spiral galaxy	t	f
5	Triangulum	400000000	6000	4800.00	Small spiral galaxy	f	f
6	Black Eye	300000000	5000	3500.10	Galaxy with dark band	t	f
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, planet_id, brightness, age, name, radius, description, is_more_closer) FROM stdin;
1	1	80	4500	Luna	173.70	Earth’s natural satellite	t
2	2	60	4000	Phobos	11.20	Small moon of Mars	t
3	2	55	4000	Deimos	6.20	Second moon of Mars	f
4	3	70	4600	Aphrodite	150.00	Imaginary moon of Venus	f
5	4	50	4600	Hermes	120.00	Imaginary moon of Mercury	f
6	5	65	2000	Betel I	200.00	Moon orbiting Betelgeuse I	t
7	5	60	2000	Betel II	180.00	Moon orbiting Betelgeuse I	f
8	6	75	1500	Rocky I	90.00	Moon orbiting Betelgeuse II	t
9	6	70	1500	Rocky II	85.00	Moon orbiting Betelgeuse II	f
10	7	80	3000	Sirius Alpha	160.00	Moon orbiting Sirius A I	t
11	7	75	3000	Sirius Beta	140.00	Moon orbiting Sirius A I	f
12	8	60	2500	Sirius Gamma	130.00	Moon orbiting Sirius A II	f
13	8	55	2500	Sirius Delta	125.00	Moon orbiting Sirius A II	t
14	9	85	4000	Rigel Prime	200.00	Moon orbiting Rigel I	t
15	9	80	4000	Rigel Secundus	180.00	Moon orbiting Rigel I	f
16	10	70	3500	Rigel Minor	150.00	Moon orbiting Rigel II	f
17	10	65	3500	Rigel Tertius	140.00	Moon orbiting Rigel II	t
18	11	90	4800	Proxima Alpha	170.00	Moon orbiting Proxima b	t
19	11	85	4800	Proxima Beta	160.00	Moon orbiting Proxima b	f
20	12	75	2000	Vega Moon	150.00	Moon orbiting Vega I	t
\.


--
-- Data for Name: more_informations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.more_informations (more_informations_id, name, date, contributors) FROM stdin;
1	Earth	2020	120
2	Mars	2018	80
3	Venus	2015	60
4	Mercury	2019	40
5	Proxima b	2021	25
6	Vega I	2022	30
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (star_id, planet_id, name, number_of_habitants, age, radius, desription, is_ending) FROM stdin;
1	1	Earth	8000	4500	637.00	Our home planet	f
1	2	Mars	0	4600	339.00	The red planet	f
1	3	Venus	0	4600	605.00	Hot and hostile planet	t
1	4	Mercury	0	4600	244.00	Closest planet to the Sun	f
2	5	Betelgeuse I	0	2000	700.00	Gas giant orbiting Betelgeuse	t
2	6	Betelgeuse II	0	1500	500.00	Rocky planet orbiting Betelgeuse	f
3	7	Sirius A I	0	3000	450.00	Planet around Sirius A	f
3	8	Sirius A II	0	2500	350.00	Second planet around Sirius A	f
4	9	Rigel I	0	4000	600.00	Large planet orbiting Rigel	t
4	10	Rigel II	0	3500	550.00	Smaller planet orbiting Rigel	f
5	11	Proxima b	0	4800	700.00	Exoplanet near Proxima Centauri	f
6	12	Vega I	0	2000	500.00	Planet orbiting Vega	f
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, age, radius, quantity_of_energy, furture_explosion, closer, galaxy_id, description) FROM stdin;
1	Sun	4600	696340	9999.99	f	t	1	Our star, center of the solar system
2	Betelgeuse	8000	887000	8500.50	t	f	2	Red supergiant in Orion
3	Sirius	242	1189640	7200.75	f	t	1	Brightest star in the night sky
4	Rigel	8000	780000	6500.20	t	f	2	Blue supergiant in Orion
5	Proxima Centauri	4850	100000	4800.00	f	t	1	Closest star to the Sun
6	Vega	455	2030000	3500.10	f	f	3	Bright star in Lyra constellation
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: more_informations_more_informations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_informations_more_informations_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


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
-- Name: moon moon_mame_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_mame_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_informations more_informations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_informations
    ADD CONSTRAINT more_informations_name_key UNIQUE (name);


--
-- Name: more_informations more_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_informations
    ADD CONSTRAINT more_informations_pkey PRIMARY KEY (more_informations_id);


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
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: more_informations more_informations_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_informations
    ADD CONSTRAINT more_informations_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


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

