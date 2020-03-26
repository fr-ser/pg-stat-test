DO $$
    BEGIN
        FOR loop_counter IN 1..1000 LOOP
            INSERT INTO public.table_1(value) VALUES
            ('a' || (EXTRACT(EPOCH FROM TIMESTAMP '2011-05-17 10:40:28.876944') * 1000))
            , ('b' || (EXTRACT(EPOCH FROM TIMESTAMP '2011-05-17 10:40:28.876944') * 1000))
            , ('c' || (EXTRACT(EPOCH FROM TIMESTAMP '2011-05-17 10:40:28.876944') * 1000))
            , ('d' || (EXTRACT(EPOCH FROM TIMESTAMP '2011-05-17 10:40:28.876944') * 1000))
            ;
            EXECUTE 'SELECT * FROM public.table_1 WHERE VALUE LIKE' || quote_literal('a%');
        END LOOP;
    END;
$$;