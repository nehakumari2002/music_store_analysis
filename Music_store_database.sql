-- Table: public.album

-- DROP TABLE IF EXISTS public.album;

CREATE TABLE IF NOT EXISTS public.album
(
    album_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    title character varying(120) COLLATE pg_catalog."default",
    artist_id character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT album_pkey PRIMARY KEY (album_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.album
    OWNER to postgres;

-- Table: public.artist

-- DROP TABLE IF EXISTS public.artist;

CREATE TABLE IF NOT EXISTS public.artist
(
    artist_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    name character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT artist_pkey PRIMARY KEY (artist_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.artist
    OWNER to postgres;

-- Table: public.customer

-- DROP TABLE IF EXISTS public.customer;

CREATE TABLE IF NOT EXISTS public.customer
(
    customer_id integer NOT NULL,
    first_name character(50) COLLATE pg_catalog."default",
    last_name character(50) COLLATE pg_catalog."default",
    company character varying(120) COLLATE pg_catalog."default",
    address character varying(120) COLLATE pg_catalog."default",
    city character varying(50) COLLATE pg_catalog."default",
    state character varying(50) COLLATE pg_catalog."default",
    country character varying(50) COLLATE pg_catalog."default",
    postal_code character varying(50) COLLATE pg_catalog."default",
    phone character varying(50) COLLATE pg_catalog."default",
    fax character varying(50) COLLATE pg_catalog."default",
    email character varying(50) COLLATE pg_catalog."default",
    support_rep_id integer,
    CONSTRAINT customer_pkey PRIMARY KEY (customer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customer
    OWNER to postgres;

-- Table: public.employee

-- DROP TABLE IF EXISTS public.employee;

CREATE TABLE IF NOT EXISTS public.employee
(
    employee_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    last_name character(50) COLLATE pg_catalog."default",
    first_name character(50) COLLATE pg_catalog."default",
    title character varying(50) COLLATE pg_catalog."default",
    reports_to character varying(30) COLLATE pg_catalog."default",
    levels character varying(10) COLLATE pg_catalog."default",
    birthdate timestamp without time zone,
    hire_date timestamp without time zone,
    address character varying(120) COLLATE pg_catalog."default",
    city character varying(50) COLLATE pg_catalog."default",
    state character varying(50) COLLATE pg_catalog."default",
    country character varying(30) COLLATE pg_catalog."default",
    postal_code character varying(30) COLLATE pg_catalog."default",
    phone character varying(30) COLLATE pg_catalog."default",
    fax character varying(30) COLLATE pg_catalog."default",
    email character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT employee2_pkey PRIMARY KEY (employee_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employee
    OWNER to postgres;

-- Table: public.genre

-- DROP TABLE IF EXISTS public.genre;

CREATE TABLE IF NOT EXISTS public.genre
(
    genre_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    name character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT genre_pkey PRIMARY KEY (genre_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.genre
    OWNER to postgres;

-- Table: public.invoice

-- DROP TABLE IF EXISTS public.invoice;

CREATE TABLE IF NOT EXISTS public.invoice
(
    invoice_id integer NOT NULL,
    customer_id integer,
    invoice_date timestamp without time zone,
    billing_address character varying(120) COLLATE pg_catalog."default",
    billing_city character varying(30) COLLATE pg_catalog."default",
    billing_state character varying(30) COLLATE pg_catalog."default",
    billing_country character varying(30) COLLATE pg_catalog."default",
    billing_postal character varying(30) COLLATE pg_catalog."default",
    total double precision,
    CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.invoice
    OWNER to postgres;

-- Table: public.invoice_line

-- DROP TABLE IF EXISTS public.invoice_line;

CREATE TABLE IF NOT EXISTS public.invoice_line
(
    invoice_line_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    invoice_id integer,
    track_id integer,
    unit_price double precision,
    quantity double precision,
    CONSTRAINT invoice_line_pkey PRIMARY KEY (invoice_line_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.invoice_line
    OWNER to postgres;

-- Table: public.media_type

-- DROP TABLE IF EXISTS public.media_type;

CREATE TABLE IF NOT EXISTS public.media_type
(
    media_type_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    name character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT media_type_pkey PRIMARY KEY (media_type_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.media_type
    OWNER to postgres;

-- Table: public.playlist

-- DROP TABLE IF EXISTS public.playlist;

CREATE TABLE IF NOT EXISTS public.playlist
(
    playlist_id character varying(50) COLLATE pg_catalog."default" NOT NULL,
    name character varying(120) COLLATE pg_catalog."default",
    CONSTRAINT playlist_pkey PRIMARY KEY (playlist_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.playlist
    OWNER to postgres;

-- Table: public.playlist_track

-- DROP TABLE IF EXISTS public.playlist_track;

CREATE TABLE IF NOT EXISTS public.playlist_track
(
    playlist_id character varying(50) COLLATE pg_catalog."default",
    track_id integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.playlist_track
    OWNER to postgres;

-- Table: public.track

-- DROP TABLE IF EXISTS public.track;

CREATE TABLE IF NOT EXISTS public.track
(
    track_id integer NOT NULL,
    name character varying(150) COLLATE pg_catalog."default",
    album_id character varying(50) COLLATE pg_catalog."default",
    media_type_id character varying(50) COLLATE pg_catalog."default",
    genre_id character varying(50) COLLATE pg_catalog."default",
    composer character varying(190) COLLATE pg_catalog."default",
    milliseconds integer,
    bytes integer,
    unit_price double precision,
    CONSTRAINT track_pkey PRIMARY KEY (track_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.track
    OWNER to postgres;
