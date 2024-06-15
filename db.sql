--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: PaymentMethods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PaymentMethods" (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL
);


ALTER TABLE public."PaymentMethods" OWNER TO postgres;

--
-- Name: Regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Regions" (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL
);


ALTER TABLE public."Regions" OWNER TO postgres;

--
-- Name: Transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Transactions" (
    "Id" uuid NOT NULL,
    "TransactionId" integer NOT NULL,
    "Date" date NOT NULL,
    "ProductName" text NOT NULL,
    "UnitsSold" integer NOT NULL,
    "UnitPrice" numeric NOT NULL,
    "TotalRevenue" numeric NOT NULL,
    "RegionId" uuid NOT NULL,
    "PaymentMethodId" uuid NOT NULL
);


ALTER TABLE public."Transactions" OWNER TO postgres;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- Data for Name: PaymentMethods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PaymentMethods" ("Id", "Name") FROM stdin;
42dcaab1-dd81-4b82-a047-818ca878c2cc	Debit Card
de32003e-9345-49fc-b4e8-6dd8cbf0e6fa	Credit Card
f53f1b55-b55f-457e-94db-5d2756df31ec	PayPal
\.


--
-- Data for Name: Regions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Regions" ("Id", "Name") FROM stdin;
36405f3f-cb03-4775-8d2f-6cd0998589dd	Europe
6e5c2dbc-8960-40ce-a74e-f9821a72bdce	Asia
cbcb619c-192b-4148-8647-a84f0751b6c2	North America
\.


--
-- Data for Name: Transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Transactions" ("Id", "TransactionId", "Date", "ProductName", "UnitsSold", "UnitPrice", "TotalRevenue", "RegionId", "PaymentMethodId") FROM stdin;
0022b3cc-1bdb-4f22-ab0a-cb82e2037c91	10016	2024-01-16	Salt, Fat, Acid, Heat by Samin Nosrat	3	35.99	107.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
02486787-43fb-498d-afff-9a9b56b4363e	10196	2024-07-14	The Road by Cormac McCarthy	2	11.99	23.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
044964d1-d4cc-45c5-80b5-b1b329ba3f1e	10113	2024-04-22	Biore UV Aqua Rich Watery Essence Sunscreen	1	15	15	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
04f00a60-a294-45e2-82cc-02dbc7a81dd8	10154	2024-06-02	The Night Circus by Erin Morgenstern	2	16.99	33.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
052108f8-05b9-4ee6-8a05-055453e9c853	10149	2024-05-28	Laneige Water Sleeping Mask	1	25	25	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
05429f78-0aa0-4658-b9ee-b7f6e00d5a5d	10034	2024-02-03	1984 by George Orwell	4	19.99	79.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
0759039c-f5f7-4842-b665-97c65d0dfb34	10083	2024-03-23	Charlotte Tilbury Magic Cream	1	100	100	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
0792a382-deec-4cea-96b6-ba2b71691776	10166	2024-06-14	The Hunger Games by Suzanne Collins	4	8.99	35.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
079bd6b9-00a1-4453-be4a-7316c4b31bc8	10170	2024-06-18	Instant Pot Duo Evo Plus	2	139.99	279.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
07d3ab45-4752-4e56-a940-c032a6481cf4	10052	2024-02-21	The Silent Patient by Alex Michaelides	2	26.99	53.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
082e8601-d177-4e65-a591-ecb4cbef1e49	10049	2024-02-18	Kindle Paperwhite	2	129.99	259.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
08654f77-640f-45cf-acc0-53719e761fe1	10164	2024-06-12	Cuisinart Custom 14-Cup Food Processor	1	199.99	199.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
09ca746c-3419-45f6-a4ab-f8196c2720ff	10238	2024-08-25	The Handmaid's Tale by Margaret Atwood	3	10.99	32.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
0a76df16-48af-4f34-828a-d7597b8795be	10010	2024-01-10	Dune by Frank Herbert	2	25.99	51.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
0c1f6fa9-eabb-453f-8272-b8f88cc96eb2	10004	2024-01-04	The Da Vinci Code	4	15.99	63.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
0c75679a-831d-4b73-bd29-e7097b9a663f	10208	2024-07-26	The Great Alone by Kristin Hannah	3	16.99	50.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
0d7a87bd-b169-4a80-a218-30ddcd0b4dee	10174	2024-06-22	Bowflex SelectTech 1090 Adjustable Dumbbells	1	699.99	699.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
0ed29466-8850-4d1c-918c-9ca733a389e9	10073	2024-03-13	HP Spectre x360 Laptop	1	1599.99	1599.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
110cd495-9fe5-46c1-98b5-71407dee3f7c	10077	2024-03-17	Glossier Boy Brow	2	16	32	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
12d25418-945d-4113-b9a7-c0a7fb6e8b6f	10222	2024-08-09	Garmin Forerunner 945	1	599.99	599.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
142ef1ca-d091-4338-8771-af32b8deed70	10223	2024-08-10	Amazon Echo Dot (4th Gen)	4	49.99	199.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
14486a69-30ad-4960-b48b-3c0b703dcc29	10133	2024-05-12	Microsoft Surface Laptop 4	1	1299.99	1299.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
15e1a305-1556-46c5-bc76-1fa1c0723aab	10140	2024-05-19	Instant Pot Ultra	1	139.99	139.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
15e4bf64-21fa-4d63-8289-6a82ac3f3a75	10168	2024-06-16	Yeti Rambler Bottle	3	49.99	149.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
1b56e161-a694-48cb-8c32-3321a4e4ddc4	10008	2024-01-08	Blueair Classic 480i	2	599.99	1199.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
1b9b2fc2-54b7-4485-a476-92bc5d722024	10059	2024-02-28	Anastasia Beverly Hills Brow Wiz	2	23	46	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
1bb79eae-dcdd-4284-9a53-450cfb197332	10064	2024-03-04	Where the Crawdads Sing by Delia Owens	4	18.99	75.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
20c91c77-6673-417e-b9a3-d5d52d57956a	10041	2024-02-10	Estee Lauder Advanced Night Repair	1	105	105	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
211f22d8-9f49-4d81-9df8-1b63e322c3f3	10227	2024-08-14	The Ordinary Caffeine Solution 5% + EGCG	1	6.7	6.7	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
2158939e-d919-4190-b820-ac30aa4b680e	10190	2024-07-08	The Catcher in the Rye by J.D. Salinger	3	10.99	32.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
24febf85-9a1e-4b16-9532-f3c0c9af3962	10061	2024-03-01	Nintendo Switch	3	299.99	899.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
25412fcb-c3bd-4988-bb28-d8f3266025b2	10157	2024-06-05	Google Pixel 6 Pro	1	899.99	899.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
275b8606-53ca-46c2-b0fd-4ddfc301ab9a	10055	2024-02-24	Anker PowerCore Portable Charger	4	59.99	239.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
27ead59a-3d30-4d1d-b289-1673bfc66074	10209	2024-07-27	Caudalie Vinoperfect Radiance Serum	1	79	79	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
2803f1be-d57b-40a3-ae6f-75e576fddc3c	10090	2024-03-30	On Running Cloud Shoes	2	129.99	259.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
284b9d5a-e424-42ed-87b2-121d5f9ef952	10225	2024-08-12	Old Navy Mid-Rise Rockstar Super Skinny Jeans	2	44.99	89.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
2972e7c3-16fa-4791-9258-0b968a554d84	10031	2024-01-31	Sony WH-1000XM4 Headphones	2	349.99	699.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
2a3c2d60-8856-499b-8eb6-5f9a4f136146	10103	2024-04-12	Canon EOS R5 Camera	1	3899.99	3899.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
2baf15d1-f878-4b42-8bdf-53fa675962bd	10072	2024-03-12	Nike Metcon 6	3	129.99	389.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
2bf77cf5-45d1-4cf3-a876-1e78ed7455b7	10229	2024-08-16	Google Nest Wifi Router	1	169	169	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
2de963fa-2ee7-4ebd-b2f3-2034b1818415	10075	2024-03-15	Tommy Hilfiger Polo Shirt	5	49.99	249.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
2fcefefc-d8dd-4458-b80b-a92e36dafec1	10184	2024-07-02	The Martian by Andy Weir	2	12.99	25.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
2fef2ac6-e88a-497f-b913-c80881ad44a8	10180	2024-06-28	Oakley Holbrook Sunglasses	1	146	146	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
3080b5c5-8d98-4525-85d6-699e39d969b1	10216	2024-08-03	YETI Tundra 65 Cooler	1	349.99	349.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
31b02750-b190-47d1-b389-c6ad997c12fd	10205	2024-07-23	Samsung Galaxy Watch 4	1	299.99	299.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
31b697e5-2251-44bd-95fe-e76bc58ec06a	10215	2024-08-02	L'Occitane Shea Butter Hand Cream	2	29	58	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
31d07e63-0734-4a4e-a905-dbf9b12cc81b	10137	2024-05-16	The Ordinary Hyaluronic Acid Serum	1	6.8	6.8	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
32355020-a43b-42dd-a8a9-891e20965673	10188	2024-07-06	Anova Precision Cooker	2	199	398	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
33fd988e-36d8-4679-800c-f4ca3864fd5e	10171	2024-06-19	Nike Tempo Running Shorts	3	34.99	104.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
347480c9-af5a-486c-9aa6-e672e6631c2f	10067	2024-03-07	Samsung QLED 4K TV	1	1199.99	1199.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
3960e8ef-bdf9-453a-92a5-ac8706d16ddc	10040	2024-02-09	Harry Potter and the Sorcerer's Stone	3	24.99	74.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
39beb81b-729c-41da-b177-c5d033c00b43	10045	2024-02-14	Patagonia Better Sweater	2	139.99	279.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
39febef5-f488-4f06-b344-6ee8201dc303	10198	2024-07-16	GoPro HERO9 Black	1	449.99	449.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
3a3f97b9-6c78-435d-bed4-89b4a6f6a0bf	10036	2024-02-05	Peloton Bike	1	1895	1895	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
3a6c8458-b7c9-4d43-9ee0-b7467cebfbdc	10110	2024-04-19	Cuisinart Griddler Deluxe	1	159.99	159.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
3a92c0ed-4a9a-4b37-91f6-c733be9e92f8	10187	2024-07-05	Sonos Beam Soundbar	1	399	399	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
3b7d8348-8742-4713-aaf3-1e347391640d	10146	2024-05-25	Cuisinart Coffee Center	2	199.95	399.9	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
3dcda33f-c1eb-434b-9817-c5baf9bccd98	10099	2024-04-08	Gap Essential Crewneck T-Shirt	6	19.99	119.94	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
3e0bdaba-b867-410a-ad8f-ff728b307984	10006	2024-01-06	Wilson Evolution Basketball	5	29.99	149.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
3f4a8717-669a-40bd-a06e-ae811e4dd01d	10094	2024-04-03	The Alchemist by Paulo Coelho	3	14.99	44.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
4002e6ff-835b-4560-8645-b5101a7940b9	10186	2024-07-04	Polar Vantage V2	1	499.95	499.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
43d889d5-7465-474e-b343-41f263430a21	10056	2024-02-25	KitchenAid Artisan Stand Mixer	1	499.99	499.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
441456c3-4d9f-430e-9a13-0d215854d15c	10015	2024-01-15	North Face Down Jacket	2	249.99	499.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
443370a9-92c8-434a-8fd6-5fd1d8926c60	10093	2024-04-02	Adidas Originals Superstar Sneakers	4	79.99	319.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
44523609-3b88-4066-b924-a8b7bcb59eb6	10218	2024-08-05	iRobot Braava Jet M6	1	449.99	449.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
447edd42-3e25-4f81-b2a0-468d0b942112	10206	2024-07-24	KitchenAid Stand Mixer	1	379.99	379.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
45ad4196-c88e-4415-a4ab-509db80aeda4	10179	2024-06-27	First Aid Beauty Ultra Repair Cream	2	34	68	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
45f3033f-0376-4c74-a824-5775033afea1	10194	2024-07-12	Breville Smart Coffee Grinder Pro	1	199.95	199.95	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
47783037-d55c-43e0-af9a-104752a80856	10231	2024-08-18	Adidas Originals Trefoil Hoodie	4	64.99	259.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
4b9e8d02-e574-4057-a197-0856c9eca95f	10139	2024-05-18	Samsung Odyssey G9 Gaming Monitor	1	1499.99	1499.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
4c06d943-54a2-4395-b330-7f3d42586bdb	10144	2024-05-23	YETI Tundra 45 Cooler	1	299.99	299.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
4caf5386-0a3b-4367-a3ae-8797acbb46ac	10046	2024-02-15	Becoming by Michelle Obama	4	32.5	130	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
4dbd4d66-eda0-4525-93cc-b17c1c851d51	10115	2024-04-24	Amazon Echo Show 10	1	249.99	249.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
4e1537a7-3140-4d33-8e1a-c3ac8686b6cc	10126	2024-05-05	Yeti Roadie 24 Cooler	1	199.99	199.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
51890046-409f-4b20-ac56-968c28c18c12	10181	2024-06-29	Google Pixelbook Go	1	649.99	649.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
52eae5d8-dcf7-41f4-9ae2-63badde8f93c	10152	2024-05-31	Ninja Foodi Pressure Cooker	2	199.99	399.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
52fc4e0e-1a5b-4322-8c18-29130f89438f	10141	2024-05-20	Adidas Essential Track Pants	3	44.99	134.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
535ac98d-fb56-4cc0-bf06-4e82321cd19c	10151	2024-05-30	Sony WH-1000XM4 Headphones	1	349.99	349.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
53a79cca-143a-4efd-900d-14ad064326b9	10129	2024-05-08	Lululemon Align Leggings	3	98	294	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
56fa0f53-6a15-446a-985d-081835101a29	10018	2024-01-18	Manduka PRO Yoga Mat	4	119.99	479.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
5766e9fe-ae22-41cc-8935-7d2bc2711e99	10148	2024-05-27	The Outsiders by S.E. Hinton	3	10.99	32.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
5789d56f-c4f3-4eb6-9be3-9f70c96b3b2a	10142	2024-05-21	The Power of Habit by Charles Duhigg	2	11.99	23.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
582f0180-7389-4aff-997f-6adc87328b0a	10109	2024-04-18	Google Nest Hub Max	2	229.99	459.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
598a1cfe-540d-4da2-ad24-fe26e9ada2ea	10204	2024-07-22	Yeti Tundra Haul Portable Wheeled Cooler	1	399.99	399.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
5a72a3d2-8f6b-477a-80c7-847906344b0f	10167	2024-06-15	Neutrogena Hydro Boost Water Gel	1	16.99	16.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
5af5dc8c-a294-464a-bc93-e1a1344bd63d	10027	2024-01-27	Adidas Ultraboost Shoes	2	179.99	359.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
5c037cb8-d4b5-4090-9369-42f9e1754394	10065	2024-03-05	Lancome La Vie Est Belle	1	102	102	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
5cc0ce1a-7ee8-4f9d-be80-e38b037ee9a7	10173	2024-06-21	Paula's Choice Skin Perfecting 2% BHA Liquid Exfoliant	1	29.5	29.5	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
5e151edf-c3d9-4650-9ac1-17e181142d57	10042	2024-02-11	Fitbit Charge 5	2	129.99	259.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
5e692b3f-da63-426a-8937-c4409bee694e	10118	2024-04-27	Atomic Habits by James Clear	4	16.99	67.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
5ee0ac10-b36e-417e-8e6c-f03127919883	10039	2024-02-08	Columbia Fleece Jacket	4	59.99	239.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
5f45dac8-dfff-4939-958b-f6c464ff5833	10086	2024-03-26	LG OLED TV	2	1299.99	2599.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
5fbcdc60-3ca9-4dae-9863-89c130e65ff3	10025	2024-01-25	Bose QuietComfort 35 Headphones	1	299.99	299.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
629fd58f-8e47-4c1b-81f7-10a3e5ed6d9b	10202	2024-07-20	The Goldfinch by Donna Tartt	2	14.99	29.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
62a1f1d3-24c5-423b-93a9-6bedebbbb50c	10177	2024-06-25	Uniqlo Airism Mesh Boxer Briefs	4	14.9	59.6	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
631b7e60-953a-4376-a8ea-cfed81c8eb8f	10193	2024-07-11	Logitech G Pro X Wireless Gaming Headset	1	199.99	199.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
636c1964-3b2d-4a8d-8dc0-ff36720789a2	10147	2024-05-26	Levi's Sherpa Trucker Jacket	2	98	196	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
64a583bf-c95e-4114-bd3e-d08f68b2ad85	10098	2024-04-07	Vitamix Explorian Blender	1	349.99	349.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
6565e922-700b-4feb-a501-cdc49c58030c	10217	2024-08-04	Apple MacBook Pro 16-inch	1	2399	2399	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
65b68724-9988-40f9-bc05-05ad4be88e89	10017	2024-01-17	Dyson Supersonic Hair Dryer	1	399.99	399.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
682a0500-db2e-4885-8ff1-b337d8cb5e83	10087	2024-03-27	Uniqlo Ultra Light Down Jacket	3	79.99	239.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
683a530b-0acb-4f10-801d-696b215514a5	10127	2024-05-06	Sony PlayStation 5	1	499.99	499.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
6a79eb2c-c7c1-4490-b3ed-ef9d82922bfc	10197	2024-07-15	Tom Ford Black Orchid Perfume	1	125	125	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
6ac98b52-cc32-45dd-902a-3afac77d0f4d	10007	2024-01-07	MacBook Pro 16-inch	1	2499.99	2499.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
6bcbfe3e-71cc-4155-88ac-faad74b7d355	10081	2024-03-21	Levi's Trucker Jacket	2	89.99	179.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
6d8e85f9-21df-4c30-808e-8ecc5ac5a21d	10080	2024-03-20	Dyson Pure Cool Link	1	499.99	499.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
6ef4ae64-ef6a-4d02-88cb-3e3cbd14c69d	10108	2024-04-17	Bowflex SelectTech 552 Dumbbells	1	399.99	399.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
6f537f60-d2a1-4694-bceb-7fa2f56070b0	10211	2024-07-29	Canon EOS Rebel T7i DSLR Camera	1	749.99	749.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
7121d680-4d8e-464f-9e92-2ed675d76990	10043	2024-02-12	GoPro HERO10 Black	3	399.99	1199.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
715d9d83-6965-4325-9141-81f2a52f56b6	10014	2024-01-14	Keurig K-Elite Coffee Maker	1	189.99	189.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
726d0f8f-42dc-4c95-862f-53ee0c93c9d4	10131	2024-05-10	Fenty Beauty Killawatt Highlighter	1	36	36	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
729f802c-fe09-461d-bd34-517a468a0b37	10070	2024-03-10	The Great Gatsby by F. Scott Fitzgerald	2	10.99	21.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
72b63d2e-9a1e-499f-8ea2-25557719cd05	10062	2024-03-02	Philips Airfryer XXL	2	199.99	399.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
72c7b090-aaa1-4aec-8fd4-b774ac8a2e54	10082	2024-03-22	The Hobbit by J.R.R. Tolkien	3	12.99	38.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
744b7b34-c5b9-47f5-8329-101fd50b65d3	10111	2024-04-20	Old Navy Relaxed-Fit T-Shirt	4	14.99	59.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
7586f005-3a26-4293-ad5d-a75755566279	10162	2024-06-10	TriggerPoint GRID Foam Roller	2	34.99	69.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
75b152a8-8bbe-4d72-8896-c3b5add82991	10101	2024-04-10	Kiehl's Midnight Recovery Concentrate	1	82	82	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
75ce0f14-8447-4ef9-9f1e-f52776815d27	10084	2024-03-24	Spalding NBA Street Basketball	6	24.99	149.94	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
7714a52f-8f8a-47dd-a044-d7e01710cf79	10060	2024-02-29	Hyperice Hypervolt Massager	1	349	349	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
777fa241-753c-415d-98ee-c2aa9bf11308	10183	2024-07-01	Levi's 511 Slim Fit Jeans	3	59.99	179.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
79a3ef3f-62a2-4876-90f6-89be27e8902a	10163	2024-06-11	Apple MacBook Air	1	1199.99	1199.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
7b18b1ae-db48-4441-9a61-103d8a18c4d1	10130	2024-05-09	The Four Agreements by Don Miguel Ruiz	2	8.99	17.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
7ec3a1d9-3bab-4bed-904f-146ed09c1841	10165	2024-06-13	Adidas 3-Stripes Shorts	5	29.99	149.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
7f66fc41-5598-4abe-a753-2700661e27e4	10125	2024-05-04	NARS Radiant Creamy Concealer	1	30	30	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
7faf8468-bb72-493a-9b07-025faf3c71ff	10074	2024-03-14	De'Longhi Magnifica Espresso Machine	1	899.99	899.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
7ff74bd0-c2f6-4091-a0d9-379cc56caec1	10024	2024-01-24	Adidas FIFA World Cup Football	3	29.99	89.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
809002a6-f2cc-441a-adeb-ea2de4b2445a	10102	2024-04-11	Under Armour HOVR Sonic 4 Shoes	2	109.99	219.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
814f9cdf-9ad5-4de3-811f-06f065b4fe16	10051	2024-02-20	Ray-Ban Aviator Sunglasses	3	154.99	464.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
838a76b7-a343-40a0-82f6-265f7d9f95ee	10230	2024-08-17	Anova Precision Oven	1	599	599	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
838f7a4d-299e-4383-83e2-845af61a5c45	10176	2024-06-24	Crock-Pot 6-Quart Slow Cooker	2	49.99	99.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
83a9a129-3758-48f3-a4ad-7165d93a7de1	10032	2024-02-01	Instant Pot Duo	3	89.99	269.97	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
8458f319-1777-4181-8c5b-d825cc0b4f23	10145	2024-05-24	Apple AirPods Max	1	549	549	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
849d9aff-464e-48d7-90e6-7f8f87f0cdac	10116	2024-04-25	Breville Smart Grill	2	299.95	599.9	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
84d132ed-ccc7-4c2b-bd55-7fd8bc2e8180	10096	2024-04-05	Garmin Fenix 6X Pro	1	999.99	999.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
85e88c0b-4da0-46d9-a086-cc1d0add442a	10013	2024-01-13	Samsung Galaxy Tab S8	2	749.99	1499.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
86259f05-240e-4692-b7d4-934131f9f902	10233	2024-08-20	Fresh Sugar Lip Treatment	1	24	24	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
86be5efe-66ea-442a-bd2b-5db9b4ea5f20	10057	2024-02-26	Calvin Klein Boxer Briefs	5	29.99	149.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
8825e4eb-1903-48c5-bdba-f5839433c721	10182	2024-06-30	Dyson V8 Absolute	1	399.99	399.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
883c779d-e16d-4808-ba63-81592158ad42	10156	2024-06-04	Garmin Forerunner 245	1	299.99	299.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
8a11db24-2eba-4d1d-82a7-85393205fa0d	10172	2024-06-20	The Girl with the Dragon Tattoo by Stieg Larsson	2	9.99	19.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
8b45a34e-1479-40db-91fd-290e9490a642	10105	2024-04-14	H&M Slim Fit Jeans	3	39.99	119.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
8b936801-a0ce-4d2e-9d02-b6c2fc2cb118	10005	2024-01-05	Neutrogena Skincare Set	1	89.99	89.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
8d30188a-8ea3-46c8-8cfe-0130103b97c0	10226	2024-08-13	The Silent Patient by Alex Michaelides	3	26.99	80.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
8e2ba26d-466c-4819-aa6a-afde3034eb55	10068	2024-03-08	Eufy RoboVac 11S	3	219.99	659.97	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
8e60abce-e4c9-4e49-bc57-f34f9c8e1ecd	10011	2024-01-11	Chanel No. 5 Perfume	1	129.99	129.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
8f1221e1-8cfd-462d-afd2-1333c81c0369	10058	2024-02-27	Educated by Tara Westover	3	28	84	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
90917514-d1fc-4d03-b635-7e801805a254	10213	2024-07-31	Uniqlo Airism Seamless Boxer Briefs	4	9.9	39.6	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
9276a0c8-37ca-4bd0-b225-9786c64c1282	10022	2024-01-22	Gone Girl by Gillian Flynn	2	22.99	45.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
934fe2e5-a857-436f-8d25-04bf57dcc905	10134	2024-05-13	Keurig K-Mini Coffee Maker	2	79.99	159.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
938d249e-8dfa-4b73-8633-c2da6909bbd1	10097	2024-04-06	Bose SoundLink Revolve+ Speaker	3	299.99	899.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
94990fbe-dde0-43b9-8519-68b940e6ac54	10107	2024-04-16	The Ordinary Niacinamide Serum	1	6.5	6.5	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
96309e11-6fb0-4039-a217-e6a37e044e0d	10038	2024-02-07	Roomba i7+	2	799.99	1599.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
96c312c8-9127-449e-854c-9c6d1f59e32d	10158	2024-06-06	Breville Nespresso Creatista Plus	1	499.95	499.95	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
980ba152-51db-4455-a0f0-e6839e420204	10203	2024-07-21	Dr. Jart+ Cicapair Tiger Grass Color Correcting Treatment	1	52	52	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
993cb74f-9a2d-4346-a756-e9ae428d682b	10136	2024-05-15	Think and Grow Rich by Napoleon Hill	3	9.99	29.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
9b599958-8215-4284-816a-8d3534073981	10200	2024-07-18	Instant Pot Duo Nova	1	99.95	99.95	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
9b5edb00-da8a-4ac3-8792-5dfd4025d38a	10199	2024-07-17	Apple TV 4K	2	179	358	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
9cbf55a2-6905-4a29-9b76-24f2e14cbc18	10076	2024-03-16	To Kill a Mockingbird by Harper Lee	4	14.99	59.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
9d849222-5336-404b-8af2-097464d1c7d6	10003	2024-01-03	Levi's 501 Jeans	3	69.99	209.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
9e0fe1ef-3cb4-453d-ac71-d99a4e8eb339	10021	2024-01-21	Zara Summer Dress	3	59.99	179.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
9e139de5-9b39-4051-9781-3c914225b708	10221	2024-08-08	Tarte Shape Tape Concealer	1	27	27	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
9eb500e5-ca24-488a-a288-fed02062ef80	10037	2024-02-06	Apple Watch Series 8	3	399.99	1199.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
9ee2fe67-a68e-4907-9725-2dbad49eb431	10192	2024-07-10	TRX All-in-One Suspension Training System	1	169.95	169.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
9f1501ab-6b7a-49fb-9281-4a3c5852f598	10106	2024-04-15	The Girl on the Train by Paula Hawkins	4	10.99	43.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
a2b88ddb-0525-4c09-9511-a1caca3bbf50	10012	2024-01-12	Babolat Pure Drive Tennis Racket	3	199.99	599.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
a42e0e32-359f-4e64-ba2a-e0d96818b845	10054	2024-02-23	Titleist Pro V1 Golf Balls	5	49.99	249.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
a48014f4-1346-485b-8916-f56b17a64728	10047	2024-02-16	Clinique Moisture Surge	1	52	52	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
a5ce4546-0a5c-4832-ae71-ef83cceb08e2	10114	2024-04-23	Fitbit Versa 3	3	229.95	689.85	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
a6596e07-5192-4e76-a84c-3a5fd2a132ba	10112	2024-04-21	Sapiens: A Brief History of Humankind by Yuval Noah Harari	2	18.99	37.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
a6627a46-100a-4e63-8fb3-e76dcba6dc9b	10195	2024-07-13	Adidas Ultraboost Running Shoes	2	179.99	359.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
a9e0ddce-7eb4-4748-a9ea-362a67e88468	10023	2024-01-23	Olay Regenerist Face Cream	1	49.99	49.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
abc0b677-6abb-46ea-af72-cefd25899036	10234	2024-08-21	Hydro Flask Standard Mouth Water Bottle	3	32.95	98.85	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
ad205376-2911-4f92-8cb3-132d9694f01b	10214	2024-08-01	The Girl with the Dragon Tattoo by Stieg Larsson	3	10.99	32.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
b0363a7c-f1e1-4c83-8313-68a6e68a22e3	10207	2024-07-25	Lululemon Wunder Under High-Rise Leggings	2	98	196	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
b0f58c1c-d7ba-410b-857b-c5dfced444f1	10191	2024-07-09	Glossier Cloud Paint	1	18	18	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
b2013a01-abe9-44f4-b94a-018306bff24a	10079	2024-03-19	Apple AirPods Pro	2	249.99	499.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
b3ed0f8a-19fe-48b6-82b9-d47389ac532e	10122	2024-05-01	Hamilton Beach FlexBrew Coffee Maker	1	89.99	89.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
b4747cfd-95ae-4dc6-997f-0ed3fec8e9a5	10235	2024-08-22	Bose QuietComfort 35 II Wireless Headphones	1	299	299	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
b5200b2f-5a09-4ba3-a875-81c1329e52a9	10175	2024-06-23	Amazon Fire TV Stick 4K	3	49.99	149.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
b74acf27-94ee-453a-a35e-d82f6d5e428e	10143	2024-05-22	Clinique Dramatically Different Moisturizing Lotion	1	29.5	29.5	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
b84bf971-4b66-4976-a732-07ff27655e18	10123	2024-05-02	Forever 21 Graphic Tee	5	12.99	64.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
b8ba595d-1cb7-4bf8-a09d-fef39d08e7ad	10237	2024-08-24	Nike Air Force 1 Sneakers	3	90	270	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
bab0186f-f4b9-4d89-a836-0cf0096970ad	10178	2024-06-26	The Sun Also Rises by Ernest Hemingway	3	11.99	35.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
bd61aab4-b2b2-4184-ac5d-33702287146d	10160	2024-06-08	The Art of War by Sun Tzu	3	7.99	23.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
bd8abc2c-82fd-45e7-a283-536e348f34fe	10088	2024-03-28	The Catcher in the Rye by J.D. Salinger	4	13.99	55.96	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
bdc6767b-779f-46ec-8a08-a0f516711e1e	10035	2024-02-04	L'Oreal Revitalift Serum	2	39.99	79.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
be0eed00-012b-4bf1-9f2d-7c04ac1d62e5	10095	2024-04-04	Tatcha The Water Cream	1	68	68	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
bf397925-0dae-47b6-879b-03d5897359a6	10228	2024-08-15	Fitbit Luxe	2	149.95	299.9	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c06b546b-1fdd-4df2-86fa-cc6295ac04e0	10240	2024-08-27	Yeti Rambler 20 oz Tumbler	2	29.99	59.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c0dba3ff-1aec-4cab-98fb-7052e8589d8e	10220	2024-08-07	The Nightingale by Kristin Hannah	2	12.99	25.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c141ad94-c35a-4e86-8797-44438fc56b8e	10028	2024-01-28	Pride and Prejudice by Jane Austen	3	12.99	38.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c1a7ec90-9591-4eba-b8d6-4337d9d18d1b	10117	2024-04-26	Gap High Rise Skinny Jeans	3	49.99	149.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
c210ad86-b309-4686-89cc-d699bdaff91a	10201	2024-07-19	Gap 1969 Original Fit Jeans	3	59.99	179.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
c42fac7f-41cf-433e-aa3b-49e426bb2850	10050	2024-02-19	Breville Smart Oven	1	299.99	299.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
c4b9d1a0-55ad-4baa-a5f7-f77099256077	10009	2024-01-09	Nike Air Force 1	6	89.99	539.94	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
c4fb78b1-83c2-4c62-b4ec-ab56eee641dd	10124	2024-05-03	The Subtle Art of Not Giving a F*ck by Mark Manson	3	14.99	44.97	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c58d11ba-59db-45af-93c5-0c514c230038	10135	2024-05-14	Gap Crewneck Sweatshirt	4	34.99	139.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
c60098b5-7b32-4dbd-af00-9de3c1e178c4	10121	2024-04-30	Apple iPad Air	2	599.99	1199.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c6e6b2f5-34fd-483f-b9a1-a72361daa9df	10063	2024-03-03	Hanes ComfortSoft T-Shirt	10	9.99	99.9	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
c6eac9bf-b50f-4b6b-9711-a6f8d3364b2d	10132	2024-05-11	Hydro Flask Wide Mouth Water Bottle	4	39.95	159.8	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c75013b7-aa48-45f0-a88b-39653b43167c	10066	2024-03-06	Garmin Edge 530	2	299.99	599.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
c997bf03-4368-4018-b95e-16b73b55ade2	10224	2024-08-11	Philips Sonicare DiamondClean Toothbrush	2	229.99	459.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
cb54b8b5-edec-4307-a5ed-b36c954cb6f2	10044	2024-02-13	Nespresso VertuoPlus	1	199.99	199.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
cdfdc9a1-d111-433b-9fcf-5f630c92de84	10078	2024-03-18	Rogue Fitness Kettlebell	3	69.99	209.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
ce982d5b-7b8f-4f34-8b40-2709aa0f7b3d	10128	2024-05-07	Dyson Supersonic Hair Dryer	2	399.99	799.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
cfca5395-3fa0-4a31-98c8-91a08183f5ec	10029	2024-01-29	MAC Ruby Woo Lipstick	1	29.99	29.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
d08b9a81-4efc-4529-918e-2b47456f146c	10053	2024-02-22	Shiseido Ultimate Sun Protector	1	49	49	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
d0e6bd44-1dd6-4dd2-a0db-06d4229b7127	10119	2024-04-28	CeraVe Hydrating Facial Cleanser	2	14.99	29.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
d1e649d4-01dc-4b36-a7f7-a8828eebfe67	10104	2024-04-13	Shark IQ Robot Vacuum	2	349.99	699.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
d32d1893-5b3b-4016-92c8-9cc7f7c000bc	10236	2024-08-23	Nespresso Vertuo Next Coffee and Espresso Maker	1	159.99	159.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
d34fec82-ab5b-43a2-9fbc-f6362b3714bd	10219	2024-08-06	Champion Reverse Weave Hoodie	3	49.99	149.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
d3abb702-f7f7-461e-bc73-f6d982f52ed7	10212	2024-07-30	Keurig K-Elite Coffee Maker	2	169.99	339.98	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
d433a96a-1b44-468e-9585-77521b5c351b	10138	2024-05-17	Fitbit Inspire 2	2	99.95	199.9	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
d62ffcc4-4be5-4e96-a5f8-f77c81fc0972	10002	2024-01-02	Dyson V11 Vacuum	1	499.99	499.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
d7032425-3490-456e-aed8-3e07a189098f	10071	2024-03-11	Drunk Elephant C-Firma Day Serum	1	78	78	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
dc926257-cbec-4623-8864-835073887192	10189	2024-07-07	Nike Dri-FIT Training Shorts	4	34.99	139.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
dee5dedb-83de-4bdc-9a24-7b55b6e5f43e	10001	2024-01-01	iPhone 14 Pro	2	999.99	1999.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
e02a51b7-ff05-4aff-805d-36b68047819d	10161	2024-06-09	Youth to the People Superfood Antioxidant Cleanser	1	36	36	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
e0a658de-5735-4a8d-9464-d63ba31aa59e	10085	2024-03-25	Ring Video Doorbell	1	99.99	99.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
e1688503-dbde-472f-9a30-18279f80c009	10033	2024-02-02	Under Armour HeatGear T-Shirt	5	29.99	149.95	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
e27ade52-d034-4c8c-aa97-3b8fb5c7a91e	10239	2024-08-26	Sunday Riley Luna Sleeping Night Oil	1	55	55	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
e4523abb-7ce4-498d-8940-4ce0a93a19ab	10091	2024-03-31	Logitech MX Master 3 Mouse	2	99.99	199.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
e663c382-8b3a-4de0-8ad1-1088c5d1ec59	10120	2024-04-29	YETI Hopper Flip Portable Cooler	1	249.99	249.99	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
e6b4e90e-6759-461b-a7e4-adf988a3a7bd	10232	2024-08-19	Dune by Frank Herbert	2	9.99	19.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
e6ff21a9-4cf8-423c-8368-c269def561cd	10169	2024-06-17	Samsung Odyssey G7 Gaming Monitor	1	699.99	699.99	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
eb007310-d6cb-43d4-ac98-1d6b86045245	10026	2024-01-26	Panasonic NN-SN966S Microwave	1	179.99	179.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
ed7b9439-2fcd-4e81-8de8-74ea6eeb0d0b	10159	2024-06-07	Under Armour Tech 2.0 T-Shirt	4	24.99	99.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
ef023a3b-a773-4844-8e69-7c5c86006729	10155	2024-06-03	GlamGlow Supermud Clearing Treatment	1	59	59	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
f0b3544c-d3e8-41a1-9602-e0613c59278e	10150	2024-05-29	Bose SoundSport Wireless Earbuds	2	149.99	299.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
f0e81a5c-19c3-43c7-ba36-089dfee654dd	10210	2024-07-28	Bose SoundLink Color Bluetooth Speaker II	1	129	129	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
f5b4832e-de75-4c4a-a6c5-abeb3eb2de9a	10153	2024-06-01	Nike Sportswear Club Fleece Hoodie	3	54.99	164.97	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
f69b9de6-c6dd-4bd9-9d23-0c4a0512e131	10069	2024-03-09	Puma Suede Classic Sneakers	4	59.99	239.96	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	42dcaab1-dd81-4b82-a047-818ca878c2cc
f78d957c-864d-4375-81ae-4c7997fd7f4c	10185	2024-07-03	La Mer Cr├иme de la Mer Moisturizer	1	190	190	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
f7c13e1a-dc33-49aa-9ffe-e678b22224a8	10048	2024-02-17	Yeti Rambler Tumbler	6	39.99	239.94	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
f85a20d1-e3e5-4623-90e7-65e636002e3b	10020	2024-01-20	Ninja Professional Blender	1	99.99	99.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
f891e36b-b5d2-4476-8a87-cadb307e954b	10100	2024-04-09	The Power of Now by Eckhart Tolle	2	12.99	25.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
faf9a9af-f92c-443b-bcca-08f9bada4c26	10019	2024-01-19	Garmin Forerunner 945	2	499.99	999.98	cbcb619c-192b-4148-8647-a84f0751b6c2	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
fb818bb9-fdbd-412a-8674-fba2edb45137	10030	2024-01-30	Nike Air Zoom Pegasus 37	2	129.99	259.98	6e5c2dbc-8960-40ce-a74e-f9821a72bdce	de32003e-9345-49fc-b4e8-6dd8cbf0e6fa
fd7a00cb-0bb3-451c-9fab-741e834bd779	10089	2024-03-29	Sunday Riley Good Genes	1	105	105	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
fda3cf2d-1265-4118-8864-2363cf703bd1	10092	2024-04-01	Instant Pot Duo Crisp	1	179.99	179.99	36405f3f-cb03-4775-8d2f-6cd0998589dd	f53f1b55-b55f-457e-94db-5d2756df31ec
\.


--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20240615085748_Initial	8.0.6
\.


--
-- Name: PaymentMethods PK_PaymentMethods; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PaymentMethods"
    ADD CONSTRAINT "PK_PaymentMethods" PRIMARY KEY ("Id");


--
-- Name: Regions PK_Regions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Regions"
    ADD CONSTRAINT "PK_Regions" PRIMARY KEY ("Id");


--
-- Name: Transactions PK_Transactions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "PK_Transactions" PRIMARY KEY ("Id");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: IX_Transactions_PaymentMethodId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Transactions_PaymentMethodId" ON public."Transactions" USING btree ("PaymentMethodId");


--
-- Name: IX_Transactions_RegionId; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Transactions_RegionId" ON public."Transactions" USING btree ("RegionId");


--
-- Name: Transactions FK_Transactions_PaymentMethods_PaymentMethodId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "FK_Transactions_PaymentMethods_PaymentMethodId" FOREIGN KEY ("PaymentMethodId") REFERENCES public."PaymentMethods"("Id") ON DELETE CASCADE;


--
-- Name: Transactions FK_Transactions_Regions_RegionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Transactions"
    ADD CONSTRAINT "FK_Transactions_Regions_RegionId" FOREIGN KEY ("RegionId") REFERENCES public."Regions"("Id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

