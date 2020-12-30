CREATE TABLE linked (
    acc UUID REFERENCES accounts (id),
    type SMALLINT REFERENCES linked_types (id),
    value VARCHAR(64) NOT NULL,
    UNIQUE (type, value)
);
