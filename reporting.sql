SELECT pgu.usename ,sum(total_time )
    FROM public.pg_stat_statements AS pgs
    JOIN pg_catalog.pg_user AS pgu ON pgu.usesysid = pgs.userid
    GROUP BY pgu.usename
;

SELECT pg_total_relation_size('public.table_1');
SELECT pg_total_relation_size('public.table_2');

