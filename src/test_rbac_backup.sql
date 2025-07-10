--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-10 13:41:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 51902)
-- Name: st_object; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.st_object (
    object_key text,
    object_description text,
    object_type text,
    object_database text,
    object_table text,
    object_attribute text,
    object_id text,
    object_value text,
    object_security text,
    start_date text,
    end_date text,
    active_flag text,
    sequential_id text,
    status text,
    create_date text,
    update_date text,
    created_by text,
    updated_by text,
    source_instance text,
    sync_flag text,
    sync_status text,
    sync_date text,
    updatedby_instance text,
    org_id text
);


ALTER TABLE public.st_object OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 51913)
-- Name: st_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.st_role (
    role_key text,
    role_name text,
    role_description text,
    start_date text,
    end_date text,
    active_flag text,
    create_date text,
    update_date text,
    created_by text,
    updated_by text,
    source_instance text,
    sync_flag text,
    sync_status text,
    sync_date text,
    updatedby_instance text,
    org_id text,
    role_type text
);


ALTER TABLE public.st_role OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 51892)
-- Name: st_role_object_operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.st_role_object_operation (
    role_object_key text,
    role_key text,
    object_type text,
    object_key text,
    data_operation text,
    allow_deny text,
    start_date text,
    end_date text,
    active_flag text,
    status text,
    create_date text,
    update_date text,
    created_by text,
    updated_by text,
    source_instance text,
    sync_flag text,
    sync_status text,
    sync_date text,
    updatedby_instance text,
    comment text,
    sort_ty text,
    sort_seq text,
    org_id text
);


ALTER TABLE public.st_role_object_operation OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 51872)
-- Name: st_role_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.st_role_user (
    role_user_key text,
    role_key text,
    user_type text,
    user_key text,
    user_access text,
    start_date text,
    end_date text,
    active_flag text,
    sequential_id text,
    status text,
    create_date text,
    update_date text,
    created_by text,
    updated_by text,
    source_instance text,
    sync_flag text,
    sync_status text,
    sync_date text,
    updatedby_instance text,
    org_id text
);


ALTER TABLE public.st_role_user OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 51887)
-- Name: test_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_table (
    guid text,
    symboltype text,
    name text,
    symbolcode text,
    latitude text,
    longitude text
);


ALTER TABLE public.test_table OWNER TO postgres;

--
-- TOC entry 4849 (class 0 OID 51902)
-- Dependencies: 218
-- Data for Name: st_object; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.st_object (object_key, object_description, object_type, object_database, object_table, object_attribute, object_id, object_value, object_security, start_date, end_date, active_flag, sequential_id, status, create_date, update_date, created_by, updated_by, source_instance, sync_flag, sync_status, sync_date, updatedby_instance, org_id) FROM stdin;
obj1	test_table name	appattribute	test_rbac	test_table	Name	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj2	test_table symbolcodstring	appattribute	test_rbac	test_table	SymbolCode	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj3	test_table latitude	appattribute	test_rbac	test_table	latitude	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj4	test_table longitude	appattribute	test_rbac	test_table	longitude	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj8	test_table name Eny_Mech2	appattributevalue	test_rbac	test_table	Name	pkid1	Eny_Mech2                                                                                                                                                                                                                                                      	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj9	Build Query and Search	WebPage	test_rbac	\N	\N	st_search3.aspx	st_search3.aspx	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj10	SearchPage RefBlock	WebPageBlock	test_rbac	\N	\N	st_search3.aspx|RefBlock	st_search3.aspx|RefBlock	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj11	test_table	databasetable	test_rbac	test_table	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
obj12	test_table query	query	test_rbac	\N	\N	query1	query1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
\.


--
-- TOC entry 4850 (class 0 OID 51913)
-- Dependencies: 219
-- Data for Name: st_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.st_role (role_key, role_name, role_description, start_date, end_date, active_flag, create_date, update_date, created_by, updated_by, source_instance, sync_flag, sync_status, sync_date, updatedby_instance, org_id, role_type) FROM stdin;
rolekey1	admin	admin	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1	AllowAllDenySpecific
rolekey2	standard	standard	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1	DenyAllAllowSpecific
\.


--
-- TOC entry 4848 (class 0 OID 51892)
-- Dependencies: 217
-- Data for Name: st_role_object_operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.st_role_object_operation (role_object_key, role_key, object_type, object_key, data_operation, allow_deny, start_date, end_date, active_flag, status, create_date, update_date, created_by, updated_by, source_instance, sync_flag, sync_status, sync_date, updatedby_instance, comment, sort_ty, sort_seq, org_id) FROM stdin;
roleobj1	rolekey1	WebPage	st_search3.aspx	retreive	N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj2	rolekey2	WebPage	st_search3.aspx	retreive	Y	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj3	rolekey1	databasetable	obj11	retreive	Y	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj4	rolekey1	databasetable	obj11	update	Y	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj5	rolekey1	databasetable	obj11	delete	N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj6	rolekey1	databasetable	obj11	create	Y	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj7	rolekey2	databasetable	obj11	retreive	Y	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj8	rolekey2	databasetable	obj11	update	N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj9	rolekey2	databasetable	obj11	delete	N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleobj10	rolekey2	databasetable	obj11	create	N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
\.


--
-- TOC entry 4846 (class 0 OID 51872)
-- Dependencies: 215
-- Data for Name: st_role_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.st_role_user (role_user_key, role_key, user_type, user_key, user_access, start_date, end_date, active_flag, sequential_id, status, create_date, update_date, created_by, updated_by, source_instance, sync_flag, sync_status, sync_date, updatedby_instance, org_id) FROM stdin;
roleuserkey7	rolekey2	\N	demouser4	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
roleuserkey8	rolekey1	\N	demomanager4	\N	\N	\N	Y	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	111_1
\.


--
-- TOC entry 4847 (class 0 OID 51887)
-- Dependencies: 216
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test_table (guid, symboltype, name, symbolcode, latitude, longitude) FROM stdin;
pkid1	OrganisationState                                                                                                                                                                                                                                              	Eny_Mech2                                                                                                                                                                                                                                                      	SHGPUCIZ---D***                                                                                                                                                                                                                                                	39.47456244	-76.11562123
pkid2	TacticalGraphic                                                                                                                                                                                                                                                	Eny_ObsPost3                                                                                                                                                                                                                                                   	GHGPDPO---****X                                                                                                                                                                                                                                                	39.46588799	-76.13754165
pkid3	OrganisationState                                                                                                                                                                                                                                              	Eny_CBT                                                                                                                                                                                                                                                        	SHGPUCEC---****                                                                                                                                                                                                                                                	39.47456244	-76.11562123
pkid4	OrganisationState                                                                                                                                                                                                                                              	Eny_Armor1                                                                                                                                                                                                                                                     	SHGPUCA----D***                                                                                                                                                                                                                                                	39.47456247	-76.11562125
pkid5	OrganisationState                                                                                                                                                                                                                                              	Armor1 take24                                                                                                                                                                                                                                                  	SFGPUCA----E***                                                                                                                                                                                                                                                	39.47156331	-76.10674678
pkid6	TacticalGraphic                                                                                                                                                                                                                                                	AXIS HOOK                                                                                                                                                                                                                                                      	GFGPOLAGM-****X                                                                                                                                                                                                                                                	39.48046672	-76.12471253
pkid7	test2                                                                                                                                                                                                                                                          	test2                                                                                                                                                                                                                                                          	\N	39	-76
pkid8	TacticalGraphic                                                                                                                                                                                                                                                	Eny_ObsPost1                                                                                                                                                                                                                                                   	GHGPDPO---****X                                                                                                                                                                                                                                                	39.48523129	-76.13228376
pkid9	TacticalGraphic                                                                                                                                                                                                                                                	AXIS HOOK                                                                                                                                                                                                                                                      	GFGPOLAGM-****X                                                                                                                                                                                                                                                	39.48046494	-76.12471008
pkid10	OrganisationState                                                                                                                                                                                                                                              	Reserve                                                                                                                                                                                                                                                        	SFGPUCA----E***                                                                                                                                                                                                                                                	39.47878916	-76.1252576
pkid11	EquipmentState                                                                                                                                                                                                                                                 	Mortar                                                                                                                                                                                                                                                         	SFGPEWOH--*****                                                                                                                                                                                                                                                	39.47579148	-76.12854965
pkid12	OrganisationState                                                                                                                                                                                                                                              	Recon1                                                                                                                                                                                                                                                         	SFGPUCRVA--C***                                                                                                                                                                                                                                                	39.48363249	-76.15571584
pkid13	OrganisationState                                                                                                                                                                                                                                              	Mech 2                                                                                                                                                                                                                                                         	SFGPUCIZ---E***                                                                                                                                                                                                                                                	39.48243141	-76.11023766
pkid14	OrganisationState                                                                                                                                                                                                                                              	Recon2                                                                                                                                                                                                                                                         	SFGPUCRVA--C***                                                                                                                                                                                                                                                	39.48355178	-76.15560563
pkid15	OrganisationState                                                                                                                                                                                                                                              	TAC                                                                                                                                                                                                                                                            	SFGPUH-----F***                                                                                                                                                                                                                                                	39.47836202	-76.11631241
pkid16	OrganisationState                                                                                                                                                                                                                                              	Eny_Mech1                                                                                                                                                                                                                                                      	SHGPUCIZ---D***                                                                                                                                                                                                                                                	39.47456244	-76.11562123
pkid17	TacticalGraphic                                                                                                                                                                                                                                                	SupportingAttack                                                                                                                                                                                                                                               	GFGPOLAGS-****X                                                                                                                                                                                                                                                	39.47699356	-76.12996674
pkid18	OrganisationState                                                                                                                                                                                                                                              	Tank1 checkSP take2                                                                                                                                                                                                                                            	SHGPUC-----****                                                                                                                                                                                                                                                	39.47456244	-76.11562123
pkid19	TacticalGraphic                                                                                                                                                                                                                                                	                                                                                                                                                                                                                                                               	GFGPOLAGS-****X                                                                                                                                                                                                                                                	39.47699356	-76.12996674
pkid20	OrganisationState                                                                                                                                                                                                                                              	CombatEngineer                                                                                                                                                                                                                                                 	SFGPUCEC---C***                                                                                                                                                                                                                                                	39.46972349	-76.12207341
pkid21	TacticalGraphic                                                                                                                                                                                                                                                	Eny_ObsPost2                                                                                                                                                                                                                                                   	GHGPDPO---****X                                                                                                                                                                                                                                                	39.48051076	-76.14007393
pkid22	OrganisationState                                                                                                                                                                                                                                              	Mech1                                                                                                                                                                                                                                                          	SFGPUCIZ---E***                                                                                                                                                                                                                                                	39.47276487	-76.11534678
\.


-- Completed on 2025-07-10 13:41:05

--
-- PostgreSQL database dump complete
--

