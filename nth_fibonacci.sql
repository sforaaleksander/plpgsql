CREATE OR REPLACE FUNCTION nth_fib(n integer) RETURNS integer AS $$
    BEGIN
        IF n < 1 THEN RETURN n;
        END IF;
        RETURN nth_fib(n-1) + nth_fib(n-2);
    END;
$$ LANGUAGE pl/pgsql ;