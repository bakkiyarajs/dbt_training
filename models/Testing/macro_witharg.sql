select 
    PRODUCT_ID,
      ORDER_ID,
      ORDER_SELLING_PRICE,
      ORDER_COST_PRICE,
      {{markuparg('ORDER_SELLING_PRICE', 'ORDER_COST_PRICE') }}

from {{ ref('Orders') }}