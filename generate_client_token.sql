CREATE
OR REPLACE PROCEDURE public.create_token(IN acc uuid) LANGUAGE 'plpgsql' AS $ BODY $ DECLARE code TEXT;

BEGIN loop code := generate_client_token();

BEGIN
INSERT INTO
    tokens(acc, token)
VALUES
    (acc, code);

EXIT;

EXCEPTION
WHEN unique_violation THEN
END;

end loop;

END;

$ BODY $;