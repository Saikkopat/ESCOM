--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.7 (Ubuntu 14.7-0ubuntu0.22.04.1)

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
-- Name: cliente; Type: TABLE; Schema: public; Owner: saikkopat
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
    credito_disponible numeric(10,4),
    fecha_alta timestamp without time zone,
    fecha_nacimiento date
);


ALTER TABLE public.cliente OWNER TO saikkopat;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: saikkopat
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


ALTER TABLE public.producto OWNER TO saikkopat;

--
-- Name: productovendido; Type: TABLE; Schema: public; Owner: saikkopat
--

CREATE TABLE public.productovendido (
    idproductovendido integer,
    idventa integer,
    cantidad numeric(10,4),
    precioventa numeric(10,4)
);


ALTER TABLE public.productovendido OWNER TO saikkopat;

--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: saikkopat
--

CREATE TABLE public.proveedor (
    idproveedor integer NOT NULL,
    nombre character varying(50),
    telefono character varying(50),
    email character varying(200),
    rfc character varying(10)
);


ALTER TABLE public.proveedor OWNER TO saikkopat;

--
-- Name: venta; Type: TABLE; Schema: public; Owner: saikkopat
--

CREATE TABLE public.venta (
    idventa integer NOT NULL,
    fecha date,
    idcliente integer,
    montototal numeric(10,4)
);


ALTER TABLE public.venta OWNER TO saikkopat;

--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: saikkopat
--

COPY public.cliente (idcliente, nombre, primerapellido, segundoapellido, rfc, telefono, correo, direccion_pais, direccion_estado, direccion_delegacion, direccion_colonia, direccion_calle, direccion_numeroext, direccion_numeroint, direccion_cp, credito, deuda, credito_disponible, fecha_alta, fecha_nacimiento) FROM stdin;
1	Juan	Perez	Lopez	0101010101	2121212121	jpl@mail.com	Mexico	CDMX	Gustavo A. Madero	Lindavista	Norte 184	55	21	515151	5000.0000	2500.0000	2500.0000	2023-06-14 17:47:00	1997-07-11
2	Andres	Galicia	Juarez	0202020202	5151515151	agj@mail.com	Mexico	Mexico	Tlalnepantla	Tizayuca	Rio 152	21	75	616161	6000.0000	3000.0000	3000.0000	2023-06-15 18:48:00	1998-08-12
3	Alexander	Perdomo	Andrade	0303030303	6161616161	apa@mail.com	Mexico	Mexico	Nezahualcoyotl	Agua azul	Vicente Villada	75	31	700707	7000.0000	3500.0000	3500.0000	2023-06-16 19:49:00	1999-09-13
4	Juan	Hernandez	Lopez	5050505050	8585858585	jhl@mail.com	Mexico	Nezahualcoyolt	El Sol	Lomas verdes	25	3	56334	\N	8000.0000	4000.0000	4000.0000	2023-06-17 20:50:00	2000-10-14
5	Emanuel	Reyes	Galaviz	1010101010	4545454545	erg@mail.com	Mexico	CDMX	Iztacalco	Peñon de los baños	Oriente 150	45	1	55664	9000.0000	4500.0000	4500.0000	2023-06-18 21:51:00	2001-11-15
15	Arnoldo Emanuel	Echegaray	Robles	4545456666	7777788888	aeer@mail.com	Mexico	CDMX	Cuauhtemoc	Centro	16 de Septiembre	35	2	74833	3000.0000	1000.0000	2000.0000	2023-06-28 16:01:00	1975-09-25
16	Juan Andres	Alvarado	Garcia	3131314565	55214848484	jaag@mail.com	Mexico	CDMX	Milpa Alta	Pueblo nuevo	Milpa	21	4	83354	4000.0000	1500.0000	2500.0000	2023-06-29 17:02:00	1976-10-26
17	Guadalupe	Alvarado	Nisman	2121215454	5656565555	gan@mail.com	Mexico	CDMX	Magdalena Contreras	Equinocio	Saturno	45	2	99966	2500.0000	500.0000	2000.0000	2023-06-30 18:03:00	1977-11-27
9	Elio	Pez	Prado	0909090909	9999999999	eppj@mail.com	Mexico	Mexico	Nezahualcoyotl	Estado de Mexico	Cuauhtemoc	2	10	57500	13000.0000	6500.0000	6500.0000	2023-06-22 10:55:00	2005-03-19
12	Daniel	Valencia	Herrera	2828282929	6855050789	dvh@mail.com	Mexico	Mexico	Tlalneplantla	Viveros	Viveros	2	10	58339	4500.0000	2000.0000	2500.0000	2023-06-25 13:58:00	1972-06-22
13	Guadalupe	Ambriz	Garcia	4848484848	2525252525	gag@mail.com	Mexico	Morelos	Emiliano Zapata	Azucar	Prolongacion 1	75	25	48948	3500.0000	1500.0000	2000.0000	2023-06-26 14:59:00	1973-07-23
14	Hermenegildo	Perez	Asuncion	6262626262	3131313131	hpa@mail.com	Mexico	Puebla	Izucar de Matamoros	Terron de azucar	Avenida 75	48	3	77745	4000.0000	1000.0000	3000.0000	2023-06-27 15:00:00	1974-08-24
6	Eduardo Antonio	Hernandez	Juarez	0606060606	9191919191	eahj@mail.com	Mexico	CDMX	Iztacalco	Federal	Comisión Nacional Agraria	48	5	71500	10000.0000	5000.0000	5000.0000	2023-06-19 22:52:00	2002-12-16
7	Eduardo	Acosta	Nuñez	0707070707	1212121212	eanj@mail.com	Mexico	CDMX	Iztacalco	Moctezuma	Ignacio Zaragoza	585	3	71500	11000.0000	5500.0000	5500.0000	2023-06-20 23:53:00	2003-01-17
8	Andres	Garcia	Rodriguez	0808080808	1313131313	agr@mail.com	Mexico	CDMX	Iztapalapa	Cerro de la estrella	Miguel Angel Andor	315	16	82100	12000.0000	6000.0000	6000.0000	2023-06-21 09:54:00	2004-02-18
10	Maria	Cardona	Velez	1515151516	21212127274	mcv@mail.com	Mexico	CDMX	Iztacalco	Federal	Hacienda y credito	28	29	50700	14000.0000	7000.0000	7000.0000	2023-06-23 11:56:00	1970-04-20
11	Filomeno	Guevara	Monroy	2121212121	7878787878	fgm@mail.com	Mexico	CDMX	Milpa Alta	Rancho 1	Camino 2	1	1	66800	15000.0000	7500.0000	7500.0000	2023-06-24 12:57:00	1971-05-21
18	Abril	Govea	Fernandez	777774848	2121213333	agf@mail.com	Mexico	CDMX	GAM	La escalera	Saturno	33	1	74747	23000.0000	11500.0000	11500.0000	2023-07-01 19:04:00	1978-12-28
19	Abril	Perez	Ramirez	2727274848	2121212626	apr@mail.com	Mexico	CDMX	Gustavo A Madero	La escalera	Neptuno	48	1	68685	24000.0000	12000.0000	12000.0000	2023-07-02 20:05:00	1979-01-29
20	Rosa	Mercacho	Rosales	5454546666	7778889999	rmr@mail.com	Mexico	CDMX	Coyoacan	Xico	Pueblo nuevo	15	33	484845	25000.0000	12500.0000	12500.0000	2023-07-03 21:06:00	1980-02-28
21	Federico	Buenrostro	Buenabarra	2126181313	666665551	fbb@mail.com	Mexico	CDMX	Coyoacan	Xoco	Pueblo viejo	5	3	484845	40000.0000	20000.0000	20000.0000	2023-06-14 20:27:30.57728	1970-05-31
22	Jacinda 	Ardern 	\N	\N	\N	\N	Nueva Zelanda	Wellington 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:04:00	1980-07-26
23	Dan 	Schulman 	\N	\N	\N	\N	Estados Unidos 	New Jersey 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:04:00	1958-01-01
24	John 	Nkengasong 	\N	\N	\N	\N	Cameroon 	Yaoundé 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:04:00	1960-01-01
25	Jessica 	Tan 	\N	\N	\N	\N	Singapur 	 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:04:00	1972-01-01
26	Justin 	Welby 	\N	\N	\N	\N	Reino Unido 	London 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:05:00	1956-01-06
27	Stacey 	Abrams 	\N	\N	\N	\N	Estados Unidos 	Georgia 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:05:00	1973-12-09
28	Reshorna 	Fitzpatrick 	\N	\N	\N	\N	Estados Unidos 	Illinois 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:05:00	1970-01-01
29	Adar 	Poonawalla 	\N	\N	\N	\N	India 	Calcuta 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:05:00	1981-01-14
30	Dolly 	Parton 	\N	\N	\N	\N	Estados Unidos 	Tennessee 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:05:00	1946-01-19
31	Mike 	Sommers 	\N	\N	\N	\N	Estados Unidos 	Washington D.C. 	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 21:06:00	1970-01-01
32	Eduardo	Martinez	\N	\N	\N	\N	Estados Unidos	Alabama	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 22:07:10.374049	1971-02-14
33	Blanca	Silvia	\N	\N	\N	\N	Rusia	Crimea	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 22:12:55.121297	1984-05-11
34	Ismael	Rodriguez	\N	\N	\N	\N	Rusia	Moscu	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 22:12:55.195944	1998-07-21
35	Xi	Paz	\N	\N	\N	\N	China	Pekin	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 22:17:23.628817	1966-12-13
36	Zhang	\N	Paz	\N	\N	\N	China	Taiwan	\N	\N	\N	\N	\N	\N	\N	\N	\N	2023-06-14 22:17:43.400996	1999-10-31
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: saikkopat
--

COPY public.producto (idproducto, nombre, preciocompra, preciosugeridoventa, existencia, idproveedor, preciominimo) FROM stdin;
9	Refrigerador	6000.0000	9000.0000	25.0000	5	7000.0000
10	Congelador	7000.0000	10000.0000	30.0000	10	8000.0000
11	Horno	8000.0000	11000.0000	35.0000	15	9000.0000
12	Microondas	9000.0000	12000.0000	40.0000	20	10000.0000
13	Tostadora	10000.0000	13000.0000	45.0000	1	11000.0000
14	Lavavajillas	11000.0000	14000.0000	50.0000	2	12000.0000
15	Lavadora	12000.0000	15000.0000	55.0000	3	13000.0000
16	Secadora	13000.0000	16000.0000	60.0000	4	14000.0000
17	Cafetera	14000.0000	17000.0000	65.0000	5	15000.0000
18	Aspiradora	15000.0000	18000.0000	70.0000	6	16000.0000
19	Licuadora	16000.0000	19000.0000	75.0000	7	17000.0000
20	Procesador de alimentos	17000.0000	20000.0000	80.0000	8	18000.0000
21	Olla instantánea	18000.0000	21000.0000	85.0000	9	19000.0000
22	Arrocera	19000.0000	22000.0000	90.0000	10	20000.0000
23	Olla de cocción lenta	20000.0000	23000.0000	95.0000	11	21000.0000
24	Batidora de pie	21000.0000	24000.0000	100.0000	12	22000.0000
25	Exprimidor	22000.0000	25000.0000	105.0000	13	23000.0000
26	Gofrera	23000.0000	26000.0000	110.0000	14	24000.0000
27	Máquina de pan	24000.0000	27000.0000	115.0000	15	25000.0000
28	Máquina de helados	25000.0000	28000.0000	120.0000	16	260000.0000
2	DVd	900.0000	1500.0000	20.0000	4	1000.0000
3	Celular	1200.0000	2000.0000	3.0000	13	2000.0000
4	Pantalla	10000.0000	15000.0000	5.0000	2	14000.0000
5	BlueRay	5000.0000	5500.0000	10.0000	2	5300.0000
7	Compu	11500.0000	19000.0000	15.0000	5	17000.0000
8	Monitor	11500.0000	19000.0000	10.0000	\N	17000.0000
1	Televisor	3000.0000	5000.0000	30.0000	1	4000.0000
29	Teclado	11500.0000	\N	10.0000	3	17000.0000
30	RAM	11500.0000	\N	10.0000	3	17000.0000
31	Disco Duro	11500.0000	\N	10.0000	3	17000.0000
\.


--
-- Data for Name: productovendido; Type: TABLE DATA; Schema: public; Owner: saikkopat
--

COPY public.productovendido (idproductovendido, idventa, cantidad, precioventa) FROM stdin;
9	4	2.0000	2000.0000
10	5	3.0000	3000.0000
11	6	4.0000	4000.0000
9	7	5.0000	5000.0000
13	8	6.0000	6000.0000
11	9	7.0000	7000.0000
15	10	8.0000	8000.0000
18	11	9.0000	9000.0000
17	12	10.0000	10000.0000
9	13	1.0000	11000.0000
19	14	2.0000	12000.0000
20	15	3.0000	13000.0000
21	16	4.0000	14000.0000
23	18	6.0000	16000.0000
12	19	7.0000	17000.0000
23	20	8.0000	18000.0000
9	21	9.0000	19000.0000
10	22	10.0000	20000.0000
15	23	1.0000	21000.0000
14	17	5.0000	15000.0000
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: saikkopat
--

COPY public.proveedor (idproveedor, nombre, telefono, email, rfc) FROM stdin;
1	LG	2121212121	lgprov@gmail.com	1010101010
2	Yamaha	3131313131	yamahaprov@gmail.com	0202020202
3	Samsung	4141414141	samsungrov@gmail.com	0303030303
4	Sony	5151515151	sonyprov@gmail.com	0404040404
5	Dell	6161616161	dellprov@gmail.com	0505050505
6	HP	7171717171	hpprov@gmail.com	6060606060
7	Miele	7272727272	mieleprov@gmail.com	6161616161
8	Taurus	7373737373	taurusprov@gmail.com	6262626262
9	Teka	7474747474	tekaprov@gmail.com	6363636363
10	Daewoo	7575757575	daewooprov@gmail.com	6464646464
11	Bosch	7676767676	boschprov@gmail.com	6565656565
12	Whirlpool	7777777777	whirlpoolprov@gmail.com	6666666666
13	Samsung	7878787878	samsungprov@gmail.com	6767676767
14	Koblenz	7979797979	koblenzprov@gmail.com	6868686868
15	DeWalt	8080808080	dewaltprov@gmail.com	6969696969
16	Solaris	8181818181	solarisprov@gmail.com	7070707070
17	Panasonic	8282828282	panasonicprov@gmail.com	7171717171
18	Mabe	8383838383	mabeprov@gmail.com	7272727272
19	Haier	8484848484	haierprov@gmail.com	7373737373
20	Sunbeam	8585858585	sunbeamprov@gmail.com	7474747474
\.


--
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: saikkopat
--

COPY public.venta (idventa, fecha, idcliente, montototal) FROM stdin;
4	2023-04-03	1	40400.0000
5	2020-09-15	2	21400.0000
6	2021-10-16	3	22400.0000
7	2022-11-17	4	23400.0000
8	2023-12-18	5	24400.0000
9	2020-01-19	6	25400.0000
10	2021-02-20	7	26400.0000
11	2022-03-21	8	27400.0000
12	2023-04-22	9	28400.0000
13	2020-05-23	10	29400.0000
14	2021-06-24	11	30400.0000
15	2022-07-25	12	31400.0000
16	2023-08-26	13	32400.0000
17	2020-09-27	14	33400.0000
18	2021-10-28	15	34400.0000
19	2022-11-29	16	35400.0000
20	2023-12-30	17	36400.0000
21	2020-01-31	18	37400.0000
22	2021-02-01	19	38400.0000
23	2022-03-02	20	39400.0000
1	2020-09-15	2	21400.0000
2	2020-09-17	5	16000.0000
3	2020-09-17	2	30000.0000
\.


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (idproducto);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (idproveedor);


--
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (idventa);


--
-- Name: venta fk_idcliente; Type: FK CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.venta
    ADD CONSTRAINT fk_idcliente FOREIGN KEY (idcliente) REFERENCES public.cliente(idcliente);


--
-- Name: productovendido fk_idproducto; Type: FK CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.productovendido
    ADD CONSTRAINT fk_idproducto FOREIGN KEY (idproductovendido) REFERENCES public.producto(idproducto);


--
-- Name: producto fk_idproveedor; Type: FK CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_idproveedor FOREIGN KEY (idproveedor) REFERENCES public.proveedor(idproveedor);


--
-- Name: productovendido fk_idventa; Type: FK CONSTRAINT; Schema: public; Owner: saikkopat
--

ALTER TABLE ONLY public.productovendido
    ADD CONSTRAINT fk_idventa FOREIGN KEY (idventa) REFERENCES public.venta(idventa);


--
-- PostgreSQL database dump complete
--

