CREATE OR REPLACE FUNCTION peselValidation(pesel varchar(11)) RETURNS bool AS $$
    DECLARE
        checksum integer := 0;
        multipliers integer[] = '{1,3,7,9}';
    BEGIN
        FOR n in 1...9 LOOP
            checksum := pesel[n] * multipliers[n%4];
            END LOOP;
        RETURN 10 - checksum % 10 == pesel[9];
    END;
$$ LANGUAGE plpgsql;

