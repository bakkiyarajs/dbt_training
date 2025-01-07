
select 
      PRODUCT_ID,
      ORDER_ID,
      ORDER_SELLING_PRICE,
      ORDER_COST_PRICE,
      {{markup()}}
from {{ ref('Orders') }}