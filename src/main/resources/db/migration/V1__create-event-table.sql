-- Ativa a extensão pgcrypto, usada para gerar UUIDs
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE public.event (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title VARCHAR(100) NOT NULL,
    description VARCHAR(250) NOT NULL,
    img_url VARCHAR(100) NOT NULL,
    event_url VARCHAR(100) NOT NULL,
    date TIMESTAMP NOT NULL,
    remote BOOLEAN NOT NULL
);