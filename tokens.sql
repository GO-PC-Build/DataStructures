CREATE TABLE tokens (
    acc uuid REFERENCES accounts (id),
    token varchar(73) NOT NULL PRIMARY KEY
);