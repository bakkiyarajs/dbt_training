select CUSTOMER_NAME
from {{ ref('Customer') }}
where CUSTOMER_NAME is null