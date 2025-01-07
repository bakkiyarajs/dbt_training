{% set a= "welcome" %}

select '{{a}} ' || CUSTOMER_NAME from {{ ref('Customer') }}