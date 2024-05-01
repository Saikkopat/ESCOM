--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
-- Name: cliente; Type: TABLE; Schema: public; Owner: alumno
--

CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    nombre character varying(50),
    primerapellido character varying(50),
    segundoapellido character varying(50),
    rfc character varying(50),
    telefono character varying(50),
    correo character varying(200),
    direccion_pais character varying(100),
    direccion_estado character varying(100),
    direccion_delegacion character varying(100),
    direccion_colonia character varying(100),
    direccion_calle character varying(100),
    direccion_numeroext character varying(100),
    direccion_numeroint character varying(100),
    direccion_cp character varying(6),
    credito numeric(10,4),
    deuda numeric(10,4),
    credito_disponible numeric(10,4)
);


ALTER TABLE public.cliente OWNER TO alumno;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: alumno
--

CREATE TABLE public.producto (
    idproducto integer NOT NULL,
    nombre character varying(50),
    preciocompra numeric(10,4),
    preciosugeridoventa numeric(10,4),
    existencia numeric(10,4),
    idproveedor integer,
    preciominimo numeric(10,4)
);


ALTER TABLE public.producto OWNER TO alumno;

--
-- Name: productovendido; Type: TABLE; Schema: public; Owner: alumno
--

CREATE TABLE public.productovendido (
    idproductovendido integer,
    idventa integer,
    cantidad numeric(10,4),
    precioventa numeric(10,4)
);


ALTER TABLE public.productovendido OWNER TO alumno;

--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: alumno
--

CREATE TABLE public.proveedor (
    idproveedor integer NOT NULL,
    nombre character varying(50),
    telefono character varying(50),
    email character varying(200),
    rfc character varying(10)
);


ALTER TABLE public.proveedor OWNER TO alumno;

--
-- Name: venta; Type: TABLE; Schema: public; Owner: alumno
--

CREATE TABLE public.venta (
    idventa integer NOT NULL,
    fecha date,
    idcliente integer,
    montototal numeric(10,4)
);


ALTER TABLE public.venta OWNER TO alumno;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: alumno
--

COPY public.cliente (idcliente, nombre, primerapellido, segundoapellido, rfc, telefono, correo, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numeroext, direccion_numeroint, direccion_cp, credito, deuda, credito_disponible) FROM stdin;
1	Juan	Perez	Lopez	0101010101	2121212121	jpl@mail.com	Mexico	CDMX	Gustavo A. Madero	Lindavista	Norte 184	55	21	515151	\N	\N	\N
2	Andres	Galicia	Juarez	0202020202	5151515151	agj@mail.com	Mexico	Mexico	Tlalnepantla	Tizayuca	Rio 152	21	75	616161	\N	\N	\N
3	Alexander	Perdomo	Andrade	0303030303	6161616161	apa@mail.com	Mexico	Nezahualcoyolt	Agua azul	Vicente Villada	75	31	700707	\N	\N	\N	\N
5	Emanuel	Reyes	Galaviz	1010101010	4545454545	erg@mail.com	CDMX	Iztacalco	Peñon de los baños	Oriente 150	45	1	55664	\N	\N	\N	\N
4	Juan	Hernandez	Lopez	5050505050	8585858585	jhl@mail.com	Mexico	Nezahualcoyolt	El Sol	Lomas verdes	25	3	56334	\N	\N	\N	\N
6	Eduardo Antonio	Hernandez	Juarez	0606060606	9191919191	eahj@mail.com	Ciudad de Mexico	Iztacalco	Federal	Comisión Nacional Agraria	48	5	71500	\N	\N	\N	\N
7	Eduardo	Acosta	Nuñez	0707070707	1212121212	eanj@mail.com	Ciudad de Mexico	Iztacalco	Moctezuma	Ignacio Zaragoza	585	3	71500	\N	\N	\N	\N
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: alumno
--

COPY public.producto (idproducto, nombre, preciocompra, preciosugeridoventa, existencia, idproveedor, preciominimo) FROM stdin;
2	DVd	900.0000	1500.0000	20.0000	1	1000.0000
3	Celular	1200.0000	2000.0000	3.0000	1	2000.0000
4	Pantalla	10000.0000	15000.0000	5.0000	2	14000.0000
5	BlueRay	5000.0000	5500.0000	10.0000	2	5300.0000
6	Mp3 Player	500.0000	900.0000	13.0000	3	900.0000
7	Compu	11500.0000	19000.0000	15.0000	\N	17000.0000
8	Monitor	11500.0000	19000.0000	10.0000	\N	17000.0000
1	Televisor	3000.0000	5000.0000	30.0000	1	4000.0000
\.


--
-- Data for Name: productovendido; Type: TABLE DATA; Schema: public; Owner: alumno
--

COPY public.productovendido (idproductovendido, idventa, cantidad, precioventa) FROM stdin;
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: alumno
--

COPY public.proveedor (idproveedor, nombre, telefono, email, rfc) FROM stdin;
1	LG	2121212121	lgprov@gmail.com	1010101010
2	Yamaha	3131313131	yamahaprov@gmail.com	0202020202
3	Samsung	4141414141	samsungrov@gmail.com	0303030303
4	Sony	5151515151	sonyprov@gmail.com	0404040404
5	Dell	6161616161	dellprov@gmail.com	0505050505
6	HP	7171717171	hpprov@gmail.com	6060606060
\.


--
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: alumno
--

COPY public.venta (idventa, fecha, idcliente, montototal) FROM stdin;
1	2020-09-15	2	21400.0000
2	2020-09-17	5	16000.0000
3	2020-09-17	2	30000.0000
\.


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (idproducto);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (idproveedor);


--
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (idventa);


--
-- Name: venta fk_idcliente; Type: FK CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_idcliente FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);


--
-- Name: productovendido fk_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.productovendido
    ADD CONSTRAINT fk_idproducto FOREIGN KEY (idproductovendido) REFERENCES public.producto(idproducto);


--
-- Name: producto fk_idproveedor; Type: FK CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_idproveedor FOREIGN KEY (idproveedor) REFERENCES public.proveedor(idproveedor);


--
-- Name: productovendido fk_idventa; Type: FK CONSTRAINT; Schema: public; Owner: alumno
--

ALTER TABLE ONLY public.productovendido
    ADD CONSTRAINT fk_idventa FOREIGN KEY (idventa) REFERENCES public.venta(idventa);


--
-- PostgreSQL database dump complete
--

