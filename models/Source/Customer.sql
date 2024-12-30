
{{
    config(
        materialized='table'
    )
}}

select * from {{ source('globalsource', 'customer') }}