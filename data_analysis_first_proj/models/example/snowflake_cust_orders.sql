select 
    c.c_custkey,
    c.c_name,
    c.c_nationkey as nation,
    sum(o.o_totalprice) as total
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
left outer join 
 "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o 
 on c.c_custkey = o.o_custkey
 group by 
  c.c_custkey,
    c.c_name,
    c.c_nationkey
  having sum(o.o_totalprice)>0