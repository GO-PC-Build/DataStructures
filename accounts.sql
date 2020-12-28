CREATE TABLE accounts (
    id uuid NOT NULL DEFAULT uuid_generate_v4() PRIMARY KEY,
    nickname VARCHAR(32) NOT NULL,
    email VARCHAR(320) NOT NULL,
    avatar VARCHAR(512) NOT NULL DEFAULT 'https://www.kindpng.com/picc/m/421-4212275_transparent-default-avatar-png-avatar-img-png-download.png',
    date TIMESTAMP NOT NULL DEFAULT NOW(),
    password VARCHAR(128) NOT NULL
);