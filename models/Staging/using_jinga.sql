{% set x="Texas" %}

select
    CUSTOMER_NAME,
    case 
        when state = '{{x}}' then 'Texas Mullangi'
        else state
    end as state
 from {{ ref('Customer') }}