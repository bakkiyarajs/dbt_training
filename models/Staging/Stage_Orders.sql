select 
        {{ dbt_utils.generate_surrogate_key(['O.ORDER_ID', 'P.PRODUCTID', 'C.CUSTOMERID']) }},
        O.*,
        C.*,
        P.*,
        (ORDER_SELLING_PRICE - ORDER_COST_PRICE) as Order_Profit
 from {{ ref('Orders') }} as O
 left join {{ ref('Customer') }} as C
 on O.CUSTOMER_ID = C.CUSTOMERID
 left join {{ ref('Product') }} as P
 on P.PRODUCTID = O.PRODUCT_ID