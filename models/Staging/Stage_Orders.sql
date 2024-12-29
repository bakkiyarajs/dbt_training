select  O.*,
        C.*,
        P.*,
        (ORDER_SELLING_PRICE - ORDER_COST_PRICE)
 from {{ ref('Orders') }} as O
 left join {{ ref('Customer') }} as C
 on O.CUSTOMER_ID = C.CUSTOMER_ID
 left join {{ ref('Product') }} as P
 on P.PRODUCTID = O.PRODUCT_ID