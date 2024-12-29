select 
        CUSTOMER_ID,
        SEGMENT,
        COUNTRY,
        sum(ORDER_PROFIT) as Profit
from {{ ref('Stage_Orders') }}
group by CUSTOMER_ID, SEGMENT, COUNTRY
